
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ghes {int dummy; } ;


 int CONFIG_ARM_SDE_INTERFACE ;
 int EOPNOTSUPP ;
 int IS_ENABLED (int ) ;
 int sdei_unregister_ghes (struct ghes*) ;

__attribute__((used)) static int apei_sdei_unregister_ghes(struct ghes *ghes)
{
 if (!IS_ENABLED(CONFIG_ARM_SDE_INTERFACE))
  return -EOPNOTSUPP;

 return sdei_unregister_ghes(ghes);
}
