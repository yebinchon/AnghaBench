
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int assert (int ) ;

int op_priority (char c) {
  switch (c) {
    case '&':
      return 1;
    case '|':
      return 2;
    default:
      assert (0);
  }
}
