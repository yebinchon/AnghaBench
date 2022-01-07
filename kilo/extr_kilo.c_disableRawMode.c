
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ rawmode; } ;


 TYPE_1__ E ;
 int TCSAFLUSH ;
 int orig_termios ;
 int tcsetattr (int,int ,int *) ;

void disableRawMode(int fd) {

    if (E.rawmode) {
        tcsetattr(fd,TCSAFLUSH,&orig_termios);
        E.rawmode = 0;
    }
}
