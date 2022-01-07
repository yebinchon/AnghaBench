
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct files_ref_store {int * loose; } ;


 int free_ref_cache (int *) ;

__attribute__((used)) static void clear_loose_ref_cache(struct files_ref_store *refs)
{
 if (refs->loose) {
  free_ref_cache(refs->loose);
  refs->loose = ((void*)0);
 }
}
