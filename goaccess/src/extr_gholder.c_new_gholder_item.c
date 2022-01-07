
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int GHolderItem ;


 int * xcalloc (int ,int) ;

__attribute__((used)) static GHolderItem *
new_gholder_item (uint32_t size)
{
  GHolderItem *item = xcalloc (size, sizeof (GHolderItem));

  return item;
}
