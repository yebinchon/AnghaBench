
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int s ;
struct TYPE_4__ {scalar_t__ integer; } ;
struct TYPE_3__ {int (* Error ) (int ,char*,char*,char*,int) ;} ;


 int Com_sprintf (char*,int,char*,int) ;
 int ERR_FATAL ;



 int GL_NO_ERROR ;



 int qglGetError () ;
 TYPE_2__* r_ignoreGLErrors ;
 TYPE_1__ ri ;
 int strcpy (char*,char*) ;
 int stub1 (int ,char*,char*,char*,int) ;

void GL_CheckErrs( char *file, int line ) {
 int err;
 char s[64];

 err = qglGetError();
 if ( err == GL_NO_ERROR ) {
  return;
 }
 if ( r_ignoreGLErrors->integer ) {
  return;
 }
 switch( err ) {
  case 133:
   strcpy( s, "GL_INVALID_ENUM" );
   break;
  case 131:
   strcpy( s, "GL_INVALID_VALUE" );
   break;
  case 132:
   strcpy( s, "GL_INVALID_OPERATION" );
   break;
  case 129:
   strcpy( s, "GL_STACK_OVERFLOW" );
   break;
  case 128:
   strcpy( s, "GL_STACK_UNDERFLOW" );
   break;
  case 130:
   strcpy( s, "GL_OUT_OF_MEMORY" );
   break;
  default:
   Com_sprintf( s, sizeof(s), "%i", err);
   break;
 }

 ri.Error( ERR_FATAL, "GL_CheckErrors: %s in %s at line %d", s , file, line);
}
