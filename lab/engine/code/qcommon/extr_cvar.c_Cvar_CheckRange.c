
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int qboolean ;
struct TYPE_3__ {float min; float max; int string; int name; int integral; int validate; } ;
typedef TYPE_1__ cvar_t ;


 int Cvar_Set (int ,int ) ;
 int qtrue ;

void Cvar_CheckRange( cvar_t *var, float min, float max, qboolean integral )
{
 var->validate = qtrue;
 var->min = min;
 var->max = max;
 var->integral = integral;


 Cvar_Set( var->name, var->string );
}
