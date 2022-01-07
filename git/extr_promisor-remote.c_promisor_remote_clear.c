
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct promisor_remote {struct promisor_remote* next; } ;


 int free (struct promisor_remote*) ;
 struct promisor_remote* promisors ;
 struct promisor_remote** promisors_tail ;

__attribute__((used)) static void promisor_remote_clear(void)
{
 while (promisors) {
  struct promisor_remote *r = promisors;
  promisors = promisors->next;
  free(r);
 }

 promisors_tail = &promisors;
}
