
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char* base; size_t len; } ;
typedef TYPE_1__ ptls_iovec_t ;


 int printf (char*,char*) ;

__attribute__((used)) static int parse_request(ptls_iovec_t input, char **path, int *is_http1)
{
    size_t off = 0, path_start;

    printf("Request received: %s\n", input.base);
    for (off = 0; off != input.len; ++off)
        if (input.base[off] == ' ')
            goto EndOfMethod;
    return 0;

EndOfMethod:
    ++off;
    path_start = off;
    for (; off != input.len; ++off)
        if (input.base[off] == ' ' || input.base[off] == '\r' || input.base[off] == '\n')
            goto EndOfPath;
    return 0;

EndOfPath:
    *path = (char *)(input.base + path_start);
    *is_http1 = input.base[off] == ' ';
    input.base[off] = '\0';
    return 1;
}
