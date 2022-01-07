
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct transfer_request {struct transfer_request* url; struct transfer_request* next; } ;


 int free (struct transfer_request*) ;
 struct transfer_request* request_queue_head ;

__attribute__((used)) static void release_request(struct transfer_request *request)
{
 struct transfer_request *entry = request_queue_head;

 if (request == request_queue_head) {
  request_queue_head = request->next;
 } else {
  while (entry && entry->next != request)
   entry = entry->next;
  if (entry)
   entry->next = request->next;
 }

 free(request->url);
 free(request);
}
