
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {TYPE_2__* str; } ;
struct TYPE_6__ {long n_nodes; struct TYPE_6__* root; TYPE_1__ v; struct TYPE_6__* key; } ;
typedef TYPE_2__ kson_t ;


 int free (TYPE_2__*) ;

void kson_destroy(kson_t *kson)
{
 long i;
 if (kson == 0) return;
 for (i = 0; i < kson->n_nodes; ++i) {
  free(kson->root[i].key); free(kson->root[i].v.str);
 }
 free(kson->root); free(kson);
}
