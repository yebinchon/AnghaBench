
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ extra_info; } ;
typedef TYPE_1__ jerryx_arg_t ;
typedef int jerryx_arg_js_iterator_t ;
struct TYPE_5__ {int c_arg_cnt; int c_arg_p; } ;
typedef TYPE_2__ jerryx_arg_array_items_t ;
typedef int jerry_value_t ;


 int jerryx_arg_js_iterator_pop (int *) ;
 int jerryx_arg_transform_array (int ,int ,int ) ;

jerry_value_t
jerryx_arg_transform_array_items (jerryx_arg_js_iterator_t *js_arg_iter_p,
                                  const jerryx_arg_t *c_arg_p)
{
  jerry_value_t js_arg = jerryx_arg_js_iterator_pop (js_arg_iter_p);

  const jerryx_arg_array_items_t *array_items_p = (const jerryx_arg_array_items_t *) c_arg_p->extra_info;

  return jerryx_arg_transform_array (js_arg,
                                     array_items_p->c_arg_p,
                                     array_items_p->c_arg_cnt);
}
