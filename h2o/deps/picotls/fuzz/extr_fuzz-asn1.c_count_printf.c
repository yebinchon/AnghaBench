
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
void count_printf(void *ctx, const char *format, ...)
{
    int *c = ctx;
    c++;
    return;
}
