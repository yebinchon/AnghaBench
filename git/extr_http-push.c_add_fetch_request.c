
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct transfer_request {struct transfer_request* next; int state; int * headers; int * lock; int * url; struct object* obj; } ;
struct TYPE_2__ {size_t* hash; } ;
struct object {int flags; TYPE_1__ oid; } ;


 int FETCHING ;
 int LOCAL ;
 int NEED_FETCH ;
 int check_locks () ;
 int fill_active_slots () ;
 int get_remote_object_list (size_t) ;
 int* remote_dir_exists ;
 struct transfer_request* request_queue_head ;
 int step_active_slots () ;
 struct transfer_request* xmalloc (int) ;

__attribute__((used)) static void add_fetch_request(struct object *obj)
{
 struct transfer_request *request;

 check_locks();





 if (remote_dir_exists[obj->oid.hash[0]] == -1)
  get_remote_object_list(obj->oid.hash[0]);
 if (obj->flags & (LOCAL | FETCHING))
  return;

 obj->flags |= FETCHING;
 request = xmalloc(sizeof(*request));
 request->obj = obj;
 request->url = ((void*)0);
 request->lock = ((void*)0);
 request->headers = ((void*)0);
 request->state = NEED_FETCH;
 request->next = request_queue_head;
 request_queue_head = request;





}
