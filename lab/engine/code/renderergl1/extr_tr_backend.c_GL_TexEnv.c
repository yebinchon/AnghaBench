
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int* texEnv; size_t currenttmu; } ;
struct TYPE_3__ {int (* Error ) (int ,char*,int) ;} ;


 int ERR_DROP ;




 int GL_TEXTURE_ENV ;
 int GL_TEXTURE_ENV_MODE ;
 TYPE_2__ glState ;
 int qglTexEnvf (int ,int ,int const) ;
 TYPE_1__ ri ;
 int stub1 (int ,char*,int) ;

void GL_TexEnv( int env )
{
 if ( env == glState.texEnv[glState.currenttmu] )
 {
  return;
 }

 glState.texEnv[glState.currenttmu] = env;


 switch ( env )
 {
 case 129:
  qglTexEnvf( GL_TEXTURE_ENV, GL_TEXTURE_ENV_MODE, 129 );
  break;
 case 128:
  qglTexEnvf( GL_TEXTURE_ENV, GL_TEXTURE_ENV_MODE, 128 );
  break;
 case 130:
  qglTexEnvf( GL_TEXTURE_ENV, GL_TEXTURE_ENV_MODE, 130 );
  break;
 case 131:
  qglTexEnvf( GL_TEXTURE_ENV, GL_TEXTURE_ENV_MODE, 131 );
  break;
 default:
  ri.Error( ERR_DROP, "GL_TexEnv: invalid env '%d' passed", env );
  break;
 }
}
