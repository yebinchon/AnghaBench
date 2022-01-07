
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct active_request_slot {int in_use; int * curl; int * callback_func; int * callback_data; int * finished; int * results; struct active_request_slot* next; } ;
struct TYPE_2__ {scalar_t__ password; } ;


 int CURLOPT_COOKIEFILE ;
 int CURLOPT_COOKIEJAR ;
 int CURLOPT_CUSTOMREQUEST ;
 int CURLOPT_ERRORBUFFER ;
 int CURLOPT_FAILONERROR ;
 int CURLOPT_FOLLOWLOCATION ;
 int CURLOPT_HTTPAUTH ;
 int CURLOPT_HTTPGET ;
 int CURLOPT_HTTPHEADER ;
 int CURLOPT_IPRESOLVE ;
 int CURLOPT_POSTFIELDS ;
 int CURLOPT_RANGE ;
 int CURLOPT_READFUNCTION ;
 int CURLOPT_UPLOAD ;
 int CURLOPT_WRITEFUNCTION ;
 scalar_t__ HTTP_FOLLOW_ALWAYS ;
 struct active_request_slot* active_queue_head ;
 int active_requests ;
 int curl_cookie_file ;
 int curl_default ;
 int * curl_easy_duphandle (int ) ;
 int curl_easy_setopt (int *,int ,int) ;
 scalar_t__ curl_empty_auth_enabled () ;
 int curl_errorstr ;
 int curl_multi_perform (int ,int*) ;
 scalar_t__ curl_save_cookies ;
 int curl_session_count ;
 int curlm ;
 int * get_curl_handle () ;
 int git_curl_ipresolve ;
 TYPE_1__ http_auth ;
 int http_auth_methods ;
 scalar_t__ http_follow_config ;
 int init_curl_http_auth (int *) ;
 int max_requests ;
 int pragma_header ;
 int process_curl_messages () ;
 struct active_request_slot* xmalloc (int) ;

struct active_request_slot *get_active_slot(void)
{
 struct active_request_slot *slot = active_queue_head;
 struct active_request_slot *newslot;
 while (slot != ((void*)0) && slot->in_use)
  slot = slot->next;

 if (slot == ((void*)0)) {
  newslot = xmalloc(sizeof(*newslot));
  newslot->curl = ((void*)0);
  newslot->in_use = 0;
  newslot->next = ((void*)0);

  slot = active_queue_head;
  if (slot == ((void*)0)) {
   active_queue_head = newslot;
  } else {
   while (slot->next != ((void*)0))
    slot = slot->next;
   slot->next = newslot;
  }
  slot = newslot;
 }

 if (slot->curl == ((void*)0)) {



  slot->curl = curl_easy_duphandle(curl_default);

  curl_session_count++;
 }

 active_requests++;
 slot->in_use = 1;
 slot->results = ((void*)0);
 slot->finished = ((void*)0);
 slot->callback_data = ((void*)0);
 slot->callback_func = ((void*)0);
 curl_easy_setopt(slot->curl, CURLOPT_COOKIEFILE, curl_cookie_file);
 if (curl_save_cookies)
  curl_easy_setopt(slot->curl, CURLOPT_COOKIEJAR, curl_cookie_file);
 curl_easy_setopt(slot->curl, CURLOPT_HTTPHEADER, pragma_header);
 curl_easy_setopt(slot->curl, CURLOPT_ERRORBUFFER, curl_errorstr);
 curl_easy_setopt(slot->curl, CURLOPT_CUSTOMREQUEST, ((void*)0));
 curl_easy_setopt(slot->curl, CURLOPT_READFUNCTION, ((void*)0));
 curl_easy_setopt(slot->curl, CURLOPT_WRITEFUNCTION, ((void*)0));
 curl_easy_setopt(slot->curl, CURLOPT_POSTFIELDS, ((void*)0));
 curl_easy_setopt(slot->curl, CURLOPT_UPLOAD, 0);
 curl_easy_setopt(slot->curl, CURLOPT_HTTPGET, 1);
 curl_easy_setopt(slot->curl, CURLOPT_FAILONERROR, 1);
 curl_easy_setopt(slot->curl, CURLOPT_RANGE, ((void*)0));






 if (http_follow_config == HTTP_FOLLOW_ALWAYS)
  curl_easy_setopt(slot->curl, CURLOPT_FOLLOWLOCATION, 1);
 else
  curl_easy_setopt(slot->curl, CURLOPT_FOLLOWLOCATION, 0);







 if (http_auth.password || curl_empty_auth_enabled())
  init_curl_http_auth(slot->curl);

 return slot;
}
