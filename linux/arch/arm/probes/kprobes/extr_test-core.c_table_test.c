
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef union decode_item {int dummy; } decode_item ;
struct table_test_args {union decode_item const* root_table; int parent_value; int parent_mask; } ;


 int table_iter (union decode_item const*,int ,struct table_test_args*) ;
 int table_test_fn ;

__attribute__((used)) static int table_test(const union decode_item *table)
{
 struct table_test_args args = {
  .root_table = table,
  .parent_mask = 0,
  .parent_value = 0
 };
 return table_iter(args.root_table, table_test_fn, &args);
}
