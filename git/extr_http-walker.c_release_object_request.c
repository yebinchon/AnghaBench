
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct object_request {int node; TYPE_1__* req; } ;
struct TYPE_2__ {int localfile; } ;


 int error (char*,int) ;
 int free (struct object_request*) ;
 int list_del (int *) ;

__attribute__((used)) static void release_object_request(struct object_request *obj_req)
{
 if (obj_req->req !=((void*)0) && obj_req->req->localfile != -1)
  error("fd leakage in release: %d", obj_req->req->localfile);

 list_del(&obj_req->node);
 free(obj_req);
}
