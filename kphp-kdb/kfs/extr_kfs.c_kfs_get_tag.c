
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lev_tag {scalar_t__ type; int tag; } ;
struct lev_start {int extra_bytes; scalar_t__ type; } ;


 scalar_t__ LEV_START ;
 scalar_t__ LEV_TAG ;
 int memcpy (unsigned char*,int ,int) ;

int kfs_get_tag (unsigned char *start, int size, unsigned char tag[16]) {
  struct lev_start *E = (struct lev_start *) start;
  if (size < 24 || E->extra_bytes < 0 || E->extra_bytes > 4096) { return -2; }
  if (E->type != LEV_START) {
    return -1;
  }
  int s = 24 + ((E->extra_bytes + 3) & -4);
  if (size < s) { return -2; }
  start += s;
  size -= s;
  struct lev_tag *T = (struct lev_tag *) start;
  if (T->type != LEV_TAG) {
    return -1;
  }
  if (size < 20) {
    return -2;
  }
  memcpy (tag, T->tag, 16);
  return 0;
}
