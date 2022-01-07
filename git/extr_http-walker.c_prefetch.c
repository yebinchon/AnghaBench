
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct walker_data {int alt; } ;
struct walker {int get_verbosely; struct walker_data* data; } ;
struct TYPE_2__ {int hash; } ;
struct object_request {int node; int * req; int state; int repo; TYPE_1__ oid; struct walker* walker; } ;


 int WAITING ;
 int fill_active_slots () ;
 int hashcpy (int ,unsigned char*) ;
 int http_is_verbose ;
 int list_add_tail (int *,int *) ;
 int object_queue_head ;
 int step_active_slots () ;
 struct object_request* xmalloc (int) ;

__attribute__((used)) static void prefetch(struct walker *walker, unsigned char *sha1)
{
 struct object_request *newreq;
 struct walker_data *data = walker->data;

 newreq = xmalloc(sizeof(*newreq));
 newreq->walker = walker;
 hashcpy(newreq->oid.hash, sha1);
 newreq->repo = data->alt;
 newreq->state = WAITING;
 newreq->req = ((void*)0);

 http_is_verbose = walker->get_verbosely;
 list_add_tail(&newreq->node, &object_queue_head);





}
