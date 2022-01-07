
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct strbuf {char* buf; } ;
struct stat {int st_mode; int st_size; } ;
struct ref_store {int dummy; } ;
struct object_id {int dummy; } ;
struct files_ref_store {int packed_ref_store; } ;


 int EINVAL ;
 int EISDIR ;
 int ENOENT ;
 int O_RDONLY ;
 unsigned int REF_ISBROKEN ;
 unsigned int REF_ISSYMREF ;
 int REF_STORE_READ ;
 struct strbuf STRBUF_INIT ;
 scalar_t__ S_ISDIR (int ) ;
 scalar_t__ S_ISLNK (int ) ;
 int check_refname_format (char const*,int ) ;
 int close (int) ;
 int errno ;
 struct files_ref_store* files_downcast (struct ref_store*,int ,char*) ;
 int files_ref_path (struct files_ref_store*,struct strbuf*,char const*) ;
 scalar_t__ isspace (char const) ;
 scalar_t__ lstat (char const*,struct stat*) ;
 int open (char const*,int ) ;
 scalar_t__ parse_oid_hex (char const*,struct object_id*,char const**) ;
 scalar_t__ refs_read_raw_ref (int ,char const*,struct object_id*,struct strbuf*,unsigned int*) ;
 scalar_t__ starts_with (char const*,char*) ;
 int strbuf_addstr (struct strbuf*,char const*) ;
 scalar_t__ strbuf_read (struct strbuf*,int,int) ;
 scalar_t__ strbuf_readlink (struct strbuf*,char const*,int ) ;
 int strbuf_release (struct strbuf*) ;
 int strbuf_reset (struct strbuf*) ;
 int strbuf_rtrim (struct strbuf*) ;
 int strbuf_swap (struct strbuf*,struct strbuf*) ;

__attribute__((used)) static int files_read_raw_ref(struct ref_store *ref_store,
         const char *refname, struct object_id *oid,
         struct strbuf *referent, unsigned int *type)
{
 struct files_ref_store *refs =
  files_downcast(ref_store, REF_STORE_READ, "read_raw_ref");
 struct strbuf sb_contents = STRBUF_INIT;
 struct strbuf sb_path = STRBUF_INIT;
 const char *path;
 const char *buf;
 const char *p;
 struct stat st;
 int fd;
 int ret = -1;
 int save_errno;
 int remaining_retries = 3;

 *type = 0;
 strbuf_reset(&sb_path);

 files_ref_path(refs, &sb_path, refname);

 path = sb_path.buf;

stat_ref:
 if (remaining_retries-- <= 0)
  goto out;

 if (lstat(path, &st) < 0) {
  if (errno != ENOENT)
   goto out;
  if (refs_read_raw_ref(refs->packed_ref_store, refname,
          oid, referent, type)) {
   errno = ENOENT;
   goto out;
  }
  ret = 0;
  goto out;
 }


 if (S_ISLNK(st.st_mode)) {
  strbuf_reset(&sb_contents);
  if (strbuf_readlink(&sb_contents, path, st.st_size) < 0) {
   if (errno == ENOENT || errno == EINVAL)

    goto stat_ref;
   else
    goto out;
  }
  if (starts_with(sb_contents.buf, "refs/") &&
      !check_refname_format(sb_contents.buf, 0)) {
   strbuf_swap(&sb_contents, referent);
   *type |= REF_ISSYMREF;
   ret = 0;
   goto out;
  }





 }


 if (S_ISDIR(st.st_mode)) {





  if (refs_read_raw_ref(refs->packed_ref_store, refname,
          oid, referent, type)) {
   errno = EISDIR;
   goto out;
  }
  ret = 0;
  goto out;
 }





 fd = open(path, O_RDONLY);
 if (fd < 0) {
  if (errno == ENOENT && !S_ISLNK(st.st_mode))

   goto stat_ref;
  else
   goto out;
 }
 strbuf_reset(&sb_contents);
 if (strbuf_read(&sb_contents, fd, 256) < 0) {
  int save_errno = errno;
  close(fd);
  errno = save_errno;
  goto out;
 }
 close(fd);
 strbuf_rtrim(&sb_contents);
 buf = sb_contents.buf;
 if (starts_with(buf, "ref:")) {
  buf += 4;
  while (isspace(*buf))
   buf++;

  strbuf_reset(referent);
  strbuf_addstr(referent, buf);
  *type |= REF_ISSYMREF;
  ret = 0;
  goto out;
 }





 if (parse_oid_hex(buf, oid, &p) ||
     (*p != '\0' && !isspace(*p))) {
  *type |= REF_ISBROKEN;
  errno = EINVAL;
  goto out;
 }

 ret = 0;

out:
 save_errno = errno;
 strbuf_release(&sb_path);
 strbuf_release(&sb_contents);
 errno = save_errno;
 return ret;
}
