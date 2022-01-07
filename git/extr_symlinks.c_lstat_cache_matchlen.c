
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct stat {int st_mode; } ;
struct TYPE_2__ {char* buf; int len; } ;
struct cache_def {int track_flags; int prefix_len_stat_func; int flags; TYPE_1__ path; } ;


 scalar_t__ ENOENT ;
 int FL_DIR ;
 int FL_ERR ;
 int FL_FULLPATH ;
 int FL_LSTATERR ;
 int FL_NOENT ;
 int FL_SYMLINK ;
 scalar_t__ S_ISDIR (int ) ;
 scalar_t__ S_ISLNK (int ) ;
 scalar_t__ errno ;
 int longest_path_match (char const*,int,char*,int,int*) ;
 int lstat (char*,struct stat*) ;
 int reset_lstat_cache (struct cache_def*) ;
 int stat (char*,struct stat*) ;
 int strbuf_grow (TYPE_1__*,int) ;

__attribute__((used)) static int lstat_cache_matchlen(struct cache_def *cache,
    const char *name, int len,
    int *ret_flags, int track_flags,
    int prefix_len_stat_func)
{
 int match_len, last_slash, last_slash_dir, previous_slash;
 int save_flags, ret;
 struct stat st;

 if (cache->track_flags != track_flags ||
     cache->prefix_len_stat_func != prefix_len_stat_func) {





  reset_lstat_cache(cache);
  cache->track_flags = track_flags;
  cache->prefix_len_stat_func = prefix_len_stat_func;
  match_len = last_slash = 0;
 } else {




  match_len = last_slash =
   longest_path_match(name, len, cache->path.buf,
        cache->path.len, &previous_slash);
  *ret_flags = cache->flags & track_flags & (FL_NOENT|FL_SYMLINK);

  if (!(track_flags & FL_FULLPATH) && match_len == len)
   match_len = last_slash = previous_slash;

  if (*ret_flags && match_len == cache->path.len)
   return match_len;
  *ret_flags = track_flags & FL_DIR;
  if (*ret_flags && len == match_len)
   return match_len;
 }





 *ret_flags = FL_DIR;
 last_slash_dir = last_slash;
 if (len > cache->path.len)
  strbuf_grow(&cache->path, len - cache->path.len);
 while (match_len < len) {
  do {
   cache->path.buf[match_len] = name[match_len];
   match_len++;
  } while (match_len < len && name[match_len] != '/');
  if (match_len >= len && !(track_flags & FL_FULLPATH))
   break;
  last_slash = match_len;
  cache->path.buf[last_slash] = '\0';

  if (last_slash <= prefix_len_stat_func)
   ret = stat(cache->path.buf, &st);
  else
   ret = lstat(cache->path.buf, &st);

  if (ret) {
   *ret_flags = FL_LSTATERR;
   if (errno == ENOENT)
    *ret_flags |= FL_NOENT;
  } else if (S_ISDIR(st.st_mode)) {
   last_slash_dir = last_slash;
   continue;
  } else if (S_ISLNK(st.st_mode)) {
   *ret_flags = FL_SYMLINK;
  } else {
   *ret_flags = FL_ERR;
  }
  break;
 }






 save_flags = *ret_flags & track_flags & (FL_NOENT|FL_SYMLINK);
 if (save_flags && last_slash > 0) {
  cache->path.buf[last_slash] = '\0';
  cache->path.len = last_slash;
  cache->flags = save_flags;
 } else if ((track_flags & FL_DIR) && last_slash_dir > 0) {
  cache->path.buf[last_slash_dir] = '\0';
  cache->path.len = last_slash_dir;
  cache->flags = FL_DIR;
 } else {
  reset_lstat_cache(cache);
 }
 return match_len;
}
