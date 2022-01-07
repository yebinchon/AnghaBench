
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int READ_ONCE (int ) ;
 int init_pkru_value ;
 int write_pkru (int ) ;

void copy_init_pkru_to_fpregs(void)
{
 u32 init_pkru_value_snapshot = READ_ONCE(init_pkru_value);




 write_pkru(init_pkru_value_snapshot);
}
