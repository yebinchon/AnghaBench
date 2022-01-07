
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct table_test_args {int parent_mask; int parent_value; } ;
struct TYPE_8__ {int table; } ;
struct decode_table {TYPE_4__ table; } ;
struct TYPE_7__ {int bits; } ;
struct TYPE_6__ {int bits; } ;
struct TYPE_5__ {int bits; } ;
struct decode_header {TYPE_3__ value; TYPE_2__ mask; TYPE_1__ type_regs; } ;
typedef enum decode_type { ____Placeholder_decode_type } decode_type ;


 int DECODE_TYPE_MASK ;
 int DECODE_TYPE_TABLE ;
 int table_iter (int ,int (*) (struct decode_header const*,void*),struct table_test_args*) ;
 int table_test_fail (struct decode_header const*,char*) ;

__attribute__((used)) static int table_test_fn(const struct decode_header *h, void *args)
{
 struct table_test_args *a = (struct table_test_args *)args;
 enum decode_type type = h->type_regs.bits & DECODE_TYPE_MASK;

 if (h->value.bits & ~h->mask.bits)
  return table_test_fail(h, "Match value has bits not in mask");

 if ((h->mask.bits & a->parent_mask) != a->parent_mask)
  return table_test_fail(h, "Mask has bits not in parent mask");

 if ((h->value.bits ^ a->parent_value) & a->parent_mask)
  return table_test_fail(h, "Value is inconsistent with parent");

 if (type == DECODE_TYPE_TABLE) {
  struct decode_table *d = (struct decode_table *)h;
  struct table_test_args args2 = *a;
  args2.parent_mask = h->mask.bits;
  args2.parent_value = h->value.bits;
  return table_iter(d->table.table, table_test_fn, &args2);
 }

 return 0;
}
