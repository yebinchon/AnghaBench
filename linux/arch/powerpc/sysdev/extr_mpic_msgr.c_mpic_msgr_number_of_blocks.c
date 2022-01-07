
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_node {int dummy; } ;
typedef int buf ;


 struct device_node* of_find_node_by_name (int *,char*) ;
 int of_find_property (struct device_node*,char*,int *) ;
 int snprintf (char*,int,char*,unsigned int) ;

__attribute__((used)) static unsigned int mpic_msgr_number_of_blocks(void)
{
 unsigned int count;
 struct device_node *aliases;

 count = 0;
 aliases = of_find_node_by_name(((void*)0), "aliases");

 if (aliases) {
  char buf[32];

  for (;;) {
   snprintf(buf, sizeof(buf), "mpic-msgr-block%d", count);
   if (!of_find_property(aliases, buf, ((void*)0)))
    break;

   count += 1;
  }
 }

 return count;
}
