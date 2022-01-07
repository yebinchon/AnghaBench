
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct jbusmc_obp_mem_layout {char** dimm_labels; } ;
struct jbusmc_dimm_group {int index; struct jbusmc* controller; } ;
struct jbusmc {struct jbusmc_obp_mem_layout layout; } ;


 int JB_NUM_DIMMS_PER_GROUP ;
 int SYNDROME_MAX ;
 int SYNDROME_MIN ;
 int get_pin_and_dimm_str (int,unsigned long,int*,char**,struct jbusmc_obp_mem_layout*,int) ;
 struct jbusmc_dimm_group* jbusmc_find_dimm_group (unsigned long) ;
 int sprintf (char*,char*,char*,...) ;
 int strlen (char*) ;

__attribute__((used)) static int jbusmc_print_dimm(int syndrome_code,
        unsigned long phys_addr,
        char *buf, int buflen)
{
 struct jbusmc_obp_mem_layout *prop;
 struct jbusmc_dimm_group *dp;
 struct jbusmc *p;
 int first_dimm;

 dp = jbusmc_find_dimm_group(phys_addr);
 if (dp == ((void*)0) ||
     syndrome_code < SYNDROME_MIN ||
     syndrome_code > SYNDROME_MAX) {
  buf[0] = '?';
  buf[1] = '?';
  buf[2] = '?';
  buf[3] = '\0';
  return 0;
 }
 p = dp->controller;
 prop = &p->layout;

 first_dimm = dp->index * JB_NUM_DIMMS_PER_GROUP;

 if (syndrome_code != SYNDROME_MIN) {
  char *dimm_str;
  int pin;

  get_pin_and_dimm_str(syndrome_code, phys_addr, &pin,
         &dimm_str, prop, first_dimm);
  sprintf(buf, "%s, pin %3d", dimm_str, pin);
 } else {
  int dimm;




  for (dimm = 0; dimm < JB_NUM_DIMMS_PER_GROUP; dimm++) {
   sprintf(buf, "%s ",
    prop->dimm_labels[first_dimm + dimm]);
   buf += strlen(buf);
  }
 }

 return 0;
}
