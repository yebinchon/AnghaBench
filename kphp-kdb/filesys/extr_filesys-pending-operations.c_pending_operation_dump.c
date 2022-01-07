
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pending_operation {int newpath; int oldpath; int type; } ;


 int kprintf (char*,int ,int ,int ) ;

__attribute__((used)) static void pending_operation_dump (struct pending_operation *P) {
  kprintf ("type:%d, oldpath: %s, newpath: %s\n", P->type, P->oldpath, P->newpath);
}
