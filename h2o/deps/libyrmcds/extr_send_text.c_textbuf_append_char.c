
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char* pos; } ;
typedef TYPE_1__ textbuf_t ;



__attribute__((used)) static inline void
textbuf_append_char(textbuf_t* buf, char c) {
    *buf->pos = c;
    ++buf->pos;
}
