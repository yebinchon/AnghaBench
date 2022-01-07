
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mrb_value ;
typedef int mrb_state ;
 int RARRAY_LEN (int ) ;
 char* RSTRING_END (int ) ;
 char* RSTRING_PTR (int ) ;
 int mrb_ary_entry (int ,int) ;
 int mrb_funcall (int *,int ,char*,int ,int *) ;
 int mrb_gc_arena_restore (int *,int) ;
 int mrb_gc_arena_save (int *) ;
 int mrb_hash_get (int *,int ,int ) ;
 int mrb_hash_keys (int *,int ) ;
 int mrb_method_defined (int *,int ,char*) ;
 scalar_t__ mrb_nil_p (int ) ;
 int mrb_str_cat (int *,int ,char*,int) ;
 int mrb_str_cat_cstr (int *,int ,char*) ;
 int mrb_str_concat (int *,int ,int ) ;
 int mrb_str_new_cstr (int *,char*) ;
 int mrb_type (int ) ;
 int pretty_cat (int *,int ,int) ;

__attribute__((used)) static mrb_value
mrb_value_to_string(mrb_state* mrb, mrb_value value, int pretty) {
  mrb_value str;

  if (mrb_nil_p(value)) {
    return mrb_str_new_cstr(mrb, "null");
  }

  switch (mrb_type(value)) {
  case 134:
  case 133:
  case 129:
  case 135:
  case 128:
    str = mrb_funcall(mrb, value, "to_s", 0, ((void*)0));
    break;
  case 130:
    value = mrb_funcall(mrb, value, "to_s", 0, ((void*)0));

  case 131:
    {
      int ai = mrb_gc_arena_save(mrb);
      char* ptr = RSTRING_PTR(value);
      char* end = RSTRING_END(value);
      str = mrb_str_new_cstr(mrb, "\"");
      while (ptr < end && *ptr) {
        switch (*ptr) {
        case '\\':
          str = mrb_str_cat_cstr(mrb, str, "\\\\");
          break;
        case '"':
          str = mrb_str_cat_cstr(mrb, str, "\\\"");
          break;
        case '\b':
          str = mrb_str_cat_cstr(mrb, str, "\\b");
          break;
        case '\f':
          str = mrb_str_cat_cstr(mrb, str, "\\f");
          break;
        case '\n':
          str = mrb_str_cat_cstr(mrb, str, "\\n");
          break;
        case '\r':
          str = mrb_str_cat_cstr(mrb, str, "\\r");
          break;
        case '\t':
          str = mrb_str_cat_cstr(mrb, str, "\\t");
          break;
        default:

          str = mrb_str_cat(mrb, str, ptr, 1);
        }
        ptr++;
      }
      mrb_str_cat_cstr(mrb, str, "\"");
      mrb_gc_arena_restore(mrb, ai);
    }
    break;
  case 132:
    {
      mrb_value keys;
      int n, l;

      str = mrb_str_new_cstr(mrb, "{");
      keys = mrb_hash_keys(mrb, value);
      l = RARRAY_LEN(keys);
      if (l == 0) {
        if (pretty >= 0) return mrb_str_cat_cstr(mrb, str, "\n}");
        return mrb_str_cat_cstr(mrb, str, "}");
      }
      if (pretty >= 0) str = pretty_cat(mrb, str, ++pretty);
      for (n = 0; n < l; n++) {
        mrb_value obj;
        int ai = mrb_gc_arena_save(mrb);
        mrb_value key = mrb_ary_entry(keys, n);
        mrb_value enckey = mrb_funcall(mrb, key, "to_s", 0, ((void*)0));
        enckey = mrb_funcall(mrb, enckey, "inspect", 0, ((void*)0));
        mrb_str_concat(mrb, str, enckey);
        mrb_str_cat_cstr(mrb, str, ":");
        obj = mrb_hash_get(mrb, value, key);
        mrb_str_concat(mrb, str, mrb_value_to_string(mrb, obj, pretty));
        if (n != l - 1) {
          mrb_str_cat_cstr(mrb, str, ",");
          if (pretty >= 0) str = pretty_cat(mrb, str, pretty);
        }
        mrb_gc_arena_restore(mrb, ai);
      }
      if (pretty >= 0) str = pretty_cat(mrb, str, --pretty);
      mrb_str_cat_cstr(mrb, str, "}");
      break;
    }
  case 136:
    {
      int n, l;

      str = mrb_str_new_cstr(mrb, "[");
      l = RARRAY_LEN(value);
      if (l == 0) {
        if (pretty >= 0) return mrb_str_cat_cstr(mrb, str, "\n]");
        return mrb_str_cat_cstr(mrb, str, "]");
      }
      if (pretty >= 0) str = pretty_cat(mrb, str, ++pretty);
      for (n = 0; n < l; n++) {
        int ai = mrb_gc_arena_save(mrb);
        mrb_value obj = mrb_ary_entry(value, n);
        mrb_str_concat(mrb, str, mrb_value_to_string(mrb, obj, pretty));
        if (n != l - 1) {
          mrb_str_cat_cstr(mrb, str, ",");
          if (pretty >= 0) str = pretty_cat(mrb, str, pretty);
        }
        mrb_gc_arena_restore(mrb, ai);
      }
      if (pretty >= 0) str = pretty_cat(mrb, str, --pretty);
      mrb_str_cat_cstr(mrb, str, "]");
      break;
    }
  default:
    {
      if (mrb_method_defined(mrb, value, "to_json"))
        str = mrb_funcall(mrb, value, "to_json", 0, ((void*)0));
      else
        str = mrb_value_to_string(mrb, mrb_funcall(mrb, value, "to_s", 0, ((void*)0)), pretty);
    }
  }
  return str;
}
