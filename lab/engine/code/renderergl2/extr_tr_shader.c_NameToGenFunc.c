
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int genFunc_t ;
struct TYPE_4__ {int (* Printf ) (int ,char*,char const*,int ) ;} ;
struct TYPE_3__ {int name; } ;


 int GF_INVERSE_SAWTOOTH ;
 int GF_NOISE ;
 int GF_SAWTOOTH ;
 int GF_SIN ;
 int GF_SQUARE ;
 int GF_TRIANGLE ;
 int PRINT_WARNING ;
 int Q_stricmp (char const*,char*) ;
 TYPE_2__ ri ;
 TYPE_1__ shader ;
 int stub1 (int ,char*,char const*,int ) ;

__attribute__((used)) static genFunc_t NameToGenFunc( const char *funcname )
{
 if ( !Q_stricmp( funcname, "sin" ) )
 {
  return GF_SIN;
 }
 else if ( !Q_stricmp( funcname, "square" ) )
 {
  return GF_SQUARE;
 }
 else if ( !Q_stricmp( funcname, "triangle" ) )
 {
  return GF_TRIANGLE;
 }
 else if ( !Q_stricmp( funcname, "sawtooth" ) )
 {
  return GF_SAWTOOTH;
 }
 else if ( !Q_stricmp( funcname, "inversesawtooth" ) )
 {
  return GF_INVERSE_SAWTOOTH;
 }
 else if ( !Q_stricmp( funcname, "noise" ) )
 {
  return GF_NOISE;
 }

 ri.Printf( PRINT_WARNING, "WARNING: invalid genfunc name '%s' in shader '%s'\n", funcname, shader.name );
 return GF_SIN;
}
