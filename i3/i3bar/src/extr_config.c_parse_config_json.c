
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int yajl_status ;
typedef int yajl_handle ;
struct TYPE_2__ {int tray_outputs; int bindings; } ;


 int ELOG (char*) ;
 int EXIT_FAILURE ;
 int TAILQ_INIT (int *) ;
 TYPE_1__ config ;
 int exit (int ) ;
 int outputs_callbacks ;
 int strlen (char*) ;
 int yajl_alloc (int *,int *,int *) ;
 int yajl_free (int ) ;
 int yajl_parse (int ,unsigned char const*,int ) ;




void parse_config_json(char *json) {
    yajl_handle handle;
    yajl_status state;
    handle = yajl_alloc(&outputs_callbacks, ((void*)0), ((void*)0));

    TAILQ_INIT(&(config.bindings));
    TAILQ_INIT(&(config.tray_outputs));

    state = yajl_parse(handle, (const unsigned char *)json, strlen(json));


    switch (state) {
        case 128:
            break;
        case 130:
        case 129:
            ELOG("Could not parse config reply!\n");
            exit(EXIT_FAILURE);
            break;
    }

    yajl_free(handle);
}
