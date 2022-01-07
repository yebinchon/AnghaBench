
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;


 int ARRAY_SIZE (int ) ;
 int BUILD_BUG_ON (int) ;
 int ext_int_hash ;
 int is_power_of_2 (int) ;

__attribute__((used)) static inline int ext_hash(u16 code)
{
 BUILD_BUG_ON(!is_power_of_2(ARRAY_SIZE(ext_int_hash)));

 return (code + (code >> 9)) & (ARRAY_SIZE(ext_int_hash) - 1);
}
