
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int flags; int texnum; } ;
typedef TYPE_1__ image_t ;
struct TYPE_10__ {scalar_t__ hardwareType; } ;
struct TYPE_9__ {int maximize; int minimize; int name; } ;
struct TYPE_8__ {int (* Printf ) (int ,char*) ;} ;
struct TYPE_7__ {int numImages; TYPE_1__** images; } ;


 scalar_t__ GLHW_3DFX_2D3D ;
 int GL_TEXTURE_2D ;
 int GL_TEXTURE_MAG_FILTER ;
 int GL_TEXTURE_MIN_FILTER ;
 int IMGFLAG_CUBEMAP ;
 int IMGFLAG_MIPMAP ;
 int PRINT_ALL ;
 int Q_stricmp (int ,char const*) ;
 TYPE_5__ glConfig ;
 int gl_filter_max ;
 int gl_filter_min ;
 TYPE_4__* modes ;
 int qglTextureParameterfEXT (int ,int ,int ,int ) ;
 TYPE_3__ ri ;
 int stub1 (int ,char*) ;
 int stub2 (int ,char*) ;
 TYPE_2__ tr ;

void GL_TextureMode( const char *string ) {
 int i;
 image_t *glt;

 for ( i=0 ; i< 6 ; i++ ) {
  if ( !Q_stricmp( modes[i].name, string ) ) {
   break;
  }
 }



 if ( i == 5 && glConfig.hardwareType == GLHW_3DFX_2D3D ) {
  ri.Printf( PRINT_ALL, "Refusing to set trilinear on a voodoo.\n" );
  i = 3;
 }


 if ( i == 6 ) {
  ri.Printf (PRINT_ALL, "bad filter name\n");
  return;
 }

 gl_filter_min = modes[i].minimize;
 gl_filter_max = modes[i].maximize;


 for ( i = 0 ; i < tr.numImages ; i++ ) {
  glt = tr.images[ i ];
  if ( glt->flags & IMGFLAG_MIPMAP && !(glt->flags & IMGFLAG_CUBEMAP)) {
   qglTextureParameterfEXT(glt->texnum, GL_TEXTURE_2D, GL_TEXTURE_MIN_FILTER, gl_filter_min);
   qglTextureParameterfEXT(glt->texnum, GL_TEXTURE_2D, GL_TEXTURE_MAG_FILTER, gl_filter_max);
  }
 }
}
