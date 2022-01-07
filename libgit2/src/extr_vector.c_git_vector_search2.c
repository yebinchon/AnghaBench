
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ (* git_vector_cmp ) (void const*,int ) ;
struct TYPE_3__ {size_t length; int * contents; } ;
typedef TYPE_1__ git_vector ;


 int GIT_ENOTFOUND ;
 int assert (int) ;

int git_vector_search2(
 size_t *at_pos, const git_vector *v, git_vector_cmp key_lookup, const void *key)
{
 size_t i;

 assert(v && key && key_lookup);

 for (i = 0; i < v->length; ++i) {
  if (key_lookup(key, v->contents[i]) == 0) {
   if (at_pos)
    *at_pos = i;

   return 0;
  }
 }

 return GIT_ENOTFOUND;
}
