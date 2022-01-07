
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct evdns_request {int * search_origname; int * search_state; TYPE_1__* current_req; } ;
struct TYPE_2__ {int base; } ;


 int ASSERT_LOCKED (int ) ;
 int mm_free (int *) ;
 int search_state_decref (int *) ;

__attribute__((used)) static void
search_request_finished(struct evdns_request *const handle) {
 ASSERT_LOCKED(handle->current_req->base);
 if (handle->search_state) {
  search_state_decref(handle->search_state);
  handle->search_state = ((void*)0);
 }
 if (handle->search_origname) {
  mm_free(handle->search_origname);
  handle->search_origname = ((void*)0);
 }
}
