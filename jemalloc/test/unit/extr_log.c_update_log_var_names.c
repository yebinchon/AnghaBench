
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int config_log ;
 int log_var_names ;
 int strncpy_cond (int ,char const*,int ) ;

__attribute__((used)) static void
update_log_var_names(const char *names) {
 strncpy_cond(log_var_names, names, config_log);
}
