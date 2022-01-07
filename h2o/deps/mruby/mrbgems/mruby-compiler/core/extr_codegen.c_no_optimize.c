
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int mrb_bool ;
struct TYPE_5__ {TYPE_1__* parser; } ;
typedef TYPE_2__ codegen_scope ;
struct TYPE_4__ {scalar_t__ no_optimize; } ;


 int FALSE ;
 int TRUE ;

mrb_bool
no_optimize(codegen_scope *s)
{
  if (s && s->parser && s->parser->no_optimize)
    return TRUE;
  return FALSE;
}
