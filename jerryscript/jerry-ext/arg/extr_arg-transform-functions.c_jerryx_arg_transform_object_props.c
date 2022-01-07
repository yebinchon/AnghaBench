
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ extra_info; } ;
typedef TYPE_1__ jerryx_arg_t ;
struct TYPE_5__ {int c_arg_cnt; int c_arg_p; int name_cnt; int name_p; } ;
typedef TYPE_2__ jerryx_arg_object_props_t ;
typedef int jerryx_arg_js_iterator_t ;
typedef int jerry_value_t ;


 int jerryx_arg_js_iterator_pop (int *) ;
 int jerryx_arg_transform_object_properties (int ,int ,int ,int ,int ) ;

jerry_value_t
jerryx_arg_transform_object_props (jerryx_arg_js_iterator_t *js_arg_iter_p,
                                   const jerryx_arg_t *c_arg_p)
{
  jerry_value_t js_arg = jerryx_arg_js_iterator_pop (js_arg_iter_p);

  const jerryx_arg_object_props_t *object_props = (const jerryx_arg_object_props_t *) c_arg_p->extra_info;

  return jerryx_arg_transform_object_properties (js_arg,
                                                 object_props->name_p,
                                                 object_props->name_cnt,
                                                 object_props->c_arg_p,
                                                 object_props->c_arg_cnt);
}
