
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int extent_state_t ;
struct TYPE_3__ {int state; } ;
typedef TYPE_1__ eset_t ;



extent_state_t
eset_state_get(const eset_t *eset) {
 return eset->state;
}
