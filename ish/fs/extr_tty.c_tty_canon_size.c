
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tty {int* buf_flag; int bufsize; } ;


 int* memchr (int*,int,int ) ;

__attribute__((used)) static size_t tty_canon_size(struct tty *tty) {
    bool *flag_ptr = memchr(tty->buf_flag, 1, tty->bufsize);
    if (flag_ptr == ((void*)0))
        return -1;
    return flag_ptr - tty->buf_flag + 1;
}
