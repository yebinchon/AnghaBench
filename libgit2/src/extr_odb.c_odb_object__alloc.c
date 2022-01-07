
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {int data; int len; int type; } ;
typedef TYPE_2__ git_rawobj ;
typedef int git_oid ;
struct TYPE_7__ {int size; int type; int oid; } ;
struct TYPE_9__ {int buffer; TYPE_1__ cached; } ;
typedef TYPE_3__ git_odb_object ;


 TYPE_3__* git__calloc (int,int) ;
 int git_oid_cpy (int *,int const*) ;

__attribute__((used)) static git_odb_object *odb_object__alloc(const git_oid *oid, git_rawobj *source)
{
 git_odb_object *object = git__calloc(1, sizeof(git_odb_object));

 if (object != ((void*)0)) {
  git_oid_cpy(&object->cached.oid, oid);
  object->cached.type = source->type;
  object->cached.size = source->len;
  object->buffer = source->data;
 }

 return object;
}
