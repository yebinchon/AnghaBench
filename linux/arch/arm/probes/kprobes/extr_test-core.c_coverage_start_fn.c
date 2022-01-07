
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int table; } ;
struct decode_table {TYPE_2__ table; } ;
struct TYPE_3__ {int bits; } ;
struct decode_header {TYPE_1__ type_regs; } ;
struct coverage_table {int num_entries; int nesting; struct coverage_entry* base; } ;
struct coverage_entry {int matched; int nesting; int regs; struct decode_header const* header; } ;
typedef enum decode_type { ____Placeholder_decode_type } decode_type ;


 int DECODE_TYPE_MASK ;
 int DECODE_TYPE_TABLE ;
 int ENOMEM ;
 int MAX_COVERAGE_ENTRIES ;
 int coverage_start_registers (struct decode_header const*) ;
 int pr_err (char*) ;
 int table_iter (int ,int (*) (struct decode_header const*,void*),struct coverage_table*) ;

__attribute__((used)) static int coverage_start_fn(const struct decode_header *h, void *args)
{
 struct coverage_table *coverage = (struct coverage_table *)args;
 enum decode_type type = h->type_regs.bits & DECODE_TYPE_MASK;
 struct coverage_entry *entry = coverage->base + coverage->num_entries;

 if (coverage->num_entries == MAX_COVERAGE_ENTRIES - 1) {
  pr_err("FAIL: Out of space for test coverage data");
  return -ENOMEM;
 }

 ++coverage->num_entries;

 entry->header = h;
 entry->regs = coverage_start_registers(h);
 entry->nesting = coverage->nesting;
 entry->matched = 0;

 if (type == DECODE_TYPE_TABLE) {
  struct decode_table *d = (struct decode_table *)h;
  int ret;
  ++coverage->nesting;
  ret = table_iter(d->table.table, coverage_start_fn, coverage);
  --coverage->nesting;
  return ret;
 }

 return 0;
}
