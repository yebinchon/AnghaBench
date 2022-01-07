
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int mrk; } ;


 int * allocated_curfile_data_ptr ;
 TYPE_1__ curfile ;
 int dyn_release (int ) ;
 int free (int *) ;

__attribute__((used)) static void curfile_data_free (int release) {
  if (release) {
    dyn_release (curfile.mrk);
  }
  if (allocated_curfile_data_ptr != ((void*)0)) {
    free (allocated_curfile_data_ptr);
    allocated_curfile_data_ptr = ((void*)0);
  }
}
