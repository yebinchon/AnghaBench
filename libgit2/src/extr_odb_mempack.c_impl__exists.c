
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct memory_packer_db {int objects; } ;
typedef int git_oid ;
typedef int git_odb_backend ;


 int git_oidmap_exists (int ,int const*) ;

__attribute__((used)) static int impl__exists(git_odb_backend *backend, const git_oid *oid)
{
 struct memory_packer_db *db = (struct memory_packer_db *)backend;

 return git_oidmap_exists(db->objects, oid);
}
