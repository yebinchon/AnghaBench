
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct kcs_bmc {int dummy; } ;


 int read_status (struct kcs_bmc*) ;
 int write_status (struct kcs_bmc*,int) ;

__attribute__((used)) static void update_status_bits(struct kcs_bmc *kcs_bmc, u8 mask, u8 val)
{
 u8 tmp = read_status(kcs_bmc);

 tmp &= ~mask;
 tmp |= val & mask;

 write_status(kcs_bmc, tmp);
}
