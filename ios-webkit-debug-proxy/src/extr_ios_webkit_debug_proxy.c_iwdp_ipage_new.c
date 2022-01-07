
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iwdp_ipage_struct {int dummy; } ;
typedef scalar_t__ iwdp_ipage_t ;


 int malloc (int) ;
 int memset (scalar_t__,int ,int) ;

iwdp_ipage_t iwdp_ipage_new() {
  iwdp_ipage_t ipage = (iwdp_ipage_t)malloc(sizeof(struct iwdp_ipage_struct));
  if (ipage) {
    memset(ipage, 0, sizeof(struct iwdp_ipage_struct));
  }
  return ipage;
}
