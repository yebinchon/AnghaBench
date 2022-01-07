
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ buffer_deinit (int *) ;
 int die_errno (char*) ;
 int report_buffer ;

void fast_export_deinit(void)
{
 if (buffer_deinit(&report_buffer))
  die_errno("error closing fast-import feedback stream");
}
