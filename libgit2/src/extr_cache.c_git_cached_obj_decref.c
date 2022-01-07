
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int flags; int refcount; } ;
typedef TYPE_1__ git_cached_obj ;




 int git__free (void*) ;
 scalar_t__ git_atomic_dec (int *) ;
 int git_object__free (void*) ;
 int git_odb_object__free (void*) ;

void git_cached_obj_decref(void *_obj)
{
 git_cached_obj *obj = _obj;

 if (git_atomic_dec(&obj->refcount) == 0) {
  switch (obj->flags) {
  case 128:
   git_odb_object__free(_obj);
   break;

  case 129:
   git_object__free(_obj);
   break;

  default:
   git__free(_obj);
   break;
  }
 }
}
