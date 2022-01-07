
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct outputs_json_params {char* cur_key; TYPE_1__* outputs_walk; } ;
struct TYPE_2__ {long ws; char* name; } ;


 int FREE (char*) ;
 scalar_t__ errno ;
 int sasprintf (char**,char*,size_t,unsigned char const*) ;
 scalar_t__ strcmp (char*,char*) ;
 long strtol (char*,char**,int) ;

__attribute__((used)) static int outputs_string_cb(void *params_, const unsigned char *val, size_t len) {
    struct outputs_json_params *params = (struct outputs_json_params *)params_;

    if (!strcmp(params->cur_key, "current_workspace")) {
        char *copy = ((void*)0);
        sasprintf(&copy, "%.*s", len, val);

        char *end;
        errno = 0;
        long parsed_num = strtol(copy, &end, 10);
        if (errno == 0 &&
            (end && *end == '\0'))
            params->outputs_walk->ws = parsed_num;

        FREE(copy);
        FREE(params->cur_key);
        return 1;
    }

    if (strcmp(params->cur_key, "name")) {
        return 0;
    }

    sasprintf(&(params->outputs_walk->name), "%.*s", len, val);

    FREE(params->cur_key);
    return 1;
}
