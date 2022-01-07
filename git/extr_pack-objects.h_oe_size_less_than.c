
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct packing_data {unsigned long oe_size_limit; } ;
struct object_entry {unsigned long size_; scalar_t__ size_valid; } ;


 unsigned long oe_get_size_slow (struct packing_data*,struct object_entry const*) ;

__attribute__((used)) static inline int oe_size_less_than(struct packing_data *pack,
        const struct object_entry *lhs,
        unsigned long rhs)
{
 if (lhs->size_valid)
  return lhs->size_ < rhs;
 if (rhs < pack->oe_size_limit)
  return 0;
 return oe_get_size_slow(pack, lhs) < rhs;
}
