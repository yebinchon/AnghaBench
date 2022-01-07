
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct statsx_gather_extra {int valid_until; int * subcnt; } ;


 int MAX_SUBCOUNTER ;
 scalar_t__ is_null (int *,int) ;

__attribute__((used)) static int *serialize_subcnt_list_raw (int *ptr, struct statsx_gather_extra *C) {





  if (C->valid_until < 1296637200) {
    *(ptr++) = 0;
    return ptr;
  }
  if (is_null (C->subcnt, MAX_SUBCOUNTER)) {
    *(ptr++) = 0;
    return ptr;
  }
  *(ptr++) = MAX_SUBCOUNTER;
  int i;
  for (i = 0; i < MAX_SUBCOUNTER; i++) {
    *(ptr++) = C->subcnt[i];
  }
  return ptr;
}
