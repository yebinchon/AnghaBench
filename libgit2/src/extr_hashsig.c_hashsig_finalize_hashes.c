
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ size; } ;
struct TYPE_4__ {int opt; TYPE_2__ maxs; TYPE_2__ mins; } ;
typedef TYPE_1__ git_hashsig ;


 int GIT_EBUFS ;
 int GIT_ERROR_INVALID ;
 int GIT_HASHSIG_ALLOW_SMALL_FILES ;
 scalar_t__ HASHSIG_HEAP_MIN_SIZE ;
 int git_error_set (int ,char*) ;
 int hashsig_heap_sort (TYPE_2__*) ;

__attribute__((used)) static int hashsig_finalize_hashes(git_hashsig *sig)
{
 if (sig->mins.size < HASHSIG_HEAP_MIN_SIZE &&
  !(sig->opt & GIT_HASHSIG_ALLOW_SMALL_FILES)) {
  git_error_set(GIT_ERROR_INVALID,
   "file too small for similarity signature calculation");
  return GIT_EBUFS;
 }

 hashsig_heap_sort(&sig->mins);
 hashsig_heap_sort(&sig->maxs);

 return 0;
}
