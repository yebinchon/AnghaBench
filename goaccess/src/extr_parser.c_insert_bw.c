
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int GModule ;


 int ht_insert_bw (int ,int,int ) ;
 int ht_insert_meta_data (int ,char*,int ) ;

__attribute__((used)) static void
insert_bw (int data_nkey, uint64_t size, GModule module)
{
  ht_insert_bw (module, data_nkey, size);
  ht_insert_meta_data (module, "bytes", size);
}
