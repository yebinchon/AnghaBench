
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct strbuf {int len; int buf; } ;
struct stat {int st_size; int st_mode; } ;
struct repository {int index; } ;
struct diff_tempfile {char* name; int mode; int hex; } ;
struct diff_filespec {int mode; int oid; int size; int data; int path; scalar_t__ oid_valid; } ;


 int DIFF_FILE_VALID (struct diff_filespec*) ;
 scalar_t__ ENOENT ;
 struct strbuf STRBUF_INIT ;
 int S_IFLNK ;
 int S_ISGITLINK (int ) ;
 scalar_t__ S_ISLNK (int ) ;
 struct diff_tempfile* claim_diff_tempfile () ;
 int die (char*,int ) ;
 int die_errno (char*,char const*) ;
 scalar_t__ diff_populate_filespec (struct repository*,struct diff_filespec*,int ) ;
 scalar_t__ errno ;
 scalar_t__ lstat (char const*,struct stat*) ;
 int null_oid ;
 int oid_to_hex_r (int ,int *) ;
 int prep_temp_blob (int ,char const*,struct diff_tempfile*,int ,int ,int *,int ) ;
 scalar_t__ reuse_worktree_file (int ,char const*,int *,int) ;
 scalar_t__ strbuf_readlink (struct strbuf*,char const*,int ) ;
 int strbuf_release (struct strbuf*) ;
 int xsnprintf (int ,int,char*,...) ;

__attribute__((used)) static struct diff_tempfile *prepare_temp_file(struct repository *r,
            const char *name,
            struct diff_filespec *one)
{
 struct diff_tempfile *temp = claim_diff_tempfile();

 if (!DIFF_FILE_VALID(one)) {
 not_a_valid_file:



  temp->name = "/dev/null";
  xsnprintf(temp->hex, sizeof(temp->hex), ".");
  xsnprintf(temp->mode, sizeof(temp->mode), ".");
  return temp;
 }

 if (!S_ISGITLINK(one->mode) &&
     (!one->oid_valid ||
      reuse_worktree_file(r->index, name, &one->oid, 1))) {
  struct stat st;
  if (lstat(name, &st) < 0) {
   if (errno == ENOENT)
    goto not_a_valid_file;
   die_errno("stat(%s)", name);
  }
  if (S_ISLNK(st.st_mode)) {
   struct strbuf sb = STRBUF_INIT;
   if (strbuf_readlink(&sb, name, st.st_size) < 0)
    die_errno("readlink(%s)", name);
   prep_temp_blob(r->index, name, temp, sb.buf, sb.len,
           (one->oid_valid ?
     &one->oid : &null_oid),
           (one->oid_valid ?
     one->mode : S_IFLNK));
   strbuf_release(&sb);
  }
  else {

   temp->name = name;
   if (!one->oid_valid)
    oid_to_hex_r(temp->hex, &null_oid);
   else
    oid_to_hex_r(temp->hex, &one->oid);






   xsnprintf(temp->mode, sizeof(temp->mode), "%06o", one->mode);
  }
  return temp;
 }
 else {
  if (diff_populate_filespec(r, one, 0))
   die("cannot read data blob for %s", one->path);
  prep_temp_blob(r->index, name, temp,
          one->data, one->size,
          &one->oid, one->mode);
 }
 return temp;
}
