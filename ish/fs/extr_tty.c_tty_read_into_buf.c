
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tty {size_t bufsize; int consumed; scalar_t__ buf_flag; scalar_t__ buf; } ;


 int assert (int) ;
 int memcpy (void*,scalar_t__,size_t) ;
 int memmove (scalar_t__,scalar_t__,size_t) ;
 int notify (int *) ;

__attribute__((used)) static void tty_read_into_buf(struct tty *tty, void *buf, size_t bufsize) {
    assert(bufsize <= tty->bufsize);
    memcpy(buf, tty->buf, bufsize);
    tty->bufsize -= bufsize;
    memmove(tty->buf, tty->buf + bufsize, tty->bufsize);
    memmove(tty->buf_flag, tty->buf_flag + bufsize, tty->bufsize);
    notify(&tty->consumed);
}
