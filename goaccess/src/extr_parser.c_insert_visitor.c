
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int GModule ;


 int ht_insert_meta_data (int ,char*,int) ;
 int ht_insert_visitor (int ,int,int) ;

__attribute__((used)) static void
insert_visitor (int uniq_nkey, GModule module)
{
  ht_insert_visitor (module, uniq_nkey, 1);
  ht_insert_meta_data (module, "visitors", 1);
}
