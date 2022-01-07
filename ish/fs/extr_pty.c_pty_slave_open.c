
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ locked; int * other; } ;
struct tty {TYPE_1__ pty; } ;


 int _EIO ;

__attribute__((used)) static int pty_slave_open(struct tty *tty) {
    if (tty->pty.other == ((void*)0))
        return _EIO;
    if (tty->pty.locked)
        return _EIO;
    return 0;
}
