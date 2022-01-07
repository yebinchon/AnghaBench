
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct st33zp24_i2c_phy {int * buf; int client; } ;


 int i2c_master_send (int ,int *,int) ;
 int memcpy (int *,int *,int) ;

__attribute__((used)) static int write8_reg(void *phy_id, u8 tpm_register, u8 *tpm_data, int tpm_size)
{
 struct st33zp24_i2c_phy *phy = phy_id;

 phy->buf[0] = tpm_register;
 memcpy(phy->buf + 1, tpm_data, tpm_size);
 return i2c_master_send(phy->client, phy->buf, tpm_size + 1);
}
