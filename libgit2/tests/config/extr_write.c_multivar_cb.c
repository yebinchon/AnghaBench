
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int value; } ;
typedef TYPE_1__ git_config_entry ;


 int cl_assert_equal_s (int ,char*) ;

__attribute__((used)) static int multivar_cb(const git_config_entry *entry, void *data)
{
 int *n = (int *)data;

 cl_assert_equal_s(entry->value, "newurl");

 (*n)++;

 return 0;
}
