
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {size_t len; scalar_t__ base; } ;
typedef TYPE_1__ ptls_iovec_t ;


 scalar_t__ strncmp (char const*,char const*,size_t) ;

__attribute__((used)) static int vec_is_string(ptls_iovec_t x, const char *y)
{
    return strncmp((const char *)x.base, y, x.len) == 0 && y[x.len] == '\0';
}
