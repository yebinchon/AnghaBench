
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int tag; } ;
typedef TYPE_1__ Process ;



void Process_toggleTag(Process* this) {
   this->tag = this->tag == 1 ? 0 : 1;
}
