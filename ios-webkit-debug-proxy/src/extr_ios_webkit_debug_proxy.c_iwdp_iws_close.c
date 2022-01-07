
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_5__ ;
typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef TYPE_1__* iwdp_t ;
typedef int iwdp_status ;
typedef TYPE_2__* iwdp_iws_t ;
typedef TYPE_3__* iwdp_iport_t ;
typedef TYPE_4__* iwdp_ipage_t ;
typedef TYPE_5__* iwdp_ifs_t ;
typedef int ht_t ;
struct TYPE_15__ {scalar_t__ fs_fd; int * iws; } ;
struct TYPE_14__ {TYPE_2__* iws; scalar_t__ sender_id; } ;
struct TYPE_13__ {int ws_id_to_iws; } ;
struct TYPE_12__ {char* ws_id; TYPE_5__* ifs; TYPE_3__* iport; TYPE_4__* ipage; } ;
struct TYPE_11__ {int (* remove_fd ) (TYPE_1__*,scalar_t__) ;} ;


 int IWDP_SUCCESS ;
 int ht_get_value (int ,char*) ;
 int ht_remove (int ,char*) ;
 int iwdp_iws_free (TYPE_2__*) ;
 int iwdp_stop_devtools (TYPE_4__*) ;
 int stub1 (TYPE_1__*,scalar_t__) ;

iwdp_status iwdp_iws_close(iwdp_t self, iwdp_iws_t iws) {

  iwdp_ipage_t ipage = iws->ipage;
  if (ipage) {
    if (ipage->sender_id && ipage->iws == iws) {
      iwdp_stop_devtools(ipage);
    }
  }
  iwdp_iport_t iport = iws->iport;
  if (iport) {
    ht_t iws_ht = iport->ws_id_to_iws;
    char *ws_id = iws->ws_id;
    iwdp_iws_t iws2 = (iwdp_iws_t)ht_get_value(iws_ht, ws_id);
    if (ws_id && iws2 == iws) {
      ht_remove(iws_ht, ws_id);
    }
  }
  iwdp_ifs_t ifs = iws->ifs;
  if (ifs) {
    ifs->iws = ((void*)0);
    if (ifs->fs_fd > 0) {
      self->remove_fd(self, ifs->fs_fd);
    }
  }
  iwdp_iws_free(iws);
  return IWDP_SUCCESS;
}
