
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct netrule {int type; unsigned int ip; int mask1; int mask2; int level1; int level2; } ;


 int sscanf (char*,char*,unsigned int*,unsigned int*,unsigned int*,unsigned int*,unsigned int*,...) ;

int read_rule (char *s, struct netrule *A) {
  unsigned x,y,z,t;
  unsigned mask1, mask2;
  int type = 0;
  if (sscanf (s, "%u.%u.%u.%u/%u /%u", &x, &y, &z, &t, &mask1, &mask2) == 6) {
    type = 2;
  } else if (sscanf (s, "%u.%u.%u.%u/%u", &x, &y, &z, &t, &mask1) == 5) {
    type = 1;
  }
  if (type) {
    if (x >= 256 || y >= 256 || z >= 256 || t >= 256 || mask1 >= 32 || (type == 2 && mask2 >= 32)) {
      return 0;
    }
    A->type = type;
    A->ip = (x << 24) + (y << 16) + (z << 8) + t;
    A->mask1 = (1 << (32 - mask1)) - 1;
    A->mask2 = (1 << (32 - mask2)) - 1;
    A->level1 = 32 - mask1;
    A->level2 = 32 - mask2;
    return 1;
  } else {
    return 0;
  }
}
