
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int GAgentItem ;


 int * xcalloc (int ,int) ;

GAgentItem *
new_gagent_item (uint32_t size)
{
  GAgentItem *item = xcalloc (size, sizeof (GAgentItem));

  return item;
}
