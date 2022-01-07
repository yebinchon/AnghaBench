
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct transfer_request {struct transfer_request* next; int state; int * headers; struct remote_lock* lock; int * url; struct object* obj; } ;
struct remote_lock {int dummy; } ;
struct packed_git {int dummy; } ;
struct TYPE_3__ {size_t* hash; } ;
struct object {int flags; TYPE_1__ oid; } ;
struct TYPE_4__ {int packs; } ;


 int NEED_PUSH ;
 int PUSHING ;
 int REMOTE ;
 int check_locks () ;
 int fill_active_slots () ;
 struct packed_git* find_sha1_pack (size_t*,int ) ;
 int get_remote_object_list (size_t) ;
 int* remote_dir_exists ;
 TYPE_2__* repo ;
 struct transfer_request* request_queue_head ;
 int step_active_slots () ;
 struct transfer_request* xmalloc (int) ;

__attribute__((used)) static int add_send_request(struct object *obj, struct remote_lock *lock)
{
 struct transfer_request *request;
 struct packed_git *target;


 check_locks();





 if (remote_dir_exists[obj->oid.hash[0]] == -1)
  get_remote_object_list(obj->oid.hash[0]);
 if (obj->flags & (REMOTE | PUSHING))
  return 0;
 target = find_sha1_pack(obj->oid.hash, repo->packs);
 if (target) {
  obj->flags |= REMOTE;
  return 0;
 }

 obj->flags |= PUSHING;
 request = xmalloc(sizeof(*request));
 request->obj = obj;
 request->url = ((void*)0);
 request->lock = lock;
 request->headers = ((void*)0);
 request->state = NEED_PUSH;
 request->next = request_queue_head;
 request_queue_head = request;






 return 1;
}
