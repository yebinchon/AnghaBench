
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct tpm_chip {int dummy; } ;


 int STAT ;
 int tpm_data_in (int ) ;

__attribute__((used)) static u8 tpm_inf_status(struct tpm_chip *chip)
{
 return tpm_data_in(STAT);
}
