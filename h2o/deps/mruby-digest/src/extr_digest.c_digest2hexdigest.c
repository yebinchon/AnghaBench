
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mrb_value ;
typedef int mrb_state ;
typedef int buf ;


 int RSTRING_LEN (int ) ;
 char* RSTRING_PTR (int ) ;
 int mrb_str_buf_cat (int *,int ,char*,int) ;
 int mrb_str_buf_new (int *,int) ;
 int snprintf (char*,int,char*,unsigned char) ;

__attribute__((used)) static mrb_value
digest2hexdigest(mrb_state *mrb, mrb_value b)
{
  mrb_value h;
  int i, len;
  char *bp, buf[3];

  bp = RSTRING_PTR(b);
  len = RSTRING_LEN(b);
  h = mrb_str_buf_new(mrb, len * 2);
  for (i = 0; i < len; i++) {
    snprintf(buf, sizeof(buf), "%02x", (unsigned char )bp[i]);
    mrb_str_buf_cat(mrb, h, buf, 2);
  }
  return h;
}
