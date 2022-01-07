
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct rpc_page_struct {int dummy; } ;
typedef TYPE_1__* rpc_page_t ;
struct TYPE_5__ {struct TYPE_5__* url; struct TYPE_5__* title; struct TYPE_5__* connection_id; scalar_t__ page_id; } ;


 int free (TYPE_1__*) ;
 int memset (TYPE_1__*,int ,int) ;

void rpc_free_page(rpc_page_t page) {
  if (page) {
    page->page_id = 0;
    free(page->connection_id);
    free(page->title);
    free(page->url);
    memset(page, 0, sizeof(struct rpc_page_struct));
    free(page);
  }
}
