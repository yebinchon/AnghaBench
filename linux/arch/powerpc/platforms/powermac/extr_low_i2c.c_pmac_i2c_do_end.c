
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pmf_function {int dummy; } ;
struct pmac_i2c_pf_inst {int bus; } ;


 int kfree (struct pmac_i2c_pf_inst*) ;
 int pmac_i2c_close (int ) ;

__attribute__((used)) static void pmac_i2c_do_end(struct pmf_function *func, void *instdata)
{
 struct pmac_i2c_pf_inst *inst = instdata;

 if (inst == ((void*)0))
  return;
 pmac_i2c_close(inst->bus);
 kfree(inst);
}
