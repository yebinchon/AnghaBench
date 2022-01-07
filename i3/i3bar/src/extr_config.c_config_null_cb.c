
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ELOG (char*) ;
 int EXIT_FAILURE ;
 int cur_key ;
 int exit (int ) ;
 int strcmp (int ,char*) ;

__attribute__((used)) static int config_null_cb(void *params_) {
    if (!strcmp(cur_key, "id")) {

        ELOG("No such bar config. Use 'i3-msg -t get_bar_config' to get the available configs.\n");
        ELOG("Are you starting i3bar by hand? You should not:\n");
        ELOG("Configure a 'bar' block in your i3 config and i3 will launch i3bar automatically.\n");
        exit(EXIT_FAILURE);
    }

    return 1;
}
