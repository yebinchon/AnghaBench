
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ isMirror; scalar_t__ vertFlipBuffer; } ;
struct TYPE_6__ {TYPE_1__ viewParms; } ;
struct TYPE_5__ {int faceCulling; scalar_t__ faceCullFront; } ;
typedef scalar_t__ GLenum ;


 int CT_FRONT_SIDED ;
 int CT_TWO_SIDED ;
 scalar_t__ GL_BACK ;
 int GL_CULL_FACE ;
 scalar_t__ GL_FRONT ;
 TYPE_3__ backEnd ;
 TYPE_2__ glState ;
 int qglCullFace (scalar_t__) ;
 int qglDisable (int ) ;
 int qglEnable (int ) ;

void GL_Cull( int cullType ) {
 if ( cullType == CT_TWO_SIDED )
 {
  if ( glState.faceCulling != CT_TWO_SIDED )
  {
   qglDisable( GL_CULL_FACE );
  }
 }
 else
 {
  GLenum faceCullFront;
  if ( backEnd.viewParms.isMirror != backEnd.viewParms.vertFlipBuffer )
  {
   faceCullFront = (cullType == CT_FRONT_SIDED) ? GL_BACK : GL_FRONT;
  }
  else
  {
   faceCullFront = (cullType == CT_FRONT_SIDED) ? GL_FRONT : GL_BACK;
  }

  if ( glState.faceCulling != cullType )
  {
   qglEnable( GL_CULL_FACE );
  }

  if ( glState.faceCullFront != faceCullFront )
  {
   qglCullFace( faceCullFront );
   glState.faceCullFront = faceCullFront;
  }

 }

 glState.faceCulling = cullType;
}
