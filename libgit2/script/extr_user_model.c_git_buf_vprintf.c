
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ va_list ;
struct TYPE_3__ {size_t size; int ptr; } ;
typedef TYPE_1__ git_buf ;


 int __coverity_alloc__ (size_t) ;
 int __coverity_string_null_sink__ (char const*) ;
 int __coverity_string_size_sink__ (char const*) ;
 int __coverity_writeall__ (int ) ;

int git_buf_vprintf(git_buf *buf, const char *format, va_list ap)
{
    char ch, *s;
    size_t len;

    __coverity_string_null_sink__(format);
    __coverity_string_size_sink__(format);

    ch = *format;
    ch = *(char *)ap;

    buf->ptr = __coverity_alloc__(len);
    __coverity_writeall__(buf->ptr);
    buf->size = len;

    return 0;
}
