
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct untracked_cache {int root; } ;


 int free (struct untracked_cache*) ;
 int free_untracked (int ) ;

void free_untracked_cache(struct untracked_cache *uc)
{
 if (uc)
  free_untracked(uc->root);
 free(uc);
}
