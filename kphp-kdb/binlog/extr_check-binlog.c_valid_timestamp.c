
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int time (int *) ;

__attribute__((used)) static inline int valid_timestamp (int timestamp) {
  static int end_timestamp = 0;
  if (!end_timestamp) {
    end_timestamp = time (((void*)0)) + 86400;
    if (end_timestamp < 0) {
      end_timestamp = 0x7fffffff;
    }
  }

  return 1136073600 <= timestamp && timestamp <= end_timestamp;
}
