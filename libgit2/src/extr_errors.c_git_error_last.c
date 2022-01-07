
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int git_error ;
struct TYPE_2__ {int const* last_error; } ;


 TYPE_1__* GIT_GLOBAL ;

const git_error *git_error_last(void)
{
 return GIT_GLOBAL->last_error;
}
