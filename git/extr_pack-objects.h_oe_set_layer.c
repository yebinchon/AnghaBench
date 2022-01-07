
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct packing_data {unsigned char* layer; struct object_entry* objects; int nr_alloc; } ;
struct object_entry {int dummy; } ;


 int CALLOC_ARRAY (unsigned char*,int ) ;

__attribute__((used)) static inline void oe_set_layer(struct packing_data *pack,
    struct object_entry *e,
    unsigned char layer)
{
 if (!pack->layer)
  CALLOC_ARRAY(pack->layer, pack->nr_alloc);
 pack->layer[e - pack->objects] = layer;
}
