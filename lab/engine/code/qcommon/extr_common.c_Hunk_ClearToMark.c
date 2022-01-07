
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int mark; int temp; int permanent; } ;
struct TYPE_3__ {int mark; int temp; int permanent; } ;


 TYPE_2__ hunk_high ;
 TYPE_1__ hunk_low ;

void Hunk_ClearToMark( void ) {
 hunk_low.permanent = hunk_low.temp = hunk_low.mark;
 hunk_high.permanent = hunk_high.temp = hunk_high.mark;
}
