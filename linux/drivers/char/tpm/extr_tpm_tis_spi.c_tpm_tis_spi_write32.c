
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct tpm_tis_data {TYPE_1__* phy_ops; } ;
typedef int __le32 ;
struct TYPE_2__ {int (* write_bytes ) (struct tpm_tis_data*,int ,int,int *) ;} ;


 int cpu_to_le32 (int ) ;
 int stub1 (struct tpm_tis_data*,int ,int,int *) ;

__attribute__((used)) static int tpm_tis_spi_write32(struct tpm_tis_data *data, u32 addr, u32 value)
{
 __le32 value_le;
 int rc;

 value_le = cpu_to_le32(value);
 rc = data->phy_ops->write_bytes(data, addr, sizeof(u32),
     (u8 *)&value_le);

 return rc;
}
