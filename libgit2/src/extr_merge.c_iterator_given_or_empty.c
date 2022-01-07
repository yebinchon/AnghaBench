
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int flags; } ;
typedef TYPE_1__ git_iterator_options ;
typedef int git_iterator ;


 int GIT_ITERATOR_DONT_IGNORE_CASE ;
 TYPE_1__ GIT_ITERATOR_OPTIONS_INIT ;
 scalar_t__ git_iterator_for_nothing (int **,TYPE_1__*) ;

__attribute__((used)) static git_iterator *iterator_given_or_empty(git_iterator **empty, git_iterator *given)
{
 git_iterator_options opts = GIT_ITERATOR_OPTIONS_INIT;

 if (given)
  return given;

 opts.flags = GIT_ITERATOR_DONT_IGNORE_CASE;

 if (git_iterator_for_nothing(empty, &opts) < 0)
  return ((void*)0);

 return *empty;
}
