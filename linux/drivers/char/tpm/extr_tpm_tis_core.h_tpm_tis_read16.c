
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
typedef int u16 ;
struct tpm_tis_data {TYPE_1__* phy_ops; } ;
struct TYPE_2__ {int (* read16 ) (struct tpm_tis_data*,int ,int *) ;} ;


 int stub1 (struct tpm_tis_data*,int ,int *) ;

__attribute__((used)) static inline int tpm_tis_read16(struct tpm_tis_data *data, u32 addr,
     u16 *result)
{
 return data->phy_ops->read16(data, addr, result);
}
