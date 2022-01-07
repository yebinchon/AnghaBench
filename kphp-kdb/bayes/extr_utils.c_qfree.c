
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 void free (void*) ;
 size_t memory_used ;

void qfree (void *p, size_t x) {
  memory_used -= x;
  return free (p);
}
