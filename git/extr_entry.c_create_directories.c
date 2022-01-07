
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct checkout {scalar_t__ force; int base_dir_len; } ;


 scalar_t__ EEXIST ;
 int die_errno (char*,char*) ;
 scalar_t__ errno ;
 int free (char*) ;
 scalar_t__ has_dirs_only_path (char*,int,int ) ;
 scalar_t__ mkdir (char*,int) ;
 int unlink_or_warn (char*) ;
 char* xmallocz (int) ;

__attribute__((used)) static void create_directories(const char *path, int path_len,
          const struct checkout *state)
{
 char *buf = xmallocz(path_len);
 int len = 0;

 while (len < path_len) {
  do {
   buf[len] = path[len];
   len++;
  } while (len < path_len && path[len] != '/');
  if (len >= path_len)
   break;
  buf[len] = 0;
  if (has_dirs_only_path(buf, len, state->base_dir_len))
   continue;







  if (mkdir(buf, 0777)) {
   if (errno == EEXIST && state->force &&
       !unlink_or_warn(buf) && !mkdir(buf, 0777))
    continue;
   die_errno("cannot create directory at '%s'", buf);
  }
 }
 free(buf);
}
