
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct strbuf {unsigned long len; } ;
struct merge_options {TYPE_2__* repo; TYPE_1__* priv; } ;
struct diff_filespec {int mode; int oid; } ;
typedef enum object_type { ____Placeholder_object_type } object_type ;
struct TYPE_4__ {int index; } ;
struct TYPE_3__ {scalar_t__ call_depth; } ;


 int ADD_CACHE_OK_TO_ADD ;
 int OBJ_BLOB ;
 int O_CREAT ;
 int O_TRUNC ;
 int O_WRONLY ;
 struct strbuf STRBUF_INIT ;
 scalar_t__ S_ISGITLINK (int) ;
 scalar_t__ S_ISLNK (int) ;
 scalar_t__ S_ISREG (int) ;
 int _ (char*) ;
 scalar_t__ add_cacheinfo (struct merge_options*,struct diff_filespec const*,char const*,int ,int,int ) ;
 int close (int) ;
 scalar_t__ convert_to_working_tree (int ,char const*,void*,unsigned long,struct strbuf*) ;
 int err (struct merge_options*,int ,...) ;
 int errno ;
 int free (void*) ;
 int has_symlinks ;
 scalar_t__ make_room_for_path (struct merge_options*,char const*) ;
 int oid_to_hex (int *) ;
 int open (char const*,int,int) ;
 void* read_object_file (int *,int*,unsigned long*) ;
 int safe_create_leading_directories_const (char const*) ;
 void* strbuf_detach (struct strbuf*,int *) ;
 int strerror (int ) ;
 scalar_t__ symlink (char*,char const*) ;
 int unlink (char const*) ;
 int write_in_full (int,void*,unsigned long) ;
 char* xmemdupz (void*,unsigned long) ;

__attribute__((used)) static int update_file_flags(struct merge_options *opt,
        const struct diff_filespec *contents,
        const char *path,
        int update_cache,
        int update_wd)
{
 int ret = 0;

 if (opt->priv->call_depth)
  update_wd = 0;

 if (update_wd) {
  enum object_type type;
  void *buf;
  unsigned long size;

  if (S_ISGITLINK(contents->mode)) {





   update_wd = 0;
   goto update_index;
  }

  buf = read_object_file(&contents->oid, &type, &size);
  if (!buf) {
   ret = err(opt, _("cannot read object %s '%s'"),
      oid_to_hex(&contents->oid), path);
   goto free_buf;
  }
  if (type != OBJ_BLOB) {
   ret = err(opt, _("blob expected for %s '%s'"),
      oid_to_hex(&contents->oid), path);
   goto free_buf;
  }
  if (S_ISREG(contents->mode)) {
   struct strbuf strbuf = STRBUF_INIT;
   if (convert_to_working_tree(opt->repo->index,
          path, buf, size, &strbuf)) {
    free(buf);
    size = strbuf.len;
    buf = strbuf_detach(&strbuf, ((void*)0));
   }
  }

  if (make_room_for_path(opt, path) < 0) {
   update_wd = 0;
   goto free_buf;
  }
  if (S_ISREG(contents->mode) ||
      (!has_symlinks && S_ISLNK(contents->mode))) {
   int fd;
   int mode = (contents->mode & 0100 ? 0777 : 0666);

   fd = open(path, O_WRONLY | O_TRUNC | O_CREAT, mode);
   if (fd < 0) {
    ret = err(opt, _("failed to open '%s': %s"),
       path, strerror(errno));
    goto free_buf;
   }
   write_in_full(fd, buf, size);
   close(fd);
  } else if (S_ISLNK(contents->mode)) {
   char *lnk = xmemdupz(buf, size);
   safe_create_leading_directories_const(path);
   unlink(path);
   if (symlink(lnk, path))
    ret = err(opt, _("failed to symlink '%s': %s"),
       path, strerror(errno));
   free(lnk);
  } else
   ret = err(opt,
      _("do not know what to do with %06o %s '%s'"),
      contents->mode, oid_to_hex(&contents->oid), path);
 free_buf:
  free(buf);
 }
update_index:
 if (!ret && update_cache)
  if (add_cacheinfo(opt, contents, path, 0, update_wd,
      ADD_CACHE_OK_TO_ADD))
   return -1;
 return ret;
}
