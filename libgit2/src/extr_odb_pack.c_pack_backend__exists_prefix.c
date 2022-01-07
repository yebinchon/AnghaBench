
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pack_backend {int dummy; } ;
struct git_pack_entry {int sha1; int member_0; } ;
typedef int git_oid ;
typedef int git_odb_backend ;


 int git_oid_cpy (int *,int *) ;
 int pack_entry_find_prefix (struct git_pack_entry*,struct pack_backend*,int const*,size_t) ;

__attribute__((used)) static int pack_backend__exists_prefix(
 git_oid *out, git_odb_backend *backend, const git_oid *short_id, size_t len)
{
 int error;
 struct pack_backend *pb = (struct pack_backend *)backend;
 struct git_pack_entry e = {0};

 error = pack_entry_find_prefix(&e, pb, short_id, len);
 git_oid_cpy(out, &e.sha1);
 return error;
}
