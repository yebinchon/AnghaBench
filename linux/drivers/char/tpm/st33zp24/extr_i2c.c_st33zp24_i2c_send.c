
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 int TPM_WRITE_DIRECTION ;
 int write8_reg (void*,int,int*,int) ;

__attribute__((used)) static int st33zp24_i2c_send(void *phy_id, u8 tpm_register, u8 *tpm_data,
        int tpm_size)
{
 return write8_reg(phy_id, tpm_register | TPM_WRITE_DIRECTION, tpm_data,
     tpm_size);
}
