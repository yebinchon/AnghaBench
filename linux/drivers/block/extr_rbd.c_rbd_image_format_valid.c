
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;



__attribute__((used)) static bool rbd_image_format_valid(u32 image_format)
{
 return image_format == 1 || image_format == 2;
}
