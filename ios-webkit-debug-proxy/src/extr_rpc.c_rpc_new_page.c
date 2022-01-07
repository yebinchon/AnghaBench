
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rpc_page_struct {int dummy; } ;
typedef scalar_t__ rpc_page_t ;


 int malloc (int) ;
 int memset (scalar_t__,int ,int) ;

rpc_page_t rpc_new_page() {
  rpc_page_t page = (rpc_page_t)malloc(sizeof(struct rpc_page_struct));
  if (page) {
    memset(page, 0, sizeof(struct rpc_page_struct));
  }
  return page;
}
