
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int permanent; int temp; } ;


 TYPE_1__* hunk_temp ;
 int * s_hunkData ;

void Hunk_ClearTempMemory( void ) {
 if ( s_hunkData != ((void*)0) ) {
  hunk_temp->temp = hunk_temp->permanent;
 }
}
