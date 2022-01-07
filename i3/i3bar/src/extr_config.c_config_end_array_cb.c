
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int parsing_bindings ;
 int parsing_tray_outputs ;

__attribute__((used)) static int config_end_array_cb(void *params_) {
    parsing_bindings = 0;
    parsing_tray_outputs = 0;
    return 1;
}
