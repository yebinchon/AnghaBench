
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct branch {struct branch* table_next_branch; } ;


 struct branch** branch_table ;
 unsigned int branch_table_sz ;
 int failure ;
 int update_branch (struct branch*) ;

__attribute__((used)) static void dump_branches(void)
{
 unsigned int i;
 struct branch *b;

 for (i = 0; i < branch_table_sz; i++) {
  for (b = branch_table[i]; b; b = b->table_next_branch)
   failure |= update_branch(b);
 }
}
