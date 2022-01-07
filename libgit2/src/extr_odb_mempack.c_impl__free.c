
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct memory_packer_db {int objects; } ;
typedef int git_odb_backend ;


 int git__free (struct memory_packer_db*) ;
 int git_mempack_reset (int *) ;
 int git_oidmap_free (int ) ;

__attribute__((used)) static void impl__free(git_odb_backend *_backend)
{
 struct memory_packer_db *db = (struct memory_packer_db *)_backend;

 git_mempack_reset(_backend);
 git_oidmap_free(db->objects);
 git__free(db);
}
