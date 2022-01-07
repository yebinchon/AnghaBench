
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct RData {int dummy; } ;
struct RClass {int dummy; } ;
typedef int mrb_value ;
typedef int mrb_state ;
typedef int mrb_int ;
typedef int mrb_input_stream_t ;


 struct RClass* mrb_class_get (int *,char*) ;
 struct RData* mrb_data_object_alloc (int *,struct RClass*,int *,int *) ;
 int * mrb_input_stream_create (int *,char const*,int ,int *,int *) ;
 int mrb_input_stream_type ;
 int mrb_obj_value (struct RData*) ;

mrb_value
mrb_input_stream_value(mrb_state *mrb, const char *base, mrb_int len)
{
  mrb_input_stream_t *stream = mrb_input_stream_create(mrb, base, len, ((void*)0), ((void*)0));
  struct RClass *c = mrb_class_get(mrb, "InputStream");
  struct RData *d = mrb_data_object_alloc(mrb, c, stream, &mrb_input_stream_type);

  return mrb_obj_value(d);
}
