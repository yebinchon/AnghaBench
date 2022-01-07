
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct object_request {int oid; int walker; TYPE_1__* req; } ;
struct TYPE_2__ {scalar_t__ rename; } ;


 scalar_t__ finish_http_object_request (TYPE_1__*) ;
 int oid_to_hex (int *) ;
 int walker_say (int ,char*,int ) ;

__attribute__((used)) static void finish_object_request(struct object_request *obj_req)
{
 if (finish_http_object_request(obj_req->req))
  return;

 if (obj_req->req->rename == 0)
  walker_say(obj_req->walker, "got %s\n", oid_to_hex(&obj_req->oid));
}
