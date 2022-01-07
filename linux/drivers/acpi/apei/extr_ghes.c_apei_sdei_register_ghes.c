
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ghes {int dummy; } ;


 int CONFIG_ARM_SDE_INTERFACE ;
 int EOPNOTSUPP ;
 int IS_ENABLED (int ) ;
 int ghes_sdei_critical_callback ;
 int ghes_sdei_normal_callback ;
 int sdei_register_ghes (struct ghes*,int ,int ) ;

__attribute__((used)) static int apei_sdei_register_ghes(struct ghes *ghes)
{
 if (!IS_ENABLED(CONFIG_ARM_SDE_INTERFACE))
  return -EOPNOTSUPP;

 return sdei_register_ghes(ghes, ghes_sdei_normal_callback,
     ghes_sdei_critical_callback);
}
