
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct robust_list_head_ {int dummy; } ;
typedef int int_t ;
typedef int dword_t ;
typedef int addr_t ;
struct TYPE_2__ {int robust_list; } ;


 int STRACE (char*,int ,int) ;
 int _EINVAL ;
 TYPE_1__* current ;

int_t sys_set_robust_list(addr_t robust_list, dword_t len) {
    STRACE("set_robust_list(%#x, %d)", robust_list, len);
    if (len != sizeof(struct robust_list_head_))
        return _EINVAL;
    current->robust_list = robust_list;
    return 0;
}
