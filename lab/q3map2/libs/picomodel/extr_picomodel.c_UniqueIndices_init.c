
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {void* lessData; int lessFunc; } ;
typedef TYPE_1__ UniqueIndices ;
typedef int LessFunc ;



void UniqueIndices_init(UniqueIndices* self, LessFunc lessFunc, void* lessData) {
 self->lessFunc = lessFunc;
 self->lessData = lessData;
}
