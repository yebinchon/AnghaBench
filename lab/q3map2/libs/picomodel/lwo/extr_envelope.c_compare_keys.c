
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ time; } ;
typedef TYPE_1__ lwKey ;



__attribute__((used)) static int compare_keys( lwKey *k1, lwKey *k2 ){
 return k1->time > k2->time ? 1 : k1->time < k2->time ? -1 : 0;
}
