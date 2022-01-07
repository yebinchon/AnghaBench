
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int async_probe_drv_names ;
 int parse_option_str (int ,char const*) ;

__attribute__((used)) static inline bool cmdline_requested_async_probing(const char *drv_name)
{
 return parse_option_str(async_probe_drv_names, drv_name);
}
