
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int ended; int * start; int started; int * end; void* end_len; void* start_len; } ;
typedef TYPE_1__ git_iterator ;


 int GIT_ERROR_CHECK_ALLOC (int *) ;
 void* git__strdup (char const*) ;
 void* strlen (int *) ;

__attribute__((used)) static int iterator_range_init(
 git_iterator *iter, const char *start, const char *end)
{
 if (start && *start) {
  iter->start = git__strdup(start);
  GIT_ERROR_CHECK_ALLOC(iter->start);

  iter->start_len = strlen(iter->start);
 }

 if (end && *end) {
  iter->end = git__strdup(end);
  GIT_ERROR_CHECK_ALLOC(iter->end);

  iter->end_len = strlen(iter->end);
 }

 iter->started = (iter->start == ((void*)0));
 iter->ended = 0;

 return 0;
}
