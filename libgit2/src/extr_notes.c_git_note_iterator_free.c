
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_note_iterator ;


 int git_iterator_free (int *) ;

void git_note_iterator_free(git_note_iterator *it)
{
 if (it == ((void*)0))
  return;

 git_iterator_free(it);
}
