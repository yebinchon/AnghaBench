
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ stereoFrame_t ;
typedef int GLboolean ;


 int GL_FALSE ;
 int GL_TRUE ;
 int MODE_GREEN_MAGENTA ;
 int MODE_MAX ;
 int MODE_RED_BLUE ;
 int MODE_RED_GREEN ;
 scalar_t__ STEREO_LEFT ;
 scalar_t__ STEREO_RIGHT ;

void R_SetColorMode(GLboolean *rgba, stereoFrame_t stereoFrame, int colormode)
{
 rgba[0] = rgba[1] = rgba[2] = rgba[3] = GL_TRUE;

 if(colormode > MODE_MAX)
 {
  if(stereoFrame == STEREO_LEFT)
   stereoFrame = STEREO_RIGHT;
  else if(stereoFrame == STEREO_RIGHT)
   stereoFrame = STEREO_LEFT;

  colormode -= MODE_MAX;
 }

 if(colormode == MODE_GREEN_MAGENTA)
 {
  if(stereoFrame == STEREO_LEFT)
   rgba[0] = rgba[2] = GL_FALSE;
  else if(stereoFrame == STEREO_RIGHT)
   rgba[1] = GL_FALSE;
 }
 else
 {
  if(stereoFrame == STEREO_LEFT)
   rgba[1] = rgba[2] = GL_FALSE;
  else if(stereoFrame == STEREO_RIGHT)
  {
   rgba[0] = GL_FALSE;

   if(colormode == MODE_RED_BLUE)
    rgba[1] = GL_FALSE;
   else if(colormode == MODE_RED_GREEN)
    rgba[2] = GL_FALSE;
  }
 }
}
