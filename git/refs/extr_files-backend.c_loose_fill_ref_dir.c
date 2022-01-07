
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct strbuf {size_t len; int buf; } ;
struct stat {int st_mode; } ;
struct ref_store {int dummy; } ;
struct ref_dir {int cache; } ;
struct object_id {int dummy; } ;
struct files_ref_store {int base; } ;
struct dirent {char* d_name; } ;
typedef int DIR ;


 int REFNAME_ALLOW_ONELEVEL ;
 int REF_BAD_NAME ;
 int REF_ISBROKEN ;
 int REF_STORE_READ ;
 int RESOLVE_REF_READING ;
 struct strbuf STRBUF_INIT ;
 scalar_t__ S_ISDIR (int ) ;
 int add_entry_to_dir (struct ref_dir*,int ) ;
 int add_per_worktree_entries_to_dir (struct ref_dir*,char const*) ;
 scalar_t__ check_refname_format (int ,int ) ;
 int closedir (int *) ;
 int create_dir_entry (int ,int ,size_t,int) ;
 int create_ref_entry (int ,struct object_id*,int) ;
 int die (char*,int ) ;
 scalar_t__ ends_with (char*,char*) ;
 struct files_ref_store* files_downcast (struct ref_store*,int ,char*) ;
 int files_ref_path (struct files_ref_store*,struct strbuf*,char const*) ;
 scalar_t__ is_null_oid (struct object_id*) ;
 int oidclr (struct object_id*) ;
 int * opendir (int ) ;
 struct dirent* readdir (int *) ;
 int refname_is_safe (int ) ;
 int refs_resolve_ref_unsafe (int *,int ,int ,struct object_id*,int*) ;
 scalar_t__ stat (int ,struct stat*) ;
 int strbuf_add (struct strbuf*,char const*,int) ;
 int strbuf_addch (struct strbuf*,char) ;
 int strbuf_addstr (struct strbuf*,char*) ;
 int strbuf_init (struct strbuf*,int) ;
 int strbuf_release (struct strbuf*) ;
 int strbuf_setlen (struct strbuf*,size_t) ;
 int strlen (char const*) ;

__attribute__((used)) static void loose_fill_ref_dir(struct ref_store *ref_store,
          struct ref_dir *dir, const char *dirname)
{
 struct files_ref_store *refs =
  files_downcast(ref_store, REF_STORE_READ, "fill_ref_dir");
 DIR *d;
 struct dirent *de;
 int dirnamelen = strlen(dirname);
 struct strbuf refname;
 struct strbuf path = STRBUF_INIT;
 size_t path_baselen;

 files_ref_path(refs, &path, dirname);
 path_baselen = path.len;

 d = opendir(path.buf);
 if (!d) {
  strbuf_release(&path);
  return;
 }

 strbuf_init(&refname, dirnamelen + 257);
 strbuf_add(&refname, dirname, dirnamelen);

 while ((de = readdir(d)) != ((void*)0)) {
  struct object_id oid;
  struct stat st;
  int flag;

  if (de->d_name[0] == '.')
   continue;
  if (ends_with(de->d_name, ".lock"))
   continue;
  strbuf_addstr(&refname, de->d_name);
  strbuf_addstr(&path, de->d_name);
  if (stat(path.buf, &st) < 0) {
   ;
  } else if (S_ISDIR(st.st_mode)) {
   strbuf_addch(&refname, '/');
   add_entry_to_dir(dir,
      create_dir_entry(dir->cache, refname.buf,
         refname.len, 1));
  } else {
   if (!refs_resolve_ref_unsafe(&refs->base,
           refname.buf,
           RESOLVE_REF_READING,
           &oid, &flag)) {
    oidclr(&oid);
    flag |= REF_ISBROKEN;
   } else if (is_null_oid(&oid)) {
    flag |= REF_ISBROKEN;
   }

   if (check_refname_format(refname.buf,
       REFNAME_ALLOW_ONELEVEL)) {
    if (!refname_is_safe(refname.buf))
     die("loose refname is dangerous: %s", refname.buf);
    oidclr(&oid);
    flag |= REF_BAD_NAME | REF_ISBROKEN;
   }
   add_entry_to_dir(dir,
      create_ref_entry(refname.buf, &oid, flag));
  }
  strbuf_setlen(&refname, dirnamelen);
  strbuf_setlen(&path, path_baselen);
 }
 strbuf_release(&refname);
 strbuf_release(&path);
 closedir(d);

 add_per_worktree_entries_to_dir(dir, dirname);
}
