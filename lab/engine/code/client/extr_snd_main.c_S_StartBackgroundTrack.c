
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int (* StartBackgroundTrack ) (char const*,char const*) ;} ;


 TYPE_1__ si ;
 int stub1 (char const*,char const*) ;

void S_StartBackgroundTrack( const char *intro, const char *loop )
{
 if( si.StartBackgroundTrack ) {
  si.StartBackgroundTrack( intro, loop );
 }
}
