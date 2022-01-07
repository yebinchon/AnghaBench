
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct forth_request {int * prog; } ;


 int assert (int ) ;
 int forth_request_free_prog (struct forth_request*) ;
 int hash_req_remove (struct forth_request*) ;
 int tlist_insert (int *,struct forth_request*) ;
 int tlist_remove (int *,struct forth_request*) ;
 int with_output_free_list ;
 int without_output_free_list ;

__attribute__((used)) static void forth_request_unload_prog (struct forth_request *E) {
  tlist_remove (&with_output_free_list, E);
  assert (E->prog != ((void*)0));
  forth_request_free_prog (E);
  assert (E->prog == ((void*)0));
  tlist_insert (&without_output_free_list, E);
  hash_req_remove (E);
}
