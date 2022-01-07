
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct termios {int c_iflag; int c_lflag; int c_cflag; int c_oflag; } ;


 int BRKINT ;
 int CS8 ;
 int CSIZE ;
 int ECHO ;
 int ECHONL ;
 int ICANON ;
 int ICRNL ;
 int IEXTEN ;
 int IGNBRK ;
 int IGNCR ;
 int IMAXBEL ;
 int INLCR ;
 int ISIG ;
 int ISTRIP ;
 int IXON ;
 int OPOST ;
 int PARENB ;
 int PARMRK ;
 int assert (int ) ;
 int cfmakeraw (struct termios*) ;

__attribute__((used)) static void uv__tty_make_raw(struct termios* tio) {
  assert(tio != ((void*)0));
  cfmakeraw(tio);

}
