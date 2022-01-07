
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ major; int minorFrom; } ;
typedef TYPE_1__ TtyDriver ;



__attribute__((used)) static int sortTtyDrivers(const void* va, const void* vb) {
   TtyDriver* a = (TtyDriver*) va;
   TtyDriver* b = (TtyDriver*) vb;
   return (a->major == b->major) ? (a->minorFrom - b->minorFrom) : (a->major - b->major);
}
