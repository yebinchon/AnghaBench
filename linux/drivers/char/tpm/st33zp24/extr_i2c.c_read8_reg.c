
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct st33zp24_i2c_phy {int client; } ;


 int TPM_DUMMY_BYTE ;
 int i2c_master_recv (int ,int*,int) ;
 int write8_reg (struct st33zp24_i2c_phy*,int,int*,int) ;

__attribute__((used)) static int read8_reg(void *phy_id, u8 tpm_register, u8 *tpm_data, int tpm_size)
{
 struct st33zp24_i2c_phy *phy = phy_id;
 u8 status = 0;
 u8 data;

 data = TPM_DUMMY_BYTE;
 status = write8_reg(phy, tpm_register, &data, 1);
 if (status == 2)
  status = i2c_master_recv(phy->client, tpm_data, tpm_size);
 return status;
}
