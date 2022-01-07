
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u32 ;
struct coverage_entry {int matched; int regs; TYPE_2__* header; } ;
struct TYPE_8__ {int num_entries; struct coverage_entry* base; } ;
struct TYPE_7__ {int bits; } ;
struct TYPE_5__ {int bits; } ;
struct TYPE_6__ {TYPE_1__ value; TYPE_3__ mask; } ;


 TYPE_4__ coverage ;
 int coverage_fail ;
 int kfree (struct coverage_entry*) ;
 int pr_err (char*,int ,int ,...) ;

__attribute__((used)) static void coverage_end(void)
{
 struct coverage_entry *entry = coverage.base;
 struct coverage_entry *end = coverage.base + coverage.num_entries;

 for (; entry < end; ++entry) {
  u32 mask = entry->header->mask.bits;
  u32 value = entry->header->value.bits;

  if (entry->regs) {
   pr_err("FAIL: Register test coverage missing for %08x %08x (%05x)\n",
    mask, value, entry->regs);
   coverage_fail = 1;
  }
  if (!entry->matched) {
   pr_err("FAIL: Test coverage entry missing for %08x %08x\n",
    mask, value);
   coverage_fail = 1;
  }
 }

 kfree(coverage.base);
}
