
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int plpar_int_reset (int ) ;

__attribute__((used)) static void xive_spapr_shutdown(void)
{
 plpar_int_reset(0);
}
