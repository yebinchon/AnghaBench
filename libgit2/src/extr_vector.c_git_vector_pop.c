
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ length; } ;
typedef TYPE_1__ git_vector ;



void git_vector_pop(git_vector *v)
{
 if (v->length > 0)
  v->length--;
}
