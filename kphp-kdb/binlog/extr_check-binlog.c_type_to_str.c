
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int assert (int) ;

inline const char *type_to_str (int type) {
  static const char *msg_type[3] = {"binlog", "backup", "snapshot"};
  assert (type >= 0 && type < 3);
  return msg_type[type];
}
