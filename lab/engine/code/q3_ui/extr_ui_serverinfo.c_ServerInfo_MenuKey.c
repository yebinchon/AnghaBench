
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int sfxHandle_t ;
struct TYPE_2__ {int menu; } ;


 int Menu_DefaultKey (int *,int) ;
 TYPE_1__ s_serverinfo ;

__attribute__((used)) static sfxHandle_t ServerInfo_MenuKey( int key )
{
 return ( Menu_DefaultKey( &s_serverinfo.menu, key ) );
}
