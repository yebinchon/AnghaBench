
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int (* close ) () ;} ;


 TYPE_1__* implementation ;
 int stub1 () ;

int
randombytes_close(void)
{
    if (implementation != ((void*)0) && implementation->close != ((void*)0)) {
        return implementation->close();
    }
    return 0;
}
