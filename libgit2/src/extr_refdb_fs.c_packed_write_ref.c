
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct packref {int flags; int name; int peel; int oid; } ;
typedef int peel ;
typedef int oid ;
typedef int git_filebuf ;


 int GIT_OID_HEXSZ ;
 int PACKREF_HAS_PEEL ;
 scalar_t__ git_filebuf_printf (int *,char*,char*,int ,...) ;
 int git_oid_nfmt (char*,int,int *) ;

__attribute__((used)) static int packed_write_ref(struct packref *ref, git_filebuf *file)
{
 char oid[GIT_OID_HEXSZ + 1];
 git_oid_nfmt(oid, sizeof(oid), &ref->oid);
 if (ref->flags & PACKREF_HAS_PEEL) {
  char peel[GIT_OID_HEXSZ + 1];
  git_oid_nfmt(peel, sizeof(peel), &ref->peel);

  if (git_filebuf_printf(file, "%s %s\n^%s\n", oid, ref->name, peel) < 0)
   return -1;
 } else {
  if (git_filebuf_printf(file, "%s %s\n", oid, ref->name) < 0)
   return -1;
 }

 return 0;
}
