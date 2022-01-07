
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct work_struct {int dummy; } ;


 int floppy_work_fn () ;

__attribute__((used)) static void floppy_work_workfn(struct work_struct *work)
{
 floppy_work_fn();
}
