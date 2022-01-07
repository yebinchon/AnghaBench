
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int dword_t ;
struct TYPE_2__ {int egid; } ;


 int STRACE (char*) ;
 TYPE_1__* current ;

dword_t sys_getegid32() {
    STRACE("getegid32()");
    return current->egid;
}
