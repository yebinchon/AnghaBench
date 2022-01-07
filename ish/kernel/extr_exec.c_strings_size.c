
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 size_t strlen (char const*) ;

__attribute__((used)) static size_t strings_size(const char *args) {
    const char *args_end = args;
    size_t arg_len;
    do {
        arg_len = strlen(args_end);
        args_end += arg_len + 1;
    } while (arg_len != 0);
    return args_end - args;
}
