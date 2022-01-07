
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mm {int refcount; } ;



void mm_retain(struct mm *mm) {
    mm->refcount++;
}
