
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct statsx_gather_extra {int* subcnt; int valid_until; } ;


 int MAX_SUBCOUNTER ;
 int not_null (int*,int) ;
 int sprintf (char*,char*,...) ;

__attribute__((used)) static char *serialize_subcnt_list (char *ptr, struct statsx_gather_extra *C) {





  int num = not_null (C->subcnt, MAX_SUBCOUNTER);
  if (!num) {
    return ptr;
  }
  if (C->valid_until < 1296637200) {
    ptr += sprintf (ptr, "s:5:\"extra\";a:0:{}");
    return ptr;
  }
  int i;
  ptr += sprintf (ptr, "s:5:\"extra\";a:%d:{", num);
  for (i = 0; i < MAX_SUBCOUNTER; i++)
    if (C->subcnt[i]) {
      ptr += sprintf (ptr, "i:%d;i:%d;", i, C->subcnt[i]);
    }
  *ptr++ = '}';
  return ptr;
}
