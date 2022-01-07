
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;



__attribute__((used)) static void d2dColorToRGB(uint32_t color, double *r, double *g, double *b)
{
 uint8_t rr, gg, bb;

 rr = (color & 0xFF0000) >> 16;
 gg = (color & 0x00FF00) >> 8;
 bb = color & 0x0000FF;
 *r = ((double) rr) / 255.0;
 *g = ((double) gg) / 255.0;
 *b = ((double) bb) / 255.0;
}
