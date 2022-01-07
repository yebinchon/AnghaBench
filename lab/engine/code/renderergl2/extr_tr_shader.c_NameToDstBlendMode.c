
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ integer; } ;
struct TYPE_5__ {int (* Printf ) (int ,char*,char const*,int ) ;} ;
struct TYPE_4__ {int name; } ;


 int GLS_DSTBLEND_DST_ALPHA ;
 int GLS_DSTBLEND_ONE ;
 int GLS_DSTBLEND_ONE_MINUS_DST_ALPHA ;
 int GLS_DSTBLEND_ONE_MINUS_SRC_ALPHA ;
 int GLS_DSTBLEND_ONE_MINUS_SRC_COLOR ;
 int GLS_DSTBLEND_SRC_ALPHA ;
 int GLS_DSTBLEND_SRC_COLOR ;
 int GLS_DSTBLEND_ZERO ;
 int PRINT_WARNING ;
 int Q_stricmp (char const*,char*) ;
 TYPE_3__* r_ignoreDstAlpha ;
 TYPE_2__ ri ;
 TYPE_1__ shader ;
 int stub1 (int ,char*,char const*,int ) ;

__attribute__((used)) static int NameToDstBlendMode( const char *name )
{
 if ( !Q_stricmp( name, "GL_ONE" ) )
 {
  return GLS_DSTBLEND_ONE;
 }
 else if ( !Q_stricmp( name, "GL_ZERO" ) )
 {
  return GLS_DSTBLEND_ZERO;
 }
 else if ( !Q_stricmp( name, "GL_SRC_ALPHA" ) )
 {
  return GLS_DSTBLEND_SRC_ALPHA;
 }
 else if ( !Q_stricmp( name, "GL_ONE_MINUS_SRC_ALPHA" ) )
 {
  return GLS_DSTBLEND_ONE_MINUS_SRC_ALPHA;
 }
 else if ( !Q_stricmp( name, "GL_DST_ALPHA" ) )
 {
  if (r_ignoreDstAlpha->integer)
   return GLS_DSTBLEND_ONE;

  return GLS_DSTBLEND_DST_ALPHA;
 }
 else if ( !Q_stricmp( name, "GL_ONE_MINUS_DST_ALPHA" ) )
 {
  if (r_ignoreDstAlpha->integer)
   return GLS_DSTBLEND_ZERO;

  return GLS_DSTBLEND_ONE_MINUS_DST_ALPHA;
 }
 else if ( !Q_stricmp( name, "GL_SRC_COLOR" ) )
 {
  return GLS_DSTBLEND_SRC_COLOR;
 }
 else if ( !Q_stricmp( name, "GL_ONE_MINUS_SRC_COLOR" ) )
 {
  return GLS_DSTBLEND_ONE_MINUS_SRC_COLOR;
 }

 ri.Printf( PRINT_WARNING, "WARNING: unknown blend mode '%s' in shader '%s', substituting GL_ONE\n", name, shader.name );
 return GLS_DSTBLEND_ONE;
}
