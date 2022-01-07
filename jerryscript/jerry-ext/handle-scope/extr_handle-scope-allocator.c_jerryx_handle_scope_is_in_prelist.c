
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int jerryx_handle_scope_t ;
struct TYPE_2__ {int * prelist; } ;


 int JERRYX_SCOPE_PRELIST_SIZE ;
 TYPE_1__ jerryx_handle_scope_pool ;

__attribute__((used)) static bool
jerryx_handle_scope_is_in_prelist (jerryx_handle_scope_t *scope)
{
  return (jerryx_handle_scope_pool.prelist <= scope)
  && (scope <= (jerryx_handle_scope_pool.prelist + JERRYX_SCOPE_PRELIST_SIZE - 1));
}
