
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int mrb_state ;
typedef void* mrb_bool ;
struct TYPE_3__ {void* parse_error; void* has_line_max; int line_max; void* has_line_min; int line_min; } ;
typedef TYPE_1__ listcmd_parser_state ;


 void* FALSE ;
 void* TRUE ;
 scalar_t__ parse_uint (char**,int *) ;
 scalar_t__ skip_char (char**,char) ;

__attribute__((used)) static mrb_bool
parse_lineno(mrb_state *mrb, char **sp, listcmd_parser_state *st)
{
  if (*sp == ((void*)0) || **sp == '\0') {
    return FALSE;
  }

  st->has_line_min = FALSE;
  st->has_line_max = FALSE;

  if (parse_uint(sp, &st->line_min)) {
    st->has_line_min = TRUE;
  }
  else {
    return FALSE;
  }

  if (skip_char(sp, ',')) {
    if (parse_uint(sp, &st->line_max)) {
      st->has_line_max = TRUE;
    }
    else {
      st->parse_error = TRUE;
      return FALSE;
    }
  }
  return TRUE;
}
