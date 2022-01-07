
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int git_hashsig_option_t ;
struct TYPE_4__ {int opt; int maxs; int mins; } ;
typedef TYPE_1__ git_hashsig ;


 TYPE_1__* git__calloc (int,int) ;
 int hashsig_cmp_max ;
 int hashsig_cmp_min ;
 int hashsig_heap_init (int *,int ) ;

__attribute__((used)) static git_hashsig *hashsig_alloc(git_hashsig_option_t opts)
{
 git_hashsig *sig = git__calloc(1, sizeof(git_hashsig));
 if (!sig)
  return ((void*)0);

 hashsig_heap_init(&sig->mins, hashsig_cmp_min);
 hashsig_heap_init(&sig->maxs, hashsig_cmp_max);
 sig->opt = opts;

 return sig;
}
