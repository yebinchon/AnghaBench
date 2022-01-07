
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct walker_data {struct alt_base* alt; } ;
struct walker {struct walker_data* data; } ;
struct object_request {TYPE_2__* req; TYPE_1__* repo; int state; struct walker* walker; } ;
struct alt_base {int base; } ;
struct TYPE_6__ {int errorstr; int http_code; int curl_result; } ;
struct TYPE_5__ {struct TYPE_5__* next; } ;


 int COMPLETE ;
 int fetch_alternates (struct walker*,int ) ;
 int finish_object_request (struct object_request*) ;
 scalar_t__ missing_target (TYPE_2__*) ;
 int normalize_curl_result (int *,int ,int ,int) ;
 int process_http_object_request (TYPE_2__*) ;
 int release_http_object_request (TYPE_2__*) ;
 int start_object_request (struct walker*,struct object_request*) ;

__attribute__((used)) static void process_object_response(void *callback_data)
{
 struct object_request *obj_req =
  (struct object_request *)callback_data;
 struct walker *walker = obj_req->walker;
 struct walker_data *data = walker->data;
 struct alt_base *alt = data->alt;

 process_http_object_request(obj_req->req);
 obj_req->state = COMPLETE;

 normalize_curl_result(&obj_req->req->curl_result,
         obj_req->req->http_code,
         obj_req->req->errorstr,
         sizeof(obj_req->req->errorstr));


 if (missing_target(obj_req->req)) {
  fetch_alternates(walker, alt->base);
  if (obj_req->repo->next != ((void*)0)) {
   obj_req->repo =
    obj_req->repo->next;
   release_http_object_request(obj_req->req);
   start_object_request(walker, obj_req);
   return;
  }
 }

 finish_object_request(obj_req);
}
