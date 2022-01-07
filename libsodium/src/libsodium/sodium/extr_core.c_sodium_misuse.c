
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 void _misuse_handler () ;
 int abort () ;
 scalar_t__ sodium_crit_enter () ;
 int sodium_crit_leave () ;

void
sodium_misuse(void)
{
    void (*handler)(void);

    (void) sodium_crit_leave();
    if (sodium_crit_enter() == 0) {
        handler = _misuse_handler;
        if (handler != ((void*)0)) {
            handler();
        }
    }

    abort();
}
