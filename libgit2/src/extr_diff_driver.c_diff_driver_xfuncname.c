
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int value; } ;
typedef TYPE_1__ git_config_entry ;


 int diff_driver_add_patterns (void*,int ,int ) ;

__attribute__((used)) static int diff_driver_xfuncname(const git_config_entry *entry, void *payload)
{
 return diff_driver_add_patterns(payload, entry->value, 0);
}
