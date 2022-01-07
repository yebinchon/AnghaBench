
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef enum AVPixelFormat { ____Placeholder_AVPixelFormat } AVPixelFormat ;






 int I420ToABGR (int const*,int const,int const*,int const,int const*,int const,int *,int,int,int) ;
 int I420ToRGB565 (int const*,int const,int const*,int const,int const*,int const,int *,int,int,int) ;

int ijk_image_convert(int width, int height,
    enum AVPixelFormat dst_format, uint8_t **dst_data, int *dst_linesize,
    enum AVPixelFormat src_format, const uint8_t **src_data, const int *src_linesize)
{
    return -1;
}
