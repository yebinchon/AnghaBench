
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int dword_t ;
typedef scalar_t__ addr_t ;


 int _EFAULT ;
 int time (int *) ;
 scalar_t__ user_put (scalar_t__,int ) ;

dword_t sys_time(addr_t time_out) {
    dword_t now = time(((void*)0));
    if (time_out != 0)
        if (user_put(time_out, now))
            return _EFAULT;
    return now;
}
