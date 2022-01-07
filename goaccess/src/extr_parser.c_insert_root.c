
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int GModule ;


 int ht_insert_root (int ,int,int) ;

__attribute__((used)) static void
insert_root (int data_nkey, int root_nkey, GModule module)
{
  ht_insert_root (module, data_nkey, root_nkey);
}
