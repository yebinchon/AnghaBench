
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int GModule ;


 int ht_insert_hits (int ,int,int) ;
 int ht_insert_meta_data (int ,char*,int) ;

__attribute__((used)) static void
insert_hit (int data_nkey, GModule module)
{
  ht_insert_hits (module, data_nkey, 1);
  ht_insert_meta_data (module, "hits", 1);
}
