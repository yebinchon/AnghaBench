
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
struct tpm_chip {int dummy; } ;


 scalar_t__ NSC_STATUS_RDY ;

__attribute__((used)) static bool tpm_nsc_req_canceled(struct tpm_chip *chip, u8 status)
{
 return (status == NSC_STATUS_RDY);
}
