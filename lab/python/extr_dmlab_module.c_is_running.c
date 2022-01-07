
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int status; } ;
typedef TYPE_1__ LabObject ;





__attribute__((used)) static int is_running(LabObject* self) {
  switch (self->status) {
    case 129:
    case 128:
      return 1;
    default:
      return 0;
  }
}
