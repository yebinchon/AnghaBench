
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct iwdp_ifs_struct {int dummy; } ;
typedef TYPE_2__* iwdp_ifs_t ;
struct TYPE_5__ {int type; } ;
struct TYPE_6__ {TYPE_1__ type; } ;


 int TYPE_IFS ;
 int malloc (int) ;
 int memset (TYPE_2__*,int ,int) ;

iwdp_ifs_t iwdp_ifs_new() {
  iwdp_ifs_t ifs = (iwdp_ifs_t)malloc(sizeof(struct iwdp_ifs_struct));
  if (ifs) {
    memset(ifs, 0, sizeof(struct iwdp_ifs_struct));
    ifs->type.type = TYPE_IFS;
  }
  return ifs;
}
