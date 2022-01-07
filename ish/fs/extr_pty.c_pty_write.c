
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int other; } ;
struct tty {TYPE_1__ pty; } ;


 int tty_input (int ,void const*,size_t,int) ;

__attribute__((used)) static int pty_write(struct tty *tty, const void *buf, size_t len, bool blocking) {
    return tty_input(tty->pty.other, buf, len, blocking);
}
