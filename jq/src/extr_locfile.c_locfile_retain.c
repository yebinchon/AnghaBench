
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct locfile {int refct; } ;



struct locfile* locfile_retain(struct locfile* l) {
  l->refct++;
  return l;
}
