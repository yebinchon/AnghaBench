
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_iterator ;


 int assert (int) ;
 int iterator__has_been_accessed (int *) ;
 int iterator_set_ignore_case (int *,int) ;

void git_iterator_set_ignore_case(git_iterator *i, bool ignore_case)
{
 assert(!iterator__has_been_accessed(i));
 iterator_set_ignore_case(i, ignore_case);
}
