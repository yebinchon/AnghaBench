
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tty_struct {int dummy; } ;


 int simc_write (int,unsigned char const*,int) ;

__attribute__((used)) static int rs_write(struct tty_struct * tty,
      const unsigned char *buf, int count)
{


 simc_write(1, buf, count);
 return count;
}
