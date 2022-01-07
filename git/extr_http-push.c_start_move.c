
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct transfer_request {char* dest; int url; int state; struct active_request_slot* slot; } ;
struct curl_slist {int dummy; } ;
struct active_request_slot {int curl; struct transfer_request* callback_data; int callback_func; } ;


 int ABORTED ;
 int CURLOPT_HTTPHEADER ;
 int DAV_MOVE ;
 int FREE_AND_NULL (int ) ;
 int RUN_MOVE ;
 int curl_easy_setopt (int ,int ,struct curl_slist*) ;
 int curl_setup_http_get (int ,int ,int ) ;
 struct curl_slist* curl_slist_append (struct curl_slist*,char*) ;
 struct active_request_slot* get_active_slot () ;
 struct curl_slist* http_copy_default_headers () ;
 int process_response ;
 scalar_t__ start_active_slot (struct active_request_slot*) ;

__attribute__((used)) static void start_move(struct transfer_request *request)
{
 struct active_request_slot *slot;
 struct curl_slist *dav_headers = http_copy_default_headers();

 slot = get_active_slot();
 slot->callback_func = process_response;
 slot->callback_data = request;
 curl_setup_http_get(slot->curl, request->url, DAV_MOVE);
 dav_headers = curl_slist_append(dav_headers, request->dest);
 dav_headers = curl_slist_append(dav_headers, "Overwrite: T");
 curl_easy_setopt(slot->curl, CURLOPT_HTTPHEADER, dav_headers);

 if (start_active_slot(slot)) {
  request->slot = slot;
  request->state = RUN_MOVE;
 } else {
  request->state = ABORTED;
  FREE_AND_NULL(request->url);
 }
}
