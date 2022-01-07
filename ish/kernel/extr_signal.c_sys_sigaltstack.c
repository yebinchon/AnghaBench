
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct stack_t_ {int flags; scalar_t__ size; int stack; } ;
struct sighand {scalar_t__ altstack_size; int lock; int altstack; } ;
typedef int dword_t ;
typedef scalar_t__ addr_t ;
struct TYPE_3__ {int esp; } ;
struct TYPE_4__ {TYPE_1__ cpu; struct sighand* sighand; } ;


 scalar_t__ MINSIGSTKSZ_ ;
 int SS_DISABLE_ ;
 int STRACE (char*,scalar_t__,scalar_t__) ;
 int _EFAULT ;
 int _ENOMEM ;
 int _EPERM ;
 int altstack_to_user (struct sighand*,struct stack_t_*) ;
 TYPE_2__* current ;
 scalar_t__ is_on_altstack (int ,struct sighand*) ;
 int lock (int *) ;
 int unlock (int *) ;
 scalar_t__ user_get (scalar_t__,struct stack_t_) ;
 scalar_t__ user_put (scalar_t__,struct stack_t_) ;

dword_t sys_sigaltstack(addr_t ss_addr, addr_t old_ss_addr) {
    STRACE("sigaltstack(0x%x, 0x%x)", ss_addr, old_ss_addr);
    struct sighand *sighand = current->sighand;
    lock(&sighand->lock);
    if (old_ss_addr != 0) {
        struct stack_t_ old_ss;
        altstack_to_user(sighand, &old_ss);
        if (user_put(old_ss_addr, old_ss)) {
            unlock(&sighand->lock);
            return _EFAULT;
        }
    }
    if (ss_addr != 0) {
        if (is_on_altstack(current->cpu.esp, sighand)) {
            unlock(&sighand->lock);
            return _EPERM;
        }
        struct stack_t_ ss;
        if (user_get(ss_addr, ss)) {
            unlock(&sighand->lock);
            return _EFAULT;
        }
        if (ss.flags & SS_DISABLE_) {
            sighand->altstack = 0;
        } else {
            if (ss.size < MINSIGSTKSZ_)
                return _ENOMEM;
            sighand->altstack = ss.stack;
            sighand->altstack_size = ss.size;
        }
    }
    unlock(&sighand->lock);
    return 0;
}
