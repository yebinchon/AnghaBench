
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int * strstr (char const*,char*) ;

__attribute__((used)) static int validate_path(const char *path)
{
    if (path[0] != '/')
        return 0;

    if (strstr(path, "/.") != ((void*)0))
        return 0;
    return 1;
}
