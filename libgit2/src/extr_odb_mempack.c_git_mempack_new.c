
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * free; int * exists; int * read_header; int * write; int * read; int version; } ;
struct memory_packer_db {TYPE_1__ parent; int objects; } ;
typedef int git_odb_backend ;


 int GIT_ERROR_CHECK_ALLOC (struct memory_packer_db*) ;
 int GIT_ODB_BACKEND_VERSION ;
 int assert (int **) ;
 struct memory_packer_db* git__calloc (int,int) ;
 scalar_t__ git_oidmap_new (int *) ;
 int impl__exists ;
 int impl__free ;
 int impl__read ;
 int impl__read_header ;
 int impl__write ;

int git_mempack_new(git_odb_backend **out)
{
 struct memory_packer_db *db;

 assert(out);

 db = git__calloc(1, sizeof(struct memory_packer_db));
 GIT_ERROR_CHECK_ALLOC(db);

 if (git_oidmap_new(&db->objects) < 0)
  return -1;

 db->parent.version = GIT_ODB_BACKEND_VERSION;
 db->parent.read = &impl__read;
 db->parent.write = &impl__write;
 db->parent.read_header = &impl__read_header;
 db->parent.exists = &impl__exists;
 db->parent.free = &impl__free;

 *out = (git_odb_backend *)db;
 return 0;
}
