
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct futex {int cond; } ;
typedef int dword_t ;
typedef int addr_t ;


 int TODO (char*,int) ;
 struct futex* futex_get (int ) ;
 int futex_put (struct futex*) ;
 int notify (int *) ;
 int notify_once (int *) ;

int futex_wake(addr_t uaddr, dword_t val) {
    struct futex *futex = futex_get(uaddr);
    if (val == 1)
        notify_once(&futex->cond);
    else if (val == 0x7fffffff)
        notify(&futex->cond);
    else
        TODO("invalid number of futex wakes %d", val);
    futex_put(futex);
    return val;
}
