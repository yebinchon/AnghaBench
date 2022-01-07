
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int count; } ;
typedef TYPE_1__ sm_lookup_data ;
typedef int git_submodule ;


 int cl_assert_equal_s (int ,char const*) ;
 int git_submodule_name (int *) ;

__attribute__((used)) static int sm_lookup_cb(git_submodule *sm, const char *name, void *payload)
{
 sm_lookup_data *data = payload;
 data->count += 1;
 cl_assert_equal_s(git_submodule_name(sm), name);
 return 0;
}
