
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int js_arg_idx; } ;
typedef TYPE_1__ jerryx_arg_js_iterator_t ;
typedef int jerry_length_t ;



jerry_length_t
jerryx_arg_js_iterator_index (jerryx_arg_js_iterator_t *js_arg_iter_p)
{
  return js_arg_iter_p->js_arg_idx;
}
