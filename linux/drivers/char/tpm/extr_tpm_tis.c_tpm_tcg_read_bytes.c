
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef scalar_t__ u32 ;
typedef int u16 ;
struct tpm_tis_tcg_phy {scalar_t__ iobase; } ;
struct tpm_tis_data {int dummy; } ;


 int ioread8 (scalar_t__) ;
 struct tpm_tis_tcg_phy* to_tpm_tis_tcg_phy (struct tpm_tis_data*) ;

__attribute__((used)) static int tpm_tcg_read_bytes(struct tpm_tis_data *data, u32 addr, u16 len,
         u8 *result)
{
 struct tpm_tis_tcg_phy *phy = to_tpm_tis_tcg_phy(data);

 while (len--)
  *result++ = ioread8(phy->iobase + addr);

 return 0;
}
