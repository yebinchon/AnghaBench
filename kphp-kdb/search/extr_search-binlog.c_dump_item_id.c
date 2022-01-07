
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SHORT_ID (long long) ;
 int fprintf (int ,char*,int,...) ;
 int stdout ;

void dump_item_id (long long item_id) {
  int t = SHORT_ID (item_id);
  if (t) {
    fprintf (stdout, "%d_%d", (int) item_id, (int) t);
  } else {
    fprintf (stdout, "%d", (int) item_id);
  }
}
