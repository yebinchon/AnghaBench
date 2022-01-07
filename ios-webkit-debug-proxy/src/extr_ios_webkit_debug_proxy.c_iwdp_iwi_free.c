
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct iwdp_iwi_struct {int dummy; } ;
typedef TYPE_1__* iwdp_iwi_t ;
struct TYPE_5__ {int page_num_to_ipage; int app_id_to_true; struct TYPE_5__* connection_id; int app; int rpc; int wi; } ;


 int free (TYPE_1__*) ;
 int ht_free (int ) ;
 int memset (TYPE_1__*,int ,int) ;
 int rpc_free (int ) ;
 int rpc_free_app (int ) ;
 int wi_free (int ) ;

void iwdp_iwi_free(iwdp_iwi_t iwi) {
  if (iwi) {
    wi_free(iwi->wi);
    rpc_free(iwi->rpc);
    rpc_free_app(iwi->app);

    free(iwi->connection_id);
    ht_free(iwi->app_id_to_true);
    ht_free(iwi->page_num_to_ipage);
    memset(iwi, 0, sizeof(struct iwdp_iwi_struct));
    free(iwi);
  }
}
