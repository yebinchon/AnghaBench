
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int* vec3_t ;


 float CLAMP (float,float,float) ;
 float MAX (float,int) ;
 int VectorCopy (int* const,int*) ;
 int VectorScale (int*,float,int*) ;
 scalar_t__ ceil (float) ;

void ColorToRGBM(const vec3_t color, unsigned char rgbm[4])
{
 vec3_t sample;
 float maxComponent;

 VectorCopy(color, sample);

 maxComponent = MAX(sample[0], sample[1]);
 maxComponent = MAX(maxComponent, sample[2]);
 maxComponent = CLAMP(maxComponent, 1.0f/255.0f, 1.0f);

 rgbm[3] = (unsigned char) ceil(maxComponent * 255.0f);
 maxComponent = 255.0f / rgbm[3];

 VectorScale(sample, maxComponent, sample);

 rgbm[0] = (unsigned char) (sample[0] * 255);
 rgbm[1] = (unsigned char) (sample[1] * 255);
 rgbm[2] = (unsigned char) (sample[2] * 255);
}
