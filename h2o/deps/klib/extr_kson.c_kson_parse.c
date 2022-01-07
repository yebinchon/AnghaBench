
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int n_nodes; int root; } ;
typedef TYPE_1__ kson_t ;


 scalar_t__ calloc (int,int) ;
 int kson_destroy (TYPE_1__*) ;
 int kson_parse_core (char const*,int *,int*,int ) ;

kson_t *kson_parse(const char *json)
{
 kson_t *kson;
 int error;
 kson = (kson_t*)calloc(1, sizeof(kson_t));
 kson->root = kson_parse_core(json, &kson->n_nodes, &error, 0);
 if (error) {
  kson_destroy(kson);
  return 0;
 }
 return kson;
}
