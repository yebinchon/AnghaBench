
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ level; } ;
typedef TYPE_1__ backend_internal ;


 int GIT_EEXISTS ;
 int GIT_ERROR_CONFIG ;
 int GIT_UNUSED (void*) ;
 int git_error_set (int ,char*,int) ;

__attribute__((used)) static int duplicate_level(void **old_raw, void *new_raw)
{
 backend_internal **old = (backend_internal **)old_raw;

 GIT_UNUSED(new_raw);

 git_error_set(GIT_ERROR_CONFIG, "there already exists a configuration for the given level (%i)", (int)(*old)->level);
 return GIT_EEXISTS;
}
