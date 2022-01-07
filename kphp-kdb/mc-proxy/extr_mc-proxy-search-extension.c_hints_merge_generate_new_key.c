
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hints_gather_extra {int type; int num; int slice_limit; scalar_t__ need_latin; int uid; } ;


 int assert (int ) ;
 int sprintf (char*,char*,...) ;

int hints_merge_generate_new_key (char *buff, char *key, int key_len, void *E) {
  assert (E != ((void*)0));

  char *sbuff = buff;

  struct hints_gather_extra *ge = (struct hints_gather_extra *)E;

  buff += sprintf (buff, "gather_hints%s%d", ge->need_latin ? "_latin" : "", ge->uid);
  if (ge->type != -1) {
    buff += sprintf (buff, ",%d", ge->type);
  }
  if (ge->num != 0) {
    buff += sprintf (buff, "*%d", ge->num);
  }
  buff += sprintf (buff, "#%d", ge->slice_limit);

  while (*key != '(') {
    key++;
  }
  while (*key != ')') {
    *buff++ = *key++;
  }
  *buff++ = ')';

  *buff = 0;
  return buff - sbuff;
}
