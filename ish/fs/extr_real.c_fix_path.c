
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ strcmp (char const*,char*) ;

const char *fix_path(const char *path) {
    if (strcmp(path, "") == 0)
        return ".";
    if (path[0] == '/')
        path++;
    return path;
}
