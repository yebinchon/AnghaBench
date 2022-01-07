
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int (* func ) (TYPE_2__*,TYPE_1__ const*) ;} ;
typedef TYPE_1__ jerryx_arg_t ;
struct TYPE_8__ {int js_arg_cnt; int js_arg_idx; int const* js_arg_p; } ;
typedef TYPE_2__ jerryx_arg_js_iterator_t ;
typedef int jerry_value_t ;
typedef scalar_t__ jerry_length_t ;
typedef int jerry_char_t ;


 int JERRY_ERROR_TYPE ;
 int jerry_create_error (int ,int *) ;
 int jerry_create_undefined () ;
 int jerry_release_value (int ) ;
 scalar_t__ jerry_value_is_error (int ) ;
 int jerryx_arg_transform_args (int const*,scalar_t__ const,TYPE_1__ const*,scalar_t__) ;
 int stub1 (TYPE_2__*,TYPE_1__ const*) ;

jerry_value_t
jerryx_arg_transform_this_and_args (const jerry_value_t this_val,
                                    const jerry_value_t *js_arg_p,
                                    const jerry_length_t js_arg_cnt,
                                    const jerryx_arg_t *c_arg_p,
                                    jerry_length_t c_arg_cnt)
{
  if (c_arg_cnt == 0)
  {
    return jerry_create_undefined ();
  }

  jerryx_arg_js_iterator_t iterator =
  {
    .js_arg_p = &this_val,
    .js_arg_cnt = 1,
    .js_arg_idx = 0
  };

  jerry_value_t ret = c_arg_p->func (&iterator, c_arg_p);

  if (jerry_value_is_error (ret))
  {
    jerry_release_value (ret);

    return jerry_create_error (JERRY_ERROR_TYPE, (jerry_char_t *) "'this' validation failed.");
  }

  return jerryx_arg_transform_args (js_arg_p, js_arg_cnt, c_arg_p + 1, c_arg_cnt - 1);
}
