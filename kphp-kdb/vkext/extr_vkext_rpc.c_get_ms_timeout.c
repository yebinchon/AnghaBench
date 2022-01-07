
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ precise_now ;
 int update_precise_now () ;

__attribute__((used)) inline static int get_ms_timeout (double timeout) {
  if (timeout == 0) {
    return 0;
  }
  if (timeout < 0 || timeout >= 1e100) {
    return -1;
  }
  update_precise_now ();
  timeout -= precise_now;
  if (timeout < 0) {
    return 0;
  } else {
    return (int)(timeout * 1000);
  }
}
