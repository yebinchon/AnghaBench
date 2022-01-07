
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum cpm_port { ____Placeholder_cpm_port } cpm_port ;


 int CPM_PORTB ;
 int CPM_PORTE ;
 int cpm1_set_pin16 (int,int,int) ;
 int cpm1_set_pin32 (int,int,int) ;

void cpm1_set_pin(enum cpm_port port, int pin, int flags)
{
 if (port == CPM_PORTB || port == CPM_PORTE)
  cpm1_set_pin32(port, pin, flags);
 else
  cpm1_set_pin16(port, pin, flags);
}
