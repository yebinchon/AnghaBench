
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void* mrb_value ;
typedef int mrb_state ;
typedef double mrb_int ;
typedef int JSON_Value ;
typedef int JSON_Object ;
typedef int JSON_Array ;


 int E_ARGUMENT_ERROR ;
 double floor (double) ;
 size_t json_array_get_count (int *) ;
 int * json_array_get_value (int *,size_t) ;
 size_t json_object_get_count (int *) ;
 char* json_object_get_name (int *,size_t) ;
 int * json_object_get_value (int *,char const*) ;
 int * json_value_get_array (int *) ;
 int json_value_get_boolean (int *) ;
 int json_value_get_fixed (int *) ;
 double json_value_get_number (int *) ;
 int * json_value_get_object (int *) ;
 char const* json_value_get_string (int *) ;
 int json_value_get_type (int *) ;
 void* mrb_ary_new (int *) ;
 int mrb_ary_push (int *,void*,void*) ;
 void* mrb_false_value () ;
 void* mrb_fixnum_value (double) ;
 void* mrb_float_value (int *,double) ;
 int mrb_gc_arena_restore (int *,int) ;
 int mrb_gc_arena_save (int *) ;
 void* mrb_hash_new (int *) ;
 int mrb_hash_set (int *,void*,void*,void*) ;
 void* mrb_nil_value () ;
 int mrb_raise (int *,int ,char*) ;
 void* mrb_str_new_cstr (int *,char const*) ;
 void* mrb_true_value () ;

__attribute__((used)) static mrb_value
json_value_to_mrb_value(mrb_state* mrb, JSON_Value* value) {
  mrb_value ret;
  switch (json_value_get_type(value)) {
  case 133:
  case 131:
    ret = mrb_nil_value();
    break;
  case 128:
    ret = mrb_str_new_cstr(mrb, json_value_get_string(value));
    break;
  case 130:
    {
      double d = json_value_get_number(value);
      if (floor(d) == d) {
        ret = mrb_fixnum_value(d);
      }
      else {
        ret = mrb_float_value(mrb, d);
      }
    }
    break;

  case 129:
    {
      mrb_value hash = mrb_hash_new(mrb);
      JSON_Object* object = json_value_get_object(value);
      size_t count = json_object_get_count(object);
      size_t n;
      for (n = 0; n < count; n++) {
        int ai = mrb_gc_arena_save(mrb);
        const char* name = json_object_get_name(object, n);
        mrb_hash_set(mrb, hash, mrb_str_new_cstr(mrb, name),
          json_value_to_mrb_value(mrb, json_object_get_value(object, name)));
        mrb_gc_arena_restore(mrb, ai);
      }
      ret = hash;
    }
    break;
  case 135:
    {
      mrb_value ary;
      JSON_Array* array;
      size_t n, count;
      ary = mrb_ary_new(mrb);
      array = json_value_get_array(value);
      count = json_array_get_count(array);
      for (n = 0; n < count; n++) {
        int ai = mrb_gc_arena_save(mrb);
        JSON_Value* elem = json_array_get_value(array, n);
        mrb_ary_push(mrb, ary, json_value_to_mrb_value(mrb, elem));
        mrb_gc_arena_restore(mrb, ai);
      }
      ret = ary;
    }
    break;
  case 134:
    if (json_value_get_boolean(value))
      ret = mrb_true_value();
    else
      ret = mrb_false_value();
    break;
  default:
    mrb_raise(mrb, E_ARGUMENT_ERROR, "invalid argument");
  }
  return ret;
}
