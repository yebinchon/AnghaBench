
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct transfer_request {scalar_t__ curl_result; int http_code; scalar_t__ state; char* url; scalar_t__ userData; TYPE_2__* obj; int * headers; TYPE_1__* slot; } ;
struct http_pack_request {int dummy; } ;
struct http_object_request {scalar_t__ rename; } ;
struct TYPE_8__ {size_t* hash; } ;
struct TYPE_7__ {scalar_t__ can_update_info_refs; } ;
struct TYPE_6__ {int flags; TYPE_4__ oid; } ;
struct TYPE_5__ {scalar_t__ curl_result; int http_code; } ;


 void* ABORTED ;
 scalar_t__ CURLE_OK ;
 int FREE_AND_NULL (char*) ;
 int LOCAL ;
 int REMOTE ;
 scalar_t__ RUN_FETCH_LOOSE ;
 scalar_t__ RUN_FETCH_PACKED ;
 scalar_t__ RUN_MKCOL ;
 scalar_t__ RUN_MOVE ;
 scalar_t__ RUN_PUT ;
 int aborted ;
 int check_locks () ;
 char* curl_errorstr ;
 int curl_slist_free_all (int *) ;
 scalar_t__ finish_http_object_request (struct http_object_request*) ;
 scalar_t__ finish_http_pack_request (struct http_pack_request*) ;
 int fprintf (int ,char*,char*,...) ;
 char* oid_to_hex (TYPE_4__*) ;
 scalar_t__ push_verbosely ;
 int release_http_object_request (struct http_object_request*) ;
 int release_http_pack_request (struct http_pack_request*) ;
 int release_request (struct transfer_request*) ;
 int* remote_dir_exists ;
 TYPE_3__* repo ;
 int start_fetch_packed (struct transfer_request*) ;
 int start_move (struct transfer_request*) ;
 int start_put (struct transfer_request*) ;
 int stderr ;

__attribute__((used)) static void finish_request(struct transfer_request *request)
{
 struct http_pack_request *preq;
 struct http_object_request *obj_req;

 request->curl_result = request->slot->curl_result;
 request->http_code = request->slot->http_code;
 request->slot = ((void*)0);


 check_locks();

 if (request->headers != ((void*)0))
  curl_slist_free_all(request->headers);


 if (request->state != RUN_PUT && request->state != RUN_FETCH_PACKED) {
  FREE_AND_NULL(request->url);
 }

 if (request->state == RUN_MKCOL) {
  if (request->curl_result == CURLE_OK ||
      request->http_code == 405) {
   remote_dir_exists[request->obj->oid.hash[0]] = 1;
   start_put(request);
  } else {
   fprintf(stderr, "MKCOL %s failed, aborting (%d/%ld)\n",
    oid_to_hex(&request->obj->oid),
    request->curl_result, request->http_code);
   request->state = ABORTED;
   aborted = 1;
  }
 } else if (request->state == RUN_PUT) {
  if (request->curl_result == CURLE_OK) {
   start_move(request);
  } else {
   fprintf(stderr, "PUT %s failed, aborting (%d/%ld)\n",
    oid_to_hex(&request->obj->oid),
    request->curl_result, request->http_code);
   request->state = ABORTED;
   aborted = 1;
  }
 } else if (request->state == RUN_MOVE) {
  if (request->curl_result == CURLE_OK) {
   if (push_verbosely)
    fprintf(stderr, "    sent %s\n",
     oid_to_hex(&request->obj->oid));
   request->obj->flags |= REMOTE;
   release_request(request);
  } else {
   fprintf(stderr, "MOVE %s failed, aborting (%d/%ld)\n",
    oid_to_hex(&request->obj->oid),
    request->curl_result, request->http_code);
   request->state = ABORTED;
   aborted = 1;
  }
 } else if (request->state == RUN_FETCH_LOOSE) {
  obj_req = (struct http_object_request *)request->userData;

  if (finish_http_object_request(obj_req) == 0)
   if (obj_req->rename == 0)
    request->obj->flags |= (LOCAL | REMOTE);


  if (request->obj->flags & LOCAL) {
   release_http_object_request(obj_req);
   release_request(request);
  } else
   start_fetch_packed(request);

 } else if (request->state == RUN_FETCH_PACKED) {
  int fail = 1;
  if (request->curl_result != CURLE_OK) {
   fprintf(stderr, "Unable to get pack file %s\n%s",
    request->url, curl_errorstr);
  } else {
   preq = (struct http_pack_request *)request->userData;

   if (preq) {
    if (finish_http_pack_request(preq) == 0)
     fail = 0;
    release_http_pack_request(preq);
   }
  }
  if (fail)
   repo->can_update_info_refs = 0;
  release_request(request);
 }
}
