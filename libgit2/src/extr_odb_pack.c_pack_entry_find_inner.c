
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {size_t length; } ;
struct pack_backend {struct git_pack_file* last_found; TYPE_1__ packs; } ;
struct git_pack_file {int dummy; } ;
struct git_pack_entry {int dummy; } ;
typedef int git_oid ;


 int GIT_OID_HEXSZ ;
 scalar_t__ git_pack_entry_find (struct git_pack_entry*,struct git_pack_file*,int const*,int ) ;
 struct git_pack_file* git_vector_get (TYPE_1__*,size_t) ;

__attribute__((used)) static int pack_entry_find_inner(
 struct git_pack_entry *e,
 struct pack_backend *backend,
 const git_oid *oid,
 struct git_pack_file *last_found)
{
 size_t i;

 if (last_found &&
  git_pack_entry_find(e, last_found, oid, GIT_OID_HEXSZ) == 0)
  return 0;

 for (i = 0; i < backend->packs.length; ++i) {
  struct git_pack_file *p;

  p = git_vector_get(&backend->packs, i);
  if (p == last_found)
   continue;

  if (git_pack_entry_find(e, p, oid, GIT_OID_HEXSZ) == 0) {
   backend->last_found = p;
   return 0;
  }
 }

 return -1;
}
