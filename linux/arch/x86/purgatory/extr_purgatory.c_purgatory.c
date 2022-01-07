
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int copy_backup_region () ;
 int verify_sha256_digest () ;

void purgatory(void)
{
 int ret;

 ret = verify_sha256_digest();
 if (ret) {

  for (;;)
   ;
 }
 copy_backup_region();
}
