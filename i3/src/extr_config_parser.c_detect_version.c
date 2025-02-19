
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int LOG (char*,int,char*) ;
 char* strchr (char*,char) ;
 int strlen (char*) ;
 scalar_t__ strncasecmp (char*,char*,int ) ;

__attribute__((used)) static int detect_version(char *buf) {
    char *walk = buf;
    char *line = buf;
    while (*walk != '\0') {
        if (*walk != '\n') {
            walk++;
            continue;
        }


        if (strncasecmp(line, "bindcode", strlen("bindcode")) == 0 ||
            strncasecmp(line, "force_focus_wrapping", strlen("force_focus_wrapping")) == 0 ||
            strncasecmp(line, "# i3 config file (v4)", strlen("# i3 config file (v4)")) == 0 ||
            strncasecmp(line, "workspace_layout", strlen("workspace_layout")) == 0) {
            LOG("deciding for version 4 due to this line: %.*s\n", (int)(walk - line), line);
            return 4;
        }


        if (strncasecmp(line, "bind", strlen("bind")) == 0) {
            char *bind = strchr(line, ' ');
            if (bind == ((void*)0))
                goto next;
            while ((*bind == ' ' || *bind == '\t') && *bind != '\0')
                bind++;
            if (*bind == '\0')
                goto next;
            if ((bind = strchr(bind, ' ')) == ((void*)0))
                goto next;
            while ((*bind == ' ' || *bind == '\t') && *bind != '\0')
                bind++;
            if (*bind == '\0')
                goto next;
            if (strncasecmp(bind, "layout", strlen("layout")) == 0 ||
                strncasecmp(bind, "floating", strlen("floating")) == 0 ||
                strncasecmp(bind, "workspace", strlen("workspace")) == 0 ||
                strncasecmp(bind, "focus left", strlen("focus left")) == 0 ||
                strncasecmp(bind, "focus right", strlen("focus right")) == 0 ||
                strncasecmp(bind, "focus up", strlen("focus up")) == 0 ||
                strncasecmp(bind, "focus down", strlen("focus down")) == 0 ||
                strncasecmp(bind, "border normal", strlen("border normal")) == 0 ||
                strncasecmp(bind, "border 1pixel", strlen("border 1pixel")) == 0 ||
                strncasecmp(bind, "border pixel", strlen("border pixel")) == 0 ||
                strncasecmp(bind, "border borderless", strlen("border borderless")) == 0 ||
                strncasecmp(bind, "--no-startup-id", strlen("--no-startup-id")) == 0 ||
                strncasecmp(bind, "bar", strlen("bar")) == 0) {
                LOG("deciding for version 4 due to this line: %.*s\n", (int)(walk - line), line);
                return 4;
            }
        }

    next:

        walk++;
        line = walk;
    }

    return 3;
}
