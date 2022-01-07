
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pack_backend {int dummy; } ;
struct git_pack_entry {int offset; int p; } ;
struct git_odb_backend {int dummy; } ;
typedef int git_oid ;
typedef int git_object_t ;


 int assert (int ) ;
 int git_packfile_resolve_header (size_t*,int *,int ,int ) ;
 int pack_entry_find (struct git_pack_entry*,struct pack_backend*,int const*) ;

__attribute__((used)) static int pack_backend__read_header(
 size_t *len_p, git_object_t *type_p,
 struct git_odb_backend *backend, const git_oid *oid)
{
 struct git_pack_entry e;
 int error;

 assert(len_p && type_p && backend && oid);

 if ((error = pack_entry_find(&e, (struct pack_backend *)backend, oid)) < 0)
  return error;

 return git_packfile_resolve_header(len_p, type_p, e.p, e.offset);
}
