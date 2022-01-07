
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct packing_data {int dummy; } ;
struct object_entry {unsigned long size_; scalar_t__ size_valid; } ;


 unsigned long oe_get_size_slow (struct packing_data*,struct object_entry const*) ;

__attribute__((used)) static inline unsigned long oe_size(struct packing_data *pack,
        const struct object_entry *e)
{
 if (e->size_valid)
  return e->size_;

 return oe_get_size_slow(pack, e);
}
