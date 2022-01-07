
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int yajl_status ;
typedef int yajl_handle ;
struct outputs_json_params {char* json; int in_rect; int * cur_key; int * outputs_walk; } ;


 int ELOG (char*) ;
 int EXIT_FAILURE ;
 int exit (int ) ;
 int outputs_callbacks ;
 int strlen (char*) ;
 int yajl_alloc (int *,int *,void*) ;
 int yajl_free (int ) ;
 int yajl_parse (int ,unsigned char const*,int ) ;




void parse_outputs_json(char *json) {
    struct outputs_json_params params;
    params.outputs_walk = ((void*)0);
    params.cur_key = ((void*)0);
    params.json = json;
    params.in_rect = 0;

    yajl_handle handle;
    yajl_status state;
    handle = yajl_alloc(&outputs_callbacks, ((void*)0), (void *)&params);

    state = yajl_parse(handle, (const unsigned char *)json, strlen(json));


    switch (state) {
        case 128:
            break;
        case 130:
        case 129:
            ELOG("Could not parse outputs reply!\n");
            exit(EXIT_FAILURE);
            break;
    }

    yajl_free(handle);
}
