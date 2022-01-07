
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dummy; } ;


 int ifxdeu_fini_aes () ;
 int ifxdeu_fini_arc4 () ;
 int ifxdeu_fini_des () ;
 int ifxdeu_fini_md5 () ;
 int ifxdeu_fini_md5_hmac () ;
 int ifxdeu_fini_sha1 () ;
 int ifxdeu_fini_sha1_hmac () ;
 int printk (char*) ;

__attribute__((used)) static int ltq_deu_remove(struct platform_device *pdev)
{
    printk("DEU has exited successfully\n");

 return 0;
}
