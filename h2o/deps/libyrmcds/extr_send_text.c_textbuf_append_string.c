
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {size_t pos; } ;
typedef TYPE_1__ textbuf_t ;


 int memcpy (size_t,char const*,size_t) ;

__attribute__((used)) static inline void
textbuf_append_string(textbuf_t* buf, const char* s, size_t len) {
    memcpy(buf->pos, s, len);
    buf->pos += len;
}
