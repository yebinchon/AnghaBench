
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int buffer; int pos; } ;
typedef TYPE_1__ textbuf_t ;



__attribute__((used)) static inline void
textbuf_init(textbuf_t* buf) {
    buf->pos = buf->buffer;
}
