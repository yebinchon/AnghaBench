
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct forth_request {scalar_t__ size; int * prog; } ;


 int all_results_memory ;
 int free (int *) ;
 int results_unload_bytes ;
 int unloaded_results ;

__attribute__((used)) static void forth_request_free_prog (struct forth_request *E) {
  if (E->prog != ((void*)0)) {
    unloaded_results++;
    results_unload_bytes += E->size + 1;
    all_results_memory -= E->size + 1;
    free (E->prog);
    E->prog = ((void*)0);
    E->size = 0;
  }
}
