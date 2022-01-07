
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int mrb_state ;
typedef int mrb_bool ;
struct TYPE_3__ {char* filename; } ;
typedef TYPE_1__ listcmd_parser_state ;


 int FALSE ;
 int TRUE ;
 int mrb_free (int *,char*) ;
 scalar_t__ mrb_malloc (int *,int) ;
 char* strchr (char*,char) ;
 int strlen (char*) ;
 int strncpy (char*,char*,int) ;

__attribute__((used)) static mrb_bool
parse_filename(mrb_state *mrb, char **sp, listcmd_parser_state *st)
{
  char *p;
  int len;

  if (st->filename != ((void*)0)) {
    mrb_free(mrb, st->filename);
    st->filename = ((void*)0);
  }

  if ((p = strchr(*sp, ':')) != ((void*)0)) {
    len = p - *sp;
  }
  else {
    len = strlen(*sp);
  }

  if (len > 0) {
    st->filename = (char*)mrb_malloc(mrb, len + 1);
    strncpy(st->filename, *sp, len);
    st->filename[len] = '\0';
    *sp += len;
    return TRUE;
  }
  else {
    return FALSE;
  }
}
