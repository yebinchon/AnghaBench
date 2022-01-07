
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int yajl_status ;
typedef int yajl_handle ;
struct workspaces_json_params {char* json; int * cur_key; int * workspaces_walk; } ;


 int ELOG (char*) ;
 int EXIT_FAILURE ;
 int FREE (int *) ;
 int exit (int ) ;
 int free_workspaces () ;
 int strlen (char*) ;
 int workspaces_callbacks ;
 int yajl_alloc (int *,int *,void*) ;
 int yajl_free (int ) ;
 int yajl_parse (int ,unsigned char const*,int ) ;




void parse_workspaces_json(char *json) {


    struct workspaces_json_params params;

    free_workspaces();

    params.workspaces_walk = ((void*)0);
    params.cur_key = ((void*)0);
    params.json = json;

    yajl_handle handle;
    yajl_status state;
    handle = yajl_alloc(&workspaces_callbacks, ((void*)0), (void *)&params);

    state = yajl_parse(handle, (const unsigned char *)json, strlen(json));


    switch (state) {
        case 128:
            break;
        case 130:
        case 129:
            ELOG("Could not parse workspaces reply!\n");
            exit(EXIT_FAILURE);
            break;
    }

    yajl_free(handle);

    FREE(params.cur_key);
}
