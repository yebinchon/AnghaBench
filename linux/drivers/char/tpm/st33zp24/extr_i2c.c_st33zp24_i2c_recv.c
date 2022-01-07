
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 int read8_reg (void*,int ,int *,int) ;

__attribute__((used)) static int st33zp24_i2c_recv(void *phy_id, u8 tpm_register, u8 *tpm_data,
        int tpm_size)
{
 return read8_reg(phy_id, tpm_register, tpm_data, tpm_size);
}
