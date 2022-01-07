
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ off; int base; } ;
typedef TYPE_1__ ptls_buffer_t ;


 scalar_t__ memcmp (int ,char const*,scalar_t__) ;
 scalar_t__ strlen (char const*) ;

int buffer_is(ptls_buffer_t *buf, const char *s)
{
    return buf->off == strlen(s) && memcmp(buf->base, s, buf->off) == 0;
}
