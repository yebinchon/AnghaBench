
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ buffer; scalar_t__ pos; } ;
typedef TYPE_1__ textbuf_t ;



__attribute__((used)) static inline size_t
textbuf_length(const textbuf_t* buf) {
    return (size_t)(buf->pos - buf->buffer);
}
