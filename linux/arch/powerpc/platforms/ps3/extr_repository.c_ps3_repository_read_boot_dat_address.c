
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;


 int PS3_LPAR_ID_CURRENT ;
 int make_field (char*,int ) ;
 int make_first_field (char*,int ) ;
 int read_node (int ,int ,int ,int ,int ,int *,int *) ;

__attribute__((used)) static int ps3_repository_read_boot_dat_address(u64 *address)
{
 return read_node(PS3_LPAR_ID_CURRENT,
  make_first_field("bi", 0),
  make_field("boot_dat", 0),
  make_field("address", 0),
  0,
  address, ((void*)0));
}
