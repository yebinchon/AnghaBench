
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mrb_value ;
typedef int mrb_state ;
typedef int JSON_Value ;


 int E_PARSER_ERROR ;
 int * json_parse_string (int ) ;
 int json_value_free (int *) ;
 int json_value_to_mrb_value (int *,int *) ;
 int mrb_get_args (int *,char*,int *,int *) ;
 int mrb_nil_p (int ) ;
 int mrb_nil_value () ;
 int mrb_raise (int *,int ,char*) ;
 int mrb_str_to_cstr (int *,int ) ;
 int mrb_yield_argv (int *,int ,int,int *) ;

__attribute__((used)) static mrb_value
mrb_json_load(mrb_state *mrb, mrb_value self)
{
  mrb_value value, blk;
  JSON_Value *root_value;
  mrb_value json = mrb_nil_value();
  mrb_get_args(mrb, "S&", &json, &blk);

  root_value = json_parse_string(mrb_str_to_cstr(mrb, json));
  if (!root_value) {
    mrb_raise(mrb, E_PARSER_ERROR, "invalid json");
  }

  value = json_value_to_mrb_value(mrb, root_value);
  json_value_free(root_value);
  if (!mrb_nil_p(blk)) {
    mrb_value args[1];
    args[0] = value;
    mrb_yield_argv(mrb, blk, 1, args);
  }
  return value;
}
