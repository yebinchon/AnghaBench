
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ display; scalar_t__ current; } ;


 TYPE_1__ con ;

void Con_PageDown( void ) {
 con.display += 2;
 if (con.display > con.current) {
  con.display = con.current;
 }
}
