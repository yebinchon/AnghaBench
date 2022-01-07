
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct strbuf {int len; int buf; } ;
struct stat {int st_mode; int st_size; } ;
struct object_id {int dummy; } ;
struct index_state {int dummy; } ;


 unsigned int HASH_WRITE_OBJECT ;
 int OBJ_BLOB ;
 int O_RDONLY ;
 struct strbuf STRBUF_INIT ;


 int S_IFMT ;

 int _ (char*) ;
 int blob_type ;
 int error (int ,char const*) ;
 int error_errno (char*,char const*) ;
 int hash_object_file (int ,int ,int ,struct object_id*) ;
 int index_fd (struct index_state*,struct object_id*,int,struct stat*,int ,char const*,unsigned int) ;
 int open (char const*,int ) ;
 int resolve_gitlink_ref (char const*,char*,struct object_id*) ;
 int strbuf_readlink (struct strbuf*,char const*,int ) ;
 int strbuf_release (struct strbuf*) ;
 int write_object_file (int ,int ,int ,struct object_id*) ;

int index_path(struct index_state *istate, struct object_id *oid,
        const char *path, struct stat *st, unsigned flags)
{
 int fd;
 struct strbuf sb = STRBUF_INIT;
 int rc = 0;

 switch (st->st_mode & S_IFMT) {
 case 128:
  fd = open(path, O_RDONLY);
  if (fd < 0)
   return error_errno("open(\"%s\")", path);
  if (index_fd(istate, oid, fd, st, OBJ_BLOB, path, flags) < 0)
   return error(_("%s: failed to insert into database"),
         path);
  break;
 case 129:
  if (strbuf_readlink(&sb, path, st->st_size))
   return error_errno("readlink(\"%s\")", path);
  if (!(flags & HASH_WRITE_OBJECT))
   hash_object_file(sb.buf, sb.len, blob_type, oid);
  else if (write_object_file(sb.buf, sb.len, blob_type, oid))
   rc = error(_("%s: failed to insert into database"), path);
  strbuf_release(&sb);
  break;
 case 130:
  return resolve_gitlink_ref(path, "HEAD", oid);
 default:
  return error(_("%s: unsupported file type"), path);
 }
 return rc;
}
