
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_2__ {int odr; } ;
struct kcs_bmc {TYPE_1__ ioreg; int (* io_outputb ) (struct kcs_bmc*,int ,int ) ;} ;


 int stub1 (struct kcs_bmc*,int ,int ) ;

__attribute__((used)) static inline void write_data(struct kcs_bmc *kcs_bmc, u8 data)
{
 kcs_bmc->io_outputb(kcs_bmc, kcs_bmc->ioreg.odr, data);
}
