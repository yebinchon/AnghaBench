
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pack_backend {int dummy; } ;
struct git_pack_entry {int dummy; } ;
typedef int git_oid ;
typedef int git_odb_backend ;


 scalar_t__ pack_entry_find (struct git_pack_entry*,struct pack_backend*,int const*) ;

__attribute__((used)) static int pack_backend__exists(git_odb_backend *backend, const git_oid *oid)
{
 struct git_pack_entry e;
 return pack_entry_find(&e, (struct pack_backend *)backend, oid) == 0;
}
