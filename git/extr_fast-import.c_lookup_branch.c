
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct branch {int name; struct branch* table_next_branch; } ;


 struct branch** branch_table ;
 unsigned int branch_table_sz ;
 unsigned int hc_str (char const*,int ) ;
 int strcmp (char const*,int ) ;
 int strlen (char const*) ;

__attribute__((used)) static struct branch *lookup_branch(const char *name)
{
 unsigned int hc = hc_str(name, strlen(name)) % branch_table_sz;
 struct branch *b;

 for (b = branch_table[hc]; b; b = b->table_next_branch)
  if (!strcmp(name, b->name))
   return b;
 return ((void*)0);
}
