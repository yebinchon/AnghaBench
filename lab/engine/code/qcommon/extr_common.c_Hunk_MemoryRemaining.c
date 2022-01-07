
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int permanent; int temp; } ;
struct TYPE_3__ {int permanent; int temp; } ;


 TYPE_2__ hunk_high ;
 TYPE_1__ hunk_low ;
 int s_hunkTotal ;

int Hunk_MemoryRemaining( void ) {
 int low, high;

 low = hunk_low.permanent > hunk_low.temp ? hunk_low.permanent : hunk_low.temp;
 high = hunk_high.permanent > hunk_high.temp ? hunk_high.permanent : hunk_high.temp;

 return s_hunkTotal - ( low + high );
}
