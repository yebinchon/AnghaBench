
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct counter {scalar_t__ meta; int timezone; } ;



__attribute__((used)) static void copy_ancestor (struct counter *dst, struct counter *src) {
  dst->timezone = src->timezone;
  dst->meta = src->meta;
  src->meta = 0;

}
