
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct forth_request {struct forth_request* next; } ;


 int forth_request_unload_prog (struct forth_request*) ;
 int tlist_remove (struct forth_request*,struct forth_request*) ;
 struct forth_request with_output_free_list ;
 struct forth_request without_output_free_list ;

__attribute__((used)) static struct forth_request *queue_poll () {
  struct forth_request *E = without_output_free_list.next;
  if (E == &without_output_free_list) {
    E = with_output_free_list.next;
    if (E == &with_output_free_list) {
      return ((void*)0);
    }
    forth_request_unload_prog (E);
  }
  tlist_remove (&without_output_free_list, E);
  return E;
}
