
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int int_t ;




 scalar_t__ REBOOT_MAGIC1 ;
 int REBOOT_MAGIC2 ;
 int REBOOT_MAGIC2A ;
 int REBOOT_MAGIC2B ;
 int REBOOT_MAGIC2C ;
 int STRACE (char*,int,int,int) ;
 int _EINVAL ;
 int _EPERM ;
 int superuser () ;

int_t sys_reboot(int_t magic, int_t magic2, int_t cmd) {
    STRACE("reboot(%#x, %d, %d)", magic, magic2, cmd);
    if (!superuser())
        return _EPERM;
    if (magic != (int) REBOOT_MAGIC1 ||
            (magic2 != REBOOT_MAGIC2 &&
             magic2 != REBOOT_MAGIC2A &&
             magic2 != REBOOT_MAGIC2B &&
             magic2 != REBOOT_MAGIC2C))
        return _EINVAL;

    switch (cmd) {
        case 128:
        case 129:
            return 0;
        default:
            return _EPERM;
    }
}
