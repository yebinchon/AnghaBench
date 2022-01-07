
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef enum smca_bank_types { ____Placeholder_smca_bank_types } smca_bank_types ;
struct TYPE_2__ {char const* name; } ;


 int N_SMCA_BANK_TYPES ;
 TYPE_1__* smca_names ;

__attribute__((used)) static const char *smca_get_name(enum smca_bank_types t)
{
 if (t >= N_SMCA_BANK_TYPES)
  return ((void*)0);

 return smca_names[t].name;
}
