
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * name; int tempfile; } ;


 int ARRAY_SIZE (TYPE_1__*) ;
 int delete_tempfile (int *) ;
 TYPE_1__* diff_temp ;
 scalar_t__ is_tempfile_active (int ) ;

__attribute__((used)) static void remove_tempfile(void)
{
 int i;
 for (i = 0; i < ARRAY_SIZE(diff_temp); i++) {
  if (is_tempfile_active(diff_temp[i].tempfile))
   delete_tempfile(&diff_temp[i].tempfile);
  diff_temp[i].name = ((void*)0);
 }
}
