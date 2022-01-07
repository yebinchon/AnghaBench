
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct RArray {int dummy; } ;
typedef scalar_t__ mrb_value ;
typedef int mrb_state ;
typedef scalar_t__ mrb_int ;


 scalar_t__ ARY_LEN (struct RArray*) ;
 scalar_t__* ARY_PTR (struct RArray*) ;


 int TRUE ;
 int mrb_ary_modify (int *,struct RArray*) ;
 scalar_t__ mrb_ary_new (int *) ;
 scalar_t__ mrb_ary_new_capa (int *,scalar_t__) ;
 struct RArray* mrb_ary_ptr (scalar_t__) ;
 int mrb_ary_push (int *,scalar_t__,scalar_t__) ;
 int mrb_ary_resize (int *,scalar_t__,scalar_t__) ;
 scalar_t__ mrb_funcall (int *,scalar_t__,char*,int,scalar_t__) ;
 int mrb_get_argc (int *) ;
 int mrb_get_args (int *,char*,scalar_t__*,scalar_t__*) ;
 scalar_t__ mrb_nil_value () ;
 int mrb_range_beg_len (int *,scalar_t__,scalar_t__*,scalar_t__*,scalar_t__,int ) ;
 int mrb_type (scalar_t__) ;

__attribute__((used)) static mrb_value
mrb_ary_slice_bang(mrb_state *mrb, mrb_value self)
{
  struct RArray *a = mrb_ary_ptr(self);
  mrb_int i, j, k, len, alen;
  mrb_value val;
  mrb_value *ptr;
  mrb_value ary;

  mrb_ary_modify(mrb, a);

  if (mrb_get_argc(mrb) == 1) {
    mrb_value index;

    mrb_get_args(mrb, "o|i", &index, &len);
    switch (mrb_type(index)) {
    case 128:
      if (mrb_range_beg_len(mrb, index, &i, &len, ARY_LEN(a), TRUE) == 1) {
        goto delete_pos_len;
      }
      else {
        return mrb_nil_value();
      }
    case 129:
      val = mrb_funcall(mrb, self, "delete_at", 1, index);
      return val;
    default:
      val = mrb_funcall(mrb, self, "delete_at", 1, index);
      return val;
    }
  }

  mrb_get_args(mrb, "ii", &i, &len);
 delete_pos_len:
  alen = ARY_LEN(a);
  if (i < 0) i += alen;
  if (i < 0 || alen < i) return mrb_nil_value();
  if (len < 0) return mrb_nil_value();
  if (alen == i) return mrb_ary_new(mrb);
  if (len > alen - i) len = alen - i;

  ary = mrb_ary_new_capa(mrb, len);
  ptr = ARY_PTR(a);
  for (j = i, k = 0; k < len; ++j, ++k) {
    mrb_ary_push(mrb, ary, ptr[j]);
  }

  ptr += i;
  for (j = i; j < alen - len; ++j) {
    *ptr = *(ptr+len);
    ++ptr;
  }

  mrb_ary_resize(mrb, self, alen - len);
  return ary;
}
