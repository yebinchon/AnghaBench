
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iwdp_ifs_struct {int dummy; } ;
typedef scalar_t__ iwdp_ifs_t ;


 int free (scalar_t__) ;
 int memset (scalar_t__,int ,int) ;

void iwdp_ifs_free(iwdp_ifs_t ifs) {
  if (ifs) {
    memset(ifs, 0, sizeof(struct iwdp_ifs_struct));
    free(ifs);
  }
}
