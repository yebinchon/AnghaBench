
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 int MAX_COUNT ;
 int SLEEP_DURATION_HI ;
 int SLEEP_DURATION_LOW ;
 int iic_tpm_write_generic (int ,int *,size_t,int ,int ,int ) ;

__attribute__((used)) static int iic_tpm_write(u8 addr, u8 *buffer, size_t len)
{
 return iic_tpm_write_generic(addr, buffer, len, SLEEP_DURATION_LOW,
         SLEEP_DURATION_HI, MAX_COUNT);
}
