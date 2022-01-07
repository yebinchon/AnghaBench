
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {unsigned int fpsr; } ;
typedef TYPE_1__ FPA11 ;


 TYPE_1__* GET_FPA11 () ;

__attribute__((used)) static inline unsigned int readFPSR(void)
{
 FPA11 *fpa11 = GET_FPA11();
 return (fpa11->fpsr);
}
