
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct memory_packer_db {int objects; } ;
struct memobject {size_t len; int type; } ;
typedef int git_oid ;
typedef int git_odb_backend ;
typedef int git_object_t ;


 int GIT_ENOTFOUND ;
 struct memobject* git_oidmap_get (int ,int const*) ;

__attribute__((used)) static int impl__read_header(size_t *len_p, git_object_t *type_p, git_odb_backend *backend, const git_oid *oid)
{
 struct memory_packer_db *db = (struct memory_packer_db *)backend;
 struct memobject *obj;

 if ((obj = git_oidmap_get(db->objects, oid)) == ((void*)0))
  return GIT_ENOTFOUND;

 *len_p = obj->len;
 *type_p = obj->type;
 return 0;
}
