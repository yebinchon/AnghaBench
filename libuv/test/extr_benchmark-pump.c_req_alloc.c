
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uv_req_t ;
struct TYPE_3__ {struct TYPE_3__* next; } ;
typedef TYPE_1__ req_list_t ;


 scalar_t__ malloc (int) ;
 TYPE_1__* req_freelist ;

__attribute__((used)) static uv_req_t* req_alloc(void) {
  req_list_t* req;

  req = req_freelist;
  if (req != ((void*)0)) {
    req_freelist = req->next;
    return (uv_req_t*) req;
  }

  req = (req_list_t*) malloc(sizeof *req);
  return (uv_req_t*) req;
}
