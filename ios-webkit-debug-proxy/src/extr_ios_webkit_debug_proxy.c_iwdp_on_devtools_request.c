
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef TYPE_2__* ws_t ;
typedef int ws_status ;
typedef TYPE_3__* iwdp_iws_t ;
typedef TYPE_4__* iwdp_iwi_t ;
typedef int * iwdp_ipage_t ;
struct TYPE_12__ {int max_page_num; int page_num_to_ipage; } ;
struct TYPE_11__ {TYPE_1__* iport; } ;
struct TYPE_10__ {int (* on_error ) (TYPE_2__*,char*,char const*) ;int state; } ;
struct TYPE_9__ {TYPE_4__* iwi; } ;


 int HT_KEY (int) ;
 scalar_t__ ht_get_value (int ,int ) ;
 int iwdp_on_not_found (TYPE_2__*,int,char const*,char*) ;
 int iwdp_start_devtools (int *,TYPE_3__*) ;
 scalar_t__ strncmp (char const*,char*,int) ;
 int strtol (char const*,char**,int ) ;
 int stub1 (TYPE_2__*,char*,char const*) ;

ws_status iwdp_on_devtools_request(ws_t ws, const char *resource) {
  iwdp_iws_t iws = (iwdp_iws_t)ws->state;
  if (!resource || strncmp(resource, "/devtools/page/", 15)) {
    return ws->on_error(ws, "Internal error: %s", resource);
  }

  const char *s = resource + 15;
  char *end = ((void*)0);
  int page_num = strtol(s, &end, 0);
  if (*end != '\0' || *s == '\0') {
    page_num = -1;
  }

  iwdp_iwi_t iwi = iws->iport->iwi;
  iwdp_ipage_t p =
    (iwi && page_num > 0 && page_num <= iwi->max_page_num ?
     (iwdp_ipage_t)ht_get_value(iwi->page_num_to_ipage,
       HT_KEY(page_num)) : ((void*)0));
  if (!p) {
    return iwdp_on_not_found(ws, 0, resource, "Unknown page id");
  }
  return iwdp_start_devtools(p, iws);
}
