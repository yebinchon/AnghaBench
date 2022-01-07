
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 long INT_MAX ;
 int _ENOENT ;
 long atol (char const*) ;
 int devpts_pty_exists (int) ;
 int isdigits (char const*) ;
 int * strchr (char const*,char) ;
 scalar_t__ strcmp (char const*,char*) ;

__attribute__((used)) static int devpts_get_pty_num(const char *path) {
    if (strcmp(path, "") == 0)
        return -1;
    if (path[0] != '/' || path[1] == '\0' || strchr(path + 1, '/') != ((void*)0))
        return _ENOENT;


    const char *name = path + 1;
    if (!isdigits(name))
        return _ENOENT;

    long pty_long = atol(name);
    if (pty_long > INT_MAX)
        return _ENOENT;
    int pty_num = (int) pty_long;
    if (!devpts_pty_exists(pty_num))
        return _ENOENT;
    return pty_num;
}
