
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct transfer_request {scalar_t__ state; struct http_pack_request* userData; TYPE_2__* slot; struct transfer_request* next; int url; TYPE_1__* obj; } ;
struct packed_git {int hash; } ;
struct http_pack_request {TYPE_2__* slot; int url; int * lst; } ;
struct TYPE_8__ {int hash; } ;
struct TYPE_7__ {scalar_t__ can_update_info_refs; int packs; int url; } ;
struct TYPE_6__ {struct transfer_request* callback_data; int callback_func; } ;
struct TYPE_5__ {TYPE_4__ oid; } ;


 scalar_t__ RUN_FETCH_PACKED ;
 struct packed_git* find_sha1_pack (int ,int ) ;
 int fprintf (int ,char*,...) ;
 char* hash_to_hex (int ) ;
 struct http_pack_request* new_http_pack_request (struct packed_git*,int ) ;
 char* oid_to_hex (TYPE_4__*) ;
 int process_response ;
 int release_http_pack_request (struct http_pack_request*) ;
 int release_request (struct transfer_request*) ;
 TYPE_3__* repo ;
 struct transfer_request* request_queue_head ;
 int start_active_slot (TYPE_2__*) ;
 int stderr ;
 int strcmp (int ,int ) ;

__attribute__((used)) static void start_fetch_packed(struct transfer_request *request)
{
 struct packed_git *target;

 struct transfer_request *check_request = request_queue_head;
 struct http_pack_request *preq;

 target = find_sha1_pack(request->obj->oid.hash, repo->packs);
 if (!target) {
  fprintf(stderr, "Unable to fetch %s, will not be able to update server info refs\n", oid_to_hex(&request->obj->oid));
  repo->can_update_info_refs = 0;
  release_request(request);
  return;
 }

 fprintf(stderr, "Fetching pack %s\n",
  hash_to_hex(target->hash));
 fprintf(stderr, " which contains %s\n", oid_to_hex(&request->obj->oid));

 preq = new_http_pack_request(target, repo->url);
 if (preq == ((void*)0)) {
  repo->can_update_info_refs = 0;
  return;
 }
 preq->lst = &repo->packs;


 while (check_request) {
  if (check_request->state == RUN_FETCH_PACKED &&
      !strcmp(check_request->url, preq->url)) {
   release_http_pack_request(preq);
   release_request(request);
   return;
  }
  check_request = check_request->next;
 }

 preq->slot->callback_func = process_response;
 preq->slot->callback_data = request;
 request->slot = preq->slot;
 request->userData = preq;


 request->state = RUN_FETCH_PACKED;
 if (!start_active_slot(preq->slot)) {
  fprintf(stderr, "Unable to start GET request\n");
  release_http_pack_request(preq);
  repo->can_update_info_refs = 0;
  release_request(request);
 }
}
