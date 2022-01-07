
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {size_t count; int * strings; } ;
typedef TYPE_1__ git_strarray ;


 int GIT_ERROR_CHECK_ALLOC (int *) ;
 int assert (int) ;
 int * git__calloc (size_t,int) ;
 int git__strdup (int ) ;
 int git_strarray_free (TYPE_1__*) ;
 int memset (TYPE_1__*,int ,int) ;

int git_strarray_copy(git_strarray *tgt, const git_strarray *src)
{
 size_t i;

 assert(tgt && src);

 memset(tgt, 0, sizeof(*tgt));

 if (!src->count)
  return 0;

 tgt->strings = git__calloc(src->count, sizeof(char *));
 GIT_ERROR_CHECK_ALLOC(tgt->strings);

 for (i = 0; i < src->count; ++i) {
  if (!src->strings[i])
   continue;

  tgt->strings[tgt->count] = git__strdup(src->strings[i]);
  if (!tgt->strings[tgt->count]) {
   git_strarray_free(tgt);
   memset(tgt, 0, sizeof(*tgt));
   return -1;
  }

  tgt->count++;
 }

 return 0;
}
