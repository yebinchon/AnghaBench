
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int mallctl_bool_set (char*,int,int,char const*,int) ;

__attribute__((used)) static void
mallctl_prof_active_set_impl(bool prof_active_old_expected,
    bool prof_active_new, const char *func, int line) {
 mallctl_bool_set("prof.active", prof_active_old_expected,
     prof_active_new, func, line);
}
