
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int attributes; int pixel_size; int height; int width; int y_origin; int x_origin; int colormap_size; int colormap_length; int colormap_index; int image_type; int colormap_type; int id_length; } ;
typedef TYPE_1__ TargaHeader ;


 int Sys_Printf (char*,char const*,int ,int ,int ,int ,int ,int ,int ,int ,int ,int ,int ,int ) ;

void TargaError( TargaHeader *t, const char *message ){
 Sys_Printf( "%s\n:TargaHeader:\nuint8 id_length = %i;\nuint8 colormap_type = %i;\nuint8 image_type = %i;\nuint16 colormap_index = %i;\nuint16 colormap_length = %i;\nuint8 colormap_size = %i;\nuint16 x_origin = %i;\nuint16 y_origin = %i;\nuint16 width = %i;\nuint16 height = %i;\nuint8 pixel_size = %i;\nuint8 attributes = %i;\n", message, t->id_length, t->colormap_type, t->image_type, t->colormap_index, t->colormap_length, t->colormap_size, t->x_origin, t->y_origin, t->width, t->height, t->pixel_size, t->attributes );
}
