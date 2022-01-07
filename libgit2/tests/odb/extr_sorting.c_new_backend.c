
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int git_odb_backend ;
struct TYPE_4__ {void (* free ) (int *) ;int version; } ;
struct TYPE_5__ {size_t position; TYPE_1__ base; } ;
typedef TYPE_2__ fake_backend ;


 int GIT_ODB_BACKEND_VERSION ;
 TYPE_2__* git__calloc (int,int) ;
 scalar_t__ git__free ;

__attribute__((used)) static git_odb_backend *new_backend(size_t position)
{
 fake_backend *b;

 b = git__calloc(1, sizeof(fake_backend));
 if (b == ((void*)0))
  return ((void*)0);

 b->base.free = (void (*)(git_odb_backend *)) git__free;
 b->base.version = GIT_ODB_BACKEND_VERSION;
 b->position = position;
 return (git_odb_backend *)b;
}
