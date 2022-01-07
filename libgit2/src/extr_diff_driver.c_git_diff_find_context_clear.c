
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * driver; int line; } ;
typedef TYPE_1__ git_diff_find_context_payload ;


 int git_buf_dispose (int *) ;

void git_diff_find_context_clear(git_diff_find_context_payload *payload)
{
 if (payload) {
  git_buf_dispose(&payload->line);
  payload->driver = ((void*)0);
 }
}
