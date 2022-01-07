
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tty_struct {int dummy; } ;


 int rs_write (struct tty_struct*,unsigned char*,int) ;

__attribute__((used)) static int rs_put_char(struct tty_struct *tty, unsigned char ch)
{
 return rs_write(tty, &ch, 1);
}
