
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int Q_order ;

int convert_mode (int mode) {
  Q_order = 0;
  if (mode & 1) {
    Q_order = 2;
  } else if (mode & 2) {
    Q_order = 1;
  }
  if (!(mode & 4)) {
    Q_order = -Q_order;
  }
  return Q_order;
}
