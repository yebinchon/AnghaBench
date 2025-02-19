
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct chmc_obp_mem_layout {char** dimm_labels; } ;
struct chmc_bank_info {int bank_id; TYPE_1__* p; } ;
struct TYPE_2__ {struct chmc_obp_mem_layout layout_prop; } ;


 int CHMCTRL_NBANKS ;
 int CHMCTRL_NDGRPS ;
 int CHMCTRL_NDIMMS ;
 int SYNDROME_MAX ;
 int SYNDROME_MIN ;
 struct chmc_bank_info* chmc_find_bank (unsigned long) ;
 int get_pin_and_dimm_str (int,unsigned long,int*,char**,struct chmc_obp_mem_layout*,int) ;
 int sprintf (char*,char*,char*,...) ;
 int strlen (char*) ;

__attribute__((used)) static int chmc_print_dimm(int syndrome_code,
      unsigned long phys_addr,
      char *buf, int buflen)
{
 struct chmc_bank_info *bp;
 struct chmc_obp_mem_layout *prop;
 int bank_in_controller, first_dimm;

 bp = chmc_find_bank(phys_addr);
 if (bp == ((void*)0) ||
     syndrome_code < SYNDROME_MIN ||
     syndrome_code > SYNDROME_MAX) {
  buf[0] = '?';
  buf[1] = '?';
  buf[2] = '?';
  buf[3] = '\0';
  return 0;
 }

 prop = &bp->p->layout_prop;
 bank_in_controller = bp->bank_id & (CHMCTRL_NBANKS - 1);
 first_dimm = (bank_in_controller & (CHMCTRL_NDGRPS - 1));
 first_dimm *= CHMCTRL_NDIMMS;

 if (syndrome_code != SYNDROME_MIN) {
  char *dimm_str;
  int pin;

  get_pin_and_dimm_str(syndrome_code, phys_addr, &pin,
         &dimm_str, prop, first_dimm);
  sprintf(buf, "%s, pin %3d", dimm_str, pin);
 } else {
  int dimm;




  for (dimm = 0; dimm < CHMCTRL_NDIMMS; dimm++) {
   sprintf(buf, "%s ",
    prop->dimm_labels[first_dimm + dimm]);
   buf += strlen(buf);
  }
 }
 return 0;
}
