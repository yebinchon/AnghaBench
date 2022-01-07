
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
bool path_is_normalized(const char *path) {
    while (*path != '\0') {
        if (*path != '/')
            return 0;
        path++;
        if (*path == '/')
            return 0;
        while (*path != '/' && *path != '\0')
            path++;
    }
    return 1;
}
