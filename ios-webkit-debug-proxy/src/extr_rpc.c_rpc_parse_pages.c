
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int rpc_status ;
typedef TYPE_1__* rpc_page_t ;
typedef int * plist_t ;
typedef char* plist_dict_iter ;
struct TYPE_5__ {scalar_t__ page_id; } ;


 scalar_t__ PLIST_DICT ;
 int RPC_ERROR ;
 int RPC_SUCCESS ;
 scalar_t__ calloc (size_t,int) ;
 int free (char*) ;
 size_t plist_dict_get_size (int * const) ;
 int plist_dict_new_iter (int * const,char**) ;
 int plist_dict_next_item (int * const,char*,char**,int **) ;
 scalar_t__ plist_get_node_type (int * const) ;
 int rpc_free_pages (TYPE_1__**) ;
 int rpc_parse_page (int *,TYPE_1__**) ;
 scalar_t__ strtol (char*,int *,int ) ;

rpc_status rpc_parse_pages(const plist_t node, rpc_page_t **to_pages) {
  if (!node || !to_pages ||
      plist_get_node_type(node) != PLIST_DICT) {
    return RPC_ERROR;
  }

  *to_pages = ((void*)0);
  size_t length = plist_dict_get_size(node);
  rpc_page_t *pages = (rpc_page_t *)calloc(length + 1, sizeof(rpc_page_t));
  if (!pages) {
    return RPC_ERROR;
  }
  plist_dict_iter iter = ((void*)0);
  plist_dict_new_iter(node, &iter);
  int is_ok = (iter != ((void*)0));
  size_t i;
  for (i = 0; i < length && is_ok; i++) {
    char *key = ((void*)0);
    plist_t value = ((void*)0);
    plist_dict_next_item(node, iter, &key, &value);
    rpc_page_t page = ((void*)0);
    is_ok = (key && !rpc_parse_page(value, &page) &&
        page->page_id == strtol(key, ((void*)0), 0));
    pages[i] = page;
    free(key);
  }
  free(iter);
  if (!is_ok) {
    rpc_free_pages(pages);
    return RPC_ERROR;
  }
  *to_pages = pages;
  return RPC_SUCCESS;
}
