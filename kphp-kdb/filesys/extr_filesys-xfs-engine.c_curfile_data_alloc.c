
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int new_size; } ;
struct TYPE_4__ {int data; TYPE_1__ E; int mrk; } ;


 int allocated_curfile_data_ptr ;
 int assert (int ) ;
 TYPE_2__ curfile ;
 int dyn_mark (int ) ;
 int malloc (int ) ;
 int zmalloc (unsigned int) ;

__attribute__((used)) static void curfile_data_alloc (unsigned parts) {
  dyn_mark (curfile.mrk);
  unsigned size = parts << 16;
  if (size > 0x1000000) {
    curfile.data = allocated_curfile_data_ptr = malloc (curfile.E.new_size);
    assert (curfile.data);
  } else {
    curfile.data = zmalloc (size);
  }
}
