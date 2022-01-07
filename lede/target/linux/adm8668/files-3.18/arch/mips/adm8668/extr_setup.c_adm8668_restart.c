
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ADM8668_CONFIG_REG ;



__attribute__((used)) static void adm8668_restart(char *cmd)
{
 int i;


 for (i = 0; i < 1000; i++)
  ;
 ADM8668_CONFIG_REG(ADM8668_CR1) = 1;
}
