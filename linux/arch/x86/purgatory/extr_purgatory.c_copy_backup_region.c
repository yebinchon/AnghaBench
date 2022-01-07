
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int memcpy (void*,void*,int ) ;
 scalar_t__ purgatory_backup_dest ;
 scalar_t__ purgatory_backup_src ;
 int purgatory_backup_sz ;

__attribute__((used)) static int copy_backup_region(void)
{
 if (purgatory_backup_dest) {
  memcpy((void *)purgatory_backup_dest,
         (void *)purgatory_backup_src, purgatory_backup_sz);
 }
 return 0;
}
