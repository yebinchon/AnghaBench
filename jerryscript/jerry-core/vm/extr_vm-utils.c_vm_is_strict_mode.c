
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {TYPE_1__* bytecode_header_p; } ;
struct TYPE_3__ {int status_flags; } ;


 int CBC_CODE_FLAGS_STRICT_MODE ;
 int JERRY_ASSERT (int ) ;
 TYPE_2__* JERRY_CONTEXT (int ) ;
 int vm_top_context_p ;

bool
vm_is_strict_mode (void)
{
  JERRY_ASSERT (JERRY_CONTEXT (vm_top_context_p) != ((void*)0));

  return JERRY_CONTEXT (vm_top_context_p)->bytecode_header_p->status_flags & CBC_CODE_FLAGS_STRICT_MODE;
}
