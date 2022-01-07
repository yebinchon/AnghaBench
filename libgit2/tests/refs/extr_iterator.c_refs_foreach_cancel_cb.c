
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_reference ;


 int git_reference_free (int *) ;

__attribute__((used)) static int refs_foreach_cancel_cb(git_reference *reference, void *payload)
{
 int *cancel_after = payload;

 git_reference_free(reference);

 if (!*cancel_after)
  return -333;
 (*cancel_after)--;
 return 0;
}
