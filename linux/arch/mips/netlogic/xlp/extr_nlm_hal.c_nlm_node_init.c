
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nlm_soc_info {int coremask; int ebase; int piclock; scalar_t__ socbus; int picbase; int sysbase; } ;


 int MIPS_EBASE_BASE ;
 scalar_t__ cpu_is_xlp9xx () ;
 struct nlm_soc_info* nlm_get_node (int) ;
 int nlm_get_pic_regbase (int) ;
 int nlm_get_sys_regbase (int) ;
 int read_c0_ebase () ;
 int spin_lock_init (int *) ;
 scalar_t__ xlp9xx_get_socbus (int) ;

void nlm_node_init(int node)
{
 struct nlm_soc_info *nodep;

 nodep = nlm_get_node(node);
 if (node == 0)
  nodep->coremask = 1;
 nodep->sysbase = nlm_get_sys_regbase(node);
 nodep->picbase = nlm_get_pic_regbase(node);
 nodep->ebase = read_c0_ebase() & MIPS_EBASE_BASE;
 if (cpu_is_xlp9xx())
  nodep->socbus = xlp9xx_get_socbus(node);
 else
  nodep->socbus = 0;
 spin_lock_init(&nodep->piclock);
}
