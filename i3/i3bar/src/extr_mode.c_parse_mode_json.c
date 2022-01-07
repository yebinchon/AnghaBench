
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int yajl_status ;
typedef int yajl_handle ;
struct mode_json_params {char* json; int * cur_key; TYPE_1__* mode; } ;
struct TYPE_3__ {int name; } ;
typedef TYPE_1__ mode ;


 int ELOG (char*) ;
 int EXIT_FAILURE ;
 int FREE (int *) ;
 int I3STRING_FREE (int ) ;
 int exit (int ) ;
 int i3string_as_utf8 (int ) ;
 int mode_callbacks ;
 int set_current_mode (TYPE_1__*) ;
 scalar_t__ strcmp (char*,int ) ;
 int strlen (char*) ;
 int yajl_alloc (int *,int *,void*) ;
 int yajl_free (int ) ;
 int yajl_parse (int ,unsigned char const*,int ) ;




void parse_mode_json(char *json) {


    struct mode_json_params params;

    mode binding;

    params.cur_key = ((void*)0);
    params.json = json;
    params.mode = &binding;

    yajl_handle handle;
    yajl_status state;

    handle = yajl_alloc(&mode_callbacks, ((void*)0), (void *)&params);

    state = yajl_parse(handle, (const unsigned char *)json, strlen(json));


    switch (state) {
        case 128:
            break;
        case 130:
        case 129:
            ELOG("Could not parse mode event!\n");
            exit(EXIT_FAILURE);
            break;
    }


    if (strcmp("default", i3string_as_utf8(params.mode->name)) == 0)
        I3STRING_FREE(params.mode->name);


    set_current_mode(&binding);

    yajl_free(handle);

    FREE(params.cur_key);
}
