
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct si_sm_data {int dummy; } ;


 int read_smic_flags (struct si_sm_data*) ;

__attribute__((used)) static int smic_detect(struct si_sm_data *smic)
{






 if (read_smic_flags(smic) == 0xff)
  return 1;

 return 0;
}
