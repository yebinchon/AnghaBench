
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {float viewportWidth; float viewportHeight; } ;
typedef TYPE_1__ viewParms_t ;
typedef int* vec4_t ;



void R_TransformClipToWindow( const vec4_t clip, const viewParms_t *view, vec4_t normalized, vec4_t window ) {
 normalized[0] = clip[0] / clip[3];
 normalized[1] = clip[1] / clip[3];
 normalized[2] = ( clip[2] + clip[3] ) / ( 2 * clip[3] );

 window[0] = 0.5f * ( 1.0f + normalized[0] ) * view->viewportWidth;
 window[1] = 0.5f * ( 1.0f + normalized[1] ) * view->viewportHeight;
 window[2] = normalized[2];

 window[0] = (int) ( window[0] + 0.5 );
 window[1] = (int) ( window[1] + 0.5 );
}
