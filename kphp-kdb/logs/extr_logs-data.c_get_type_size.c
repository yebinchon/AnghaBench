
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * name; } ;


 int MAX_TYPE ;
 int debug (char*,int *,int,int ) ;
 char* debug_buff ;
 char* ds ;
 int * type_size ;
 TYPE_1__* types ;

char *get_type_size (int type) {
  int first, last;
  if (type == -1) {
    first = 1;
    last = MAX_TYPE;
  } else if (1 <= type && type < MAX_TYPE) {
    first = type;
    last = type + 1;
  } else {
    return "";
  }

  ds = debug_buff;

  int i;
  for (i = first; i < last; i++) {
    if (types[i].name != ((void*)0)) {
      debug ("[%40s](%5d) : %9lld\n", types[i].name, i, type_size[i]);
    }
  }

  *ds = 0;
  return debug_buff;
}
