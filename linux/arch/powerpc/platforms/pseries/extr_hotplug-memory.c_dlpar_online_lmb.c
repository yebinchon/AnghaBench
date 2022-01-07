
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drmem_lmb {int dummy; } ;


 int dlpar_change_lmb_state (struct drmem_lmb*,int) ;

__attribute__((used)) static int dlpar_online_lmb(struct drmem_lmb *lmb)
{
 return dlpar_change_lmb_state(lmb, 1);
}
