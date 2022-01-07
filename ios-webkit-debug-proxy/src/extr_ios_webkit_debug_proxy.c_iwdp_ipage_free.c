
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct iwdp_ipage_struct {int dummy; } ;
typedef TYPE_1__* iwdp_ipage_t ;
struct TYPE_5__ {struct TYPE_5__* sender_id; struct TYPE_5__* url; struct TYPE_5__* title; struct TYPE_5__* connection_id; struct TYPE_5__* app_id; } ;


 int free (TYPE_1__*) ;
 int memset (TYPE_1__*,int ,int) ;

void iwdp_ipage_free(iwdp_ipage_t ipage) {
  if (ipage) {
    free(ipage->app_id);
    free(ipage->connection_id);
    free(ipage->title);
    free(ipage->url);
    free(ipage->sender_id);
    memset(ipage, 0, sizeof(struct iwdp_ipage_struct));
    free(ipage);
  }
}
