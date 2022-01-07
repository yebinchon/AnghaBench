
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct tty_port {int dummy; } ;
struct TYPE_3__ {int status; scalar_t__ c; } ;
struct TYPE_4__ {TYPE_1__ bits; int as_long; } ;
typedef TYPE_2__ srmcons_result ;


 int callback_getc (int ) ;
 int tty_insert_flip_char (struct tty_port*,char,int ) ;
 int tty_schedule_flip (struct tty_port*) ;

__attribute__((used)) static int
srmcons_do_receive_chars(struct tty_port *port)
{
 srmcons_result result;
 int count = 0, loops = 0;

 do {
  result.as_long = callback_getc(0);
  if (result.bits.status < 2) {
   tty_insert_flip_char(port, (char)result.bits.c, 0);
   count++;
  }
 } while((result.bits.status & 1) && (++loops < 10));

 if (count)
  tty_schedule_flip(port);

 return count;
}
