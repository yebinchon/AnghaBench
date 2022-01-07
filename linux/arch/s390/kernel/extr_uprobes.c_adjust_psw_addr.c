
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int addr; } ;
typedef TYPE_1__ psw_t ;


 int __rewind_psw (TYPE_1__,unsigned long) ;

__attribute__((used)) static void adjust_psw_addr(psw_t *psw, unsigned long len)
{
 psw->addr = __rewind_psw(*psw, -len);
}
