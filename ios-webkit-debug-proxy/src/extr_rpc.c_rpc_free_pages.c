
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ rpc_page_t ;


 int free (scalar_t__*) ;
 int rpc_free_page (int ) ;

void rpc_free_pages(rpc_page_t *pages) {
  if (pages) {
    rpc_page_t *p = pages;
    while (*p) {
      rpc_free_page(*p++);
    }
    free(pages);
  }
}
