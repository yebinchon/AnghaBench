
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct object_request {int dummy; } ;


 int release_object_request (struct object_request*) ;

__attribute__((used)) static void abort_object_request(struct object_request *obj_req)
{
 release_object_request(obj_req);
}
