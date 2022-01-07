
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ COMM_MODE ;
 scalar_t__ NOTIFY_MODE ;
 int assert (int) ;
 scalar_t__ check_split (int) ;

__attribute__((used)) static int check_obj (int type, int owner, int place) {
  assert (COMM_MODE || NOTIFY_MODE);
  if (COMM_MODE) {
    return (check_split (place) || check_split (owner)) && (type >= 20) && (type <= 24);
  } else {
    return (type >= 0) && (type <= 31);
  }
}
