
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sysc {int nr_clocks; char const** clock_roles; } ;


 int SYSC_OPTFCK0 ;
 char** clock_names ;
 int sysc_add_named_clock_from_child (struct sysc*,char const*,char const*) ;

__attribute__((used)) static int sysc_init_ext_opt_clock(struct sysc *ddata, const char *name)
{
 const char *optfck_name;
 int error, index;

 if (ddata->nr_clocks < SYSC_OPTFCK0)
  index = SYSC_OPTFCK0;
 else
  index = ddata->nr_clocks;

 if (name)
  optfck_name = name;
 else
  optfck_name = clock_names[index];

 error = sysc_add_named_clock_from_child(ddata, name, optfck_name);
 if (error)
  return error;

 ddata->clock_roles[index] = optfck_name;
 ddata->nr_clocks++;

 return 0;
}
