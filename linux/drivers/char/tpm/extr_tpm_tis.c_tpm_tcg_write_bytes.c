
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef scalar_t__ u32 ;
typedef int u16 ;
struct tpm_tis_tcg_phy {scalar_t__ iobase; } ;
struct tpm_tis_data {int dummy; } ;


 int iowrite8 (int ,scalar_t__) ;
 struct tpm_tis_tcg_phy* to_tpm_tis_tcg_phy (struct tpm_tis_data*) ;

__attribute__((used)) static int tpm_tcg_write_bytes(struct tpm_tis_data *data, u32 addr, u16 len,
          const u8 *value)
{
 struct tpm_tis_tcg_phy *phy = to_tpm_tis_tcg_phy(data);

 while (len--)
  iowrite8(*value++, phy->iobase + addr);

 return 0;
}
