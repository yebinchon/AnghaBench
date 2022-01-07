
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct image_s {int dummy; } ;


 int GL_Bind (struct image_s*) ;
 int GL_TRIANGLE_STRIP ;
 int const HALF_SKY_SUBDIVISIONS ;
 int qglBegin (int ) ;
 int qglEnd () ;
 int qglTexCoord2fv (int ) ;
 int qglVertex3fv (int ) ;
 int ** s_skyPoints ;
 int ** s_skyTexCoords ;

__attribute__((used)) static void DrawSkySide( struct image_s *image, const int mins[2], const int maxs[2] )
{
 int s, t;

 GL_Bind( image );

 for ( t = mins[1]+HALF_SKY_SUBDIVISIONS; t < maxs[1]+HALF_SKY_SUBDIVISIONS; t++ )
 {
  qglBegin( GL_TRIANGLE_STRIP );

  for ( s = mins[0]+HALF_SKY_SUBDIVISIONS; s <= maxs[0]+HALF_SKY_SUBDIVISIONS; s++ )
  {
   qglTexCoord2fv( s_skyTexCoords[t][s] );
   qglVertex3fv( s_skyPoints[t][s] );

   qglTexCoord2fv( s_skyTexCoords[t+1][s] );
   qglVertex3fv( s_skyPoints[t+1][s] );
  }

  qglEnd();
 }
}
