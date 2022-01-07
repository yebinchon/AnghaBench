
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int base; } ;
typedef TYPE_1__ index_iterator ;


 int iterator_clear (int *) ;

__attribute__((used)) static void index_iterator_clear(index_iterator *iter)
{
 iterator_clear(&iter->base);
}
