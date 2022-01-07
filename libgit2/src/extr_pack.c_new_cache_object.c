
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int git_rawobj ;
struct TYPE_4__ {int raw; int refcount; } ;
typedef TYPE_1__ git_pack_cache_entry ;


 TYPE_1__* git__calloc (int,int) ;
 int git_atomic_inc (int *) ;
 int memcpy (int *,int *,int) ;

__attribute__((used)) static git_pack_cache_entry *new_cache_object(git_rawobj *source)
{
 git_pack_cache_entry *e = git__calloc(1, sizeof(git_pack_cache_entry));
 if (!e)
  return ((void*)0);

 git_atomic_inc(&e->refcount);
 memcpy(&e->raw, source, sizeof(git_rawobj));

 return e;
}
