
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dsa_switch {int dummy; } ;


 int NUM_PORTS ;
 int mv88e6063_setup_global (struct dsa_switch*) ;
 int mv88e6063_setup_port (struct dsa_switch*,int) ;
 int mv88e6063_switch_reset (struct dsa_switch*) ;

__attribute__((used)) static int mv88e6063_setup(struct dsa_switch *ds)
{
 int i;
 int ret;

 ret = mv88e6063_switch_reset(ds);
 if (ret < 0)
  return ret;



 ret = mv88e6063_setup_global(ds);
 if (ret < 0)
  return ret;

 for (i = 0; i < NUM_PORTS; i++) {
  ret = mv88e6063_setup_port(ds, i);
  if (ret < 0)
   return ret;
 }

 return 0;
}
