
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int max_active_branches ;
 int ulong_arg (char*,char const*) ;

__attribute__((used)) static void option_active_branches(const char *branches)
{
 max_active_branches = ulong_arg("--active-branches", branches);
}
