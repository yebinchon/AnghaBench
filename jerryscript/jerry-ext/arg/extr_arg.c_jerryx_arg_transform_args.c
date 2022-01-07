
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int (* func ) (TYPE_2__*,TYPE_1__ const*) ;} ;
typedef TYPE_1__ jerryx_arg_t ;
struct TYPE_7__ {scalar_t__ const js_arg_cnt; int js_arg_idx; int const* js_arg_p; } ;
typedef TYPE_2__ jerryx_arg_js_iterator_t ;
typedef int jerry_value_t ;
typedef scalar_t__ jerry_length_t ;


 int jerry_create_undefined () ;
 int jerry_value_is_error (int ) ;
 int stub1 (TYPE_2__*,TYPE_1__ const*) ;

jerry_value_t
jerryx_arg_transform_args (const jerry_value_t *js_arg_p,
                           const jerry_length_t js_arg_cnt,
                           const jerryx_arg_t *c_arg_p,
                           jerry_length_t c_arg_cnt)
{
  jerry_value_t ret = jerry_create_undefined ();

  jerryx_arg_js_iterator_t iterator =
  {
    .js_arg_p = js_arg_p,
    .js_arg_cnt = js_arg_cnt,
    .js_arg_idx = 0
  };

  for (; c_arg_cnt != 0 && !jerry_value_is_error (ret); c_arg_cnt--, c_arg_p++)
  {
    ret = c_arg_p->func (&iterator, c_arg_p);
  }

  return ret;
}
