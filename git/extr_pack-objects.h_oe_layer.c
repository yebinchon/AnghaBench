
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct packing_data {unsigned char* layer; struct object_entry* objects; } ;
struct object_entry {int dummy; } ;



__attribute__((used)) static inline unsigned char oe_layer(struct packing_data *pack,
         struct object_entry *e)
{
 if (!pack->layer)
  return 0;
 return pack->layer[e - pack->objects];
}
