
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct walker {int dummy; } ;
struct object_request {void* state; struct http_object_request* req; int oid; TYPE_1__* repo; } ;
struct http_object_request {struct active_request_slot* slot; } ;
struct active_request_slot {struct object_request* callback_data; int callback_func; } ;
struct TYPE_2__ {int base; } ;


 void* ABORTED ;
 void* ACTIVE ;
 struct http_object_request* new_http_object_request (int ,int *) ;
 int process_object_response ;
 int release_http_object_request (struct http_object_request*) ;
 int start_active_slot (struct active_request_slot*) ;

__attribute__((used)) static void start_object_request(struct walker *walker,
     struct object_request *obj_req)
{
 struct active_request_slot *slot;
 struct http_object_request *req;

 req = new_http_object_request(obj_req->repo->base, &obj_req->oid);
 if (req == ((void*)0)) {
  obj_req->state = ABORTED;
  return;
 }
 obj_req->req = req;

 slot = req->slot;
 slot->callback_func = process_object_response;
 slot->callback_data = obj_req;


 obj_req->state = ACTIVE;
 if (!start_active_slot(slot)) {
  obj_req->state = ABORTED;
  release_http_object_request(req);
  return;
 }
}
