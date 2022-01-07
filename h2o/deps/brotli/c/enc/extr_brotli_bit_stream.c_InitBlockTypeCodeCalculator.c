
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int last_type; scalar_t__ second_last_type; } ;
typedef TYPE_1__ BlockTypeCodeCalculator ;



__attribute__((used)) static void InitBlockTypeCodeCalculator(BlockTypeCodeCalculator* self) {
  self->last_type = 1;
  self->second_last_type = 0;
}
