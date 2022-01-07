
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct forth_request {int * prog; } ;


 int tlist_insert (int *,struct forth_request*) ;
 int with_output_free_list ;
 int without_output_free_list ;

__attribute__((used)) static void queue_add (struct forth_request *E) {
  tlist_insert (E->prog != ((void*)0) ? &with_output_free_list : &without_output_free_list, E);
}
