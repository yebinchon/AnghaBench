
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int vec3_t ;
struct TYPE_2__ {int (* DebugLineCreate ) () ;int (* DebugLineShow ) (int,int ,int ,int) ;} ;


 TYPE_1__ botimport ;
 int stub1 () ;
 int stub2 (int,int ,int ,int) ;

void AAS_PermanentLine(vec3_t start, vec3_t end, int color)
{
 int line;

 line = botimport.DebugLineCreate();
 botimport.DebugLineShow(line, start, end, color);
}
