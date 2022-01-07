
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct strbuf {scalar_t__ len; } ;
struct stat {int st_mode; int st_size; } ;
struct repository {int index; } ;
struct diff_filespec {char* data; scalar_t__ size; int should_free; int is_binary; int should_munmap; int oid; int path; int oid_valid; int mode; } ;
typedef enum object_type { ____Placeholder_object_type } object_type ;


 unsigned int CHECK_BINARY ;
 unsigned int CHECK_SIZE_ONLY ;
 int CONV_EOL_RNDTRP_DIE ;
 int CONV_EOL_RNDTRP_WARN ;
 int DIFF_FILE_VALID (struct diff_filespec*) ;
 int MAP_PRIVATE ;
 int O_RDONLY ;
 int PROT_READ ;
 struct strbuf STRBUF_INIT ;
 scalar_t__ S_ISDIR (int ) ;
 scalar_t__ S_ISGITLINK (int ) ;
 scalar_t__ S_ISLNK (int ) ;
 scalar_t__ big_file_threshold ;
 int close (int) ;
 scalar_t__ convert_to_git (int ,int ,char*,scalar_t__,struct strbuf*,int) ;
 int die (char*,...) ;
 int diff_populate_gitlink (struct diff_filespec*,int) ;
 int global_conv_flags_eol ;
 scalar_t__ lstat (int ,struct stat*) ;
 int munmap (char*,scalar_t__) ;
 int oid_object_info (struct repository*,int *,size_t*) ;
 int oid_to_hex (int *) ;
 int open (int ,int ) ;
 char* read_object_file (int *,int*,scalar_t__*) ;
 scalar_t__ reuse_worktree_file (int ,int ,int *,int ) ;
 void* strbuf_detach (struct strbuf*,size_t*) ;
 scalar_t__ strbuf_readlink (struct strbuf*,int ,scalar_t__) ;
 int would_convert_to_git (int ,int ) ;
 char* xmmap (int *,scalar_t__,int ,int ,int,int ) ;
 scalar_t__ xsize_t (int ) ;

int diff_populate_filespec(struct repository *r,
      struct diff_filespec *s,
      unsigned int flags)
{
 int size_only = flags & CHECK_SIZE_ONLY;
 int err = 0;
 int conv_flags = global_conv_flags_eol;




 if (conv_flags & CONV_EOL_RNDTRP_DIE)
  conv_flags = CONV_EOL_RNDTRP_WARN;

 if (!DIFF_FILE_VALID(s))
  die("internal error: asking to populate invalid file.");
 if (S_ISDIR(s->mode))
  return -1;

 if (s->data)
  return 0;

 if (size_only && 0 < s->size)
  return 0;

 if (S_ISGITLINK(s->mode))
  return diff_populate_gitlink(s, size_only);

 if (!s->oid_valid ||
     reuse_worktree_file(r->index, s->path, &s->oid, 0)) {
  struct strbuf buf = STRBUF_INIT;
  struct stat st;
  int fd;

  if (lstat(s->path, &st) < 0) {
  err_empty:
   err = -1;
  empty:
   s->data = (char *)"";
   s->size = 0;
   return err;
  }
  s->size = xsize_t(st.st_size);
  if (!s->size)
   goto empty;
  if (S_ISLNK(st.st_mode)) {
   struct strbuf sb = STRBUF_INIT;

   if (strbuf_readlink(&sb, s->path, s->size))
    goto err_empty;
   s->size = sb.len;
   s->data = strbuf_detach(&sb, ((void*)0));
   s->should_free = 1;
   return 0;
  }







  if (size_only && !would_convert_to_git(r->index, s->path))
   return 0;
  if ((flags & CHECK_BINARY) &&
      s->size > big_file_threshold && s->is_binary == -1) {
   s->is_binary = 1;
   return 0;
  }
  fd = open(s->path, O_RDONLY);
  if (fd < 0)
   goto err_empty;
  s->data = xmmap(((void*)0), s->size, PROT_READ, MAP_PRIVATE, fd, 0);
  close(fd);
  s->should_munmap = 1;




  if (convert_to_git(r->index, s->path, s->data, s->size, &buf, conv_flags)) {
   size_t size = 0;
   munmap(s->data, s->size);
   s->should_munmap = 0;
   s->data = strbuf_detach(&buf, &size);
   s->size = size;
   s->should_free = 1;
  }
 }
 else {
  enum object_type type;
  if (size_only || (flags & CHECK_BINARY)) {
   type = oid_object_info(r, &s->oid, &s->size);
   if (type < 0)
    die("unable to read %s",
        oid_to_hex(&s->oid));
   if (size_only)
    return 0;
   if (s->size > big_file_threshold && s->is_binary == -1) {
    s->is_binary = 1;
    return 0;
   }
  }
  s->data = read_object_file(&s->oid, &type, &s->size);
  if (!s->data)
   die("unable to read %s", oid_to_hex(&s->oid));
  s->should_free = 1;
 }
 return 0;
}
