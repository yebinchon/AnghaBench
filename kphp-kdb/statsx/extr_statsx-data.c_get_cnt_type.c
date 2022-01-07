
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static int get_cnt_type (long long cnt_id) {
  if (cnt_id >= 0) { return 0;}
  else if (cnt_id < 0 && cnt_id >= -1000000000) { return 1;}
  else if (cnt_id < -1000000000) {return 2;}
  else { return 3;}
}
