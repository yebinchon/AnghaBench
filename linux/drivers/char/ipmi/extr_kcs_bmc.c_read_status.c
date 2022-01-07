
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_2__ {int str; } ;
struct kcs_bmc {TYPE_1__ ioreg; int (* io_inputb ) (struct kcs_bmc*,int ) ;} ;


 int stub1 (struct kcs_bmc*,int ) ;

__attribute__((used)) static inline u8 read_status(struct kcs_bmc *kcs_bmc)
{
 return kcs_bmc->io_inputb(kcs_bmc, kcs_bmc->ioreg.str);
}
