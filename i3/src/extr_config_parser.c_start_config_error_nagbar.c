
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char* pattern; } ;
struct TYPE_4__ {TYPE_1__ font; } ;


 TYPE_2__ config ;
 int config_error_nagbar_pid ;
 char const* errorfilename ;
 int free (char*) ;
 int sasprintf (char**,char*,char const*) ;
 int start_nagbar (int *,char**) ;

void start_config_error_nagbar(const char *configpath, bool has_errors) {
    char *editaction, *pageraction;
    sasprintf(&editaction, "i3-sensible-editor \"%s\" && i3-msg reload\n", configpath);
    sasprintf(&pageraction, "i3-sensible-pager \"%s\"\n", errorfilename);
    char *argv[] = {
        ((void*)0),
        "-f",
        (config.font.pattern ? config.font.pattern : "fixed"),
        "-t",
        (has_errors ? "error" : "warning"),
        "-m",
        (has_errors ? "You have an error in your i3 config file!" : "Your config is outdated. Please fix the warnings to make sure everything works."),
        "-b",
        "edit config",
        editaction,
        (errorfilename ? "-b" : ((void*)0)),
        (has_errors ? "show errors" : "show warnings"),
        pageraction,
        ((void*)0)};

    start_nagbar(&config_error_nagbar_pid, argv);
    free(editaction);
    free(pageraction);
}
