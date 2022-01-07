
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ data; void* len; } ;
struct TYPE_4__ {TYPE_1__ strval; int lval; } ;
struct memcache_value {int type; TYPE_2__ val; void* flags; } ;
 int error_buf ;
 int snprintf (int ,int,char*,int) ;
 void* strlen (scalar_t__) ;
 int tl_parse_end () ;
 scalar_t__ tl_parse_error () ;
 int tl_parse_init () ;
 void* tl_parse_int () ;
 int tl_parse_long () ;
 void* tl_parse_string (scalar_t__*) ;
 int tl_set_error (int ) ;

struct memcache_value do_memcache_parse_value (void) {
  struct memcache_value value;
  tl_parse_init ();
  int x = tl_parse_int ();
  switch (x) {
  case 129:
    value.type = 129;
    break;
  case 130:
    value.type = 130;
    value.val.lval = tl_parse_long ();
    value.flags = tl_parse_int ();
    break;
  case 128:
    value.type = 128;
    value.val.strval.len = tl_parse_string (&value.val.strval.data);
    value.flags = tl_parse_int ();
    break;
  case 133:
    value.type = 133;
    tl_parse_long ();
    tl_parse_int ();
    value.val.strval.len = tl_parse_string (&value.val.strval.data);
    break;
  case 131:
    value.type = 131;
    break;
  case 132:
    value.type = 132;
    break;
  default:
    snprintf (error_buf, 1000, "Unknown magic %x", x);
    tl_set_error (error_buf);
    break;
  }
  tl_parse_end ();
  if (tl_parse_error ()) {
    value.type = 133;
    value.val.strval.data = tl_parse_error ();
    value.val.strval.len = strlen (value.val.strval.data);
  }
  return value;
}
