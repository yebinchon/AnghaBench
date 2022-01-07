
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int backends; } ;
typedef TYPE_1__ git_config ;
struct TYPE_6__ {int backend; } ;
typedef TYPE_2__ backend_internal ;


 TYPE_2__* git_vector_get (int *,size_t) ;

__attribute__((used)) static int find_next_backend(size_t *out, const git_config *cfg, size_t i)
{
 backend_internal *internal;

 for (; i > 0; --i) {
  internal = git_vector_get(&cfg->backends, i - 1);
  if (!internal || !internal->backend)
   continue;

  *out = i;
  return 0;
 }

 return -1;
}
