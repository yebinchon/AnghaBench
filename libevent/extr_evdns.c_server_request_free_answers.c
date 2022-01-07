
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct server_request {struct server_reply_item* additional; struct server_reply_item* authority; struct server_reply_item* answer; } ;
struct server_reply_item {struct server_reply_item* data; struct server_reply_item* name; struct server_reply_item* next; } ;


 int mm_free (struct server_reply_item*) ;

__attribute__((used)) static void
server_request_free_answers(struct server_request *req)
{
 struct server_reply_item *victim, *next, **list;
 int i;
 for (i = 0; i < 3; ++i) {
  if (i==0)
   list = &req->answer;
  else if (i==1)
   list = &req->authority;
  else
   list = &req->additional;

  victim = *list;
  while (victim) {
   next = victim->next;
   mm_free(victim->name);
   if (victim->data)
    mm_free(victim->data);
   mm_free(victim);
   victim = next;
  }
  *list = ((void*)0);
 }
}
