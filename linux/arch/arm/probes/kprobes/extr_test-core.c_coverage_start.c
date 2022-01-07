
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef union decode_item {int dummy; } decode_item ;
struct coverage_entry {int dummy; } ;
struct TYPE_3__ {scalar_t__ nesting; scalar_t__ num_entries; int base; } ;


 int GFP_KERNEL ;
 int MAX_COVERAGE_ENTRIES ;
 TYPE_1__ coverage ;
 int coverage_start_fn ;
 int kmalloc_array (int ,int,int ) ;
 int table_iter (union decode_item const*,int ,TYPE_1__*) ;

__attribute__((used)) static int coverage_start(const union decode_item *table)
{
 coverage.base = kmalloc_array(MAX_COVERAGE_ENTRIES,
          sizeof(struct coverage_entry),
          GFP_KERNEL);
 coverage.num_entries = 0;
 coverage.nesting = 0;
 return table_iter(table, coverage_start_fn, &coverage);
}
