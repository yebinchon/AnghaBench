
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {TYPE_3__* data; } ;
struct TYPE_5__ {scalar_t__ val; } ;
struct TYPE_7__ {TYPE_2__ raw; TYPE_1__ refcount; } ;
typedef TYPE_3__ git_pack_cache_entry ;


 int assert (int) ;
 int git__free (TYPE_3__*) ;

__attribute__((used)) static void free_cache_object(void *o)
{
 git_pack_cache_entry *e = (git_pack_cache_entry *)o;

 if (e != ((void*)0)) {
  assert(e->refcount.val == 0);
  git__free(e->raw.data);
  git__free(e);
 }
}
