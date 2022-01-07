
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
typedef int u16 ;
struct tpm_tis_tcg_phy {scalar_t__ iobase; } ;
struct tpm_tis_data {int dummy; } ;


 int ioread16 (scalar_t__) ;
 struct tpm_tis_tcg_phy* to_tpm_tis_tcg_phy (struct tpm_tis_data*) ;

__attribute__((used)) static int tpm_tcg_read16(struct tpm_tis_data *data, u32 addr, u16 *result)
{
 struct tpm_tis_tcg_phy *phy = to_tpm_tis_tcg_phy(data);

 *result = ioread16(phy->iobase + addr);

 return 0;
}
