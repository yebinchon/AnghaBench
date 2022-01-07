
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tty_struct {int dummy; } ;


 int nf_call (int ,int ) ;
 int stderr_id ;
 int virt_to_phys (char*) ;

__attribute__((used)) static int nfcon_tty_put_char(struct tty_struct *tty, unsigned char ch)
{
 char temp[2] = { ch, 0 };

 nf_call(stderr_id, virt_to_phys(temp));
 return 1;
}
