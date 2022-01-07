
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ end_len; int * end; scalar_t__ start_len; int * start; } ;
typedef TYPE_1__ git_iterator ;


 int git__free (int *) ;

__attribute__((used)) static void iterator_range_free(git_iterator *iter)
{
 if (iter->start) {
  git__free(iter->start);
  iter->start = ((void*)0);
  iter->start_len = 0;
 }

 if (iter->end) {
  git__free(iter->end);
  iter->end = ((void*)0);
  iter->end_len = 0;
 }
}
