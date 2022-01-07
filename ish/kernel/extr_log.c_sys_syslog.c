
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int int_t ;
typedef int addr_t ;


 int do_syslog (int,int ,int) ;
 int lock (int *) ;
 int log_lock ;
 int unlock (int *) ;

int_t sys_syslog(int_t type, addr_t buf_addr, int_t len) {
    lock(&log_lock);
    int retval = do_syslog(type, buf_addr, len);
    unlock(&log_lock);
    return retval;
}
