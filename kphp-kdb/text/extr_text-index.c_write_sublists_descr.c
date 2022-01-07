
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int sublists_num; int sublists_descr_offset; } ;


 TYPE_1__ Header ;
 int Sublists_packed ;
 int initcrc () ;
 int sublists_num ;
 int write_pos ;
 int writecrc () ;
 int writeout (int ,int) ;

void write_sublists_descr (void) {
  Header.sublists_descr_offset = write_pos;
  Header.sublists_num = sublists_num;
  initcrc ();
  writeout (Sublists_packed, 4 * sublists_num);
  writecrc ();
}
