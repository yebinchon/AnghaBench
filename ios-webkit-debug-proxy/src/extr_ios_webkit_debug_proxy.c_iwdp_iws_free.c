
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct iwdp_iws_struct {int dummy; } ;
typedef TYPE_1__* iwdp_iws_t ;
struct TYPE_5__ {struct TYPE_5__* ws_id; int ws; } ;


 int free (TYPE_1__*) ;
 int memset (TYPE_1__*,int ,int) ;
 int ws_free (int ) ;

void iwdp_iws_free(iwdp_iws_t iws) {
  if (iws) {
    ws_free(iws->ws);
    free(iws->ws_id);
    memset(iws, 0, sizeof(struct iwdp_iws_struct));
    free(iws);
  }
}
