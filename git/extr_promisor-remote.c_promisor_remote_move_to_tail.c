
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct promisor_remote {struct promisor_remote* next; } ;


 struct promisor_remote* promisors ;
 struct promisor_remote** promisors_tail ;

__attribute__((used)) static void promisor_remote_move_to_tail(struct promisor_remote *r,
      struct promisor_remote *previous)
{
 if (r->next == ((void*)0))
  return;

 if (previous)
  previous->next = r->next;
 else
  promisors = r->next ? r->next : r;
 r->next = ((void*)0);
 *promisors_tail = r;
 promisors_tail = &r->next;
}
