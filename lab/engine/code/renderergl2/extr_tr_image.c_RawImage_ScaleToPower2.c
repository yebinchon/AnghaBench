
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_7__ ;
typedef struct TYPE_13__ TYPE_6__ ;
typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int qboolean ;
typedef scalar_t__ imgType_t ;
typedef int imgFlags_t ;
typedef int byte ;
struct TYPE_14__ {int maxTextureSize; } ;
struct TYPE_13__ {int integer; } ;
struct TYPE_12__ {int integer; } ;
struct TYPE_11__ {int integer; } ;
struct TYPE_10__ {scalar_t__ integer; } ;
struct TYPE_9__ {int integer; } ;
struct TYPE_8__ {int * (* Hunk_AllocateTempMemory ) (int) ;} ;


 int Com_Memcpy (int *,int *,int) ;
 int FCBIByBlock (int *,int,int,int,int) ;
 int FillInNormalizedZ (int *,int *,int,int) ;
 int IMGFLAG_CLAMPTOEDGE ;
 int IMGFLAG_MIPMAP ;
 int IMGFLAG_PICMIP ;
 scalar_t__ IMGTYPE_COLORALPHA ;
 scalar_t__ IMGTYPE_NORMAL ;
 scalar_t__ IMGTYPE_NORMALHEIGHT ;
 int MAX (int,int) ;
 int NextPowerOfTwo (int) ;
 int RGBAtoYCoCgA (int *,int *,int,int) ;
 int R_MipMapNormalHeight (int *,int *,int,int,int ) ;
 int R_MipMapsRGB (int *,int,int) ;
 int ResampleTexture (int *,int,int,int *,int,int) ;
 int YCoCgAtoRGBA (int *,int *,int,int) ;
 TYPE_7__ glConfig ;
 int qfalse ;
 TYPE_6__* r_imageUpsample ;
 TYPE_5__* r_imageUpsampleMaxSize ;
 TYPE_4__* r_picmip ;
 TYPE_3__* r_roundImagesDown ;
 TYPE_2__* r_textureMaxSize ;
 TYPE_1__ ri ;
 int * stub1 (int) ;
 int * stub2 (int) ;

__attribute__((used)) static qboolean RawImage_ScaleToPower2( byte **data, int *inout_width, int *inout_height, imgType_t type, imgFlags_t flags, byte **resampledBuffer, qboolean capMaxSize )
{
 int width = *inout_width;
 int height = *inout_height;
 int scaled_width;
 int scaled_height;
 qboolean picmip = flags & IMGFLAG_PICMIP;
 qboolean mipmap = flags & IMGFLAG_MIPMAP;
 qboolean clampToEdge = flags & IMGFLAG_CLAMPTOEDGE;
 qboolean scaled;


 capMaxSize = capMaxSize && *data != ((void*)0);



 if (!mipmap)
 {
  scaled_width = width;
  scaled_height = height;
 }
 else
 {
  scaled_width = NextPowerOfTwo(width);
  scaled_height = NextPowerOfTwo(height);
 }

 if ( r_roundImagesDown->integer && scaled_width > width )
  scaled_width >>= 1;
 if ( r_roundImagesDown->integer && scaled_height > height )
  scaled_height >>= 1;

 if ( capMaxSize ) {
  while ( scaled_width > r_textureMaxSize->integer ||
          scaled_height > r_textureMaxSize->integer ) {
   scaled_width = scaled_width > 1 ? scaled_width >> 1 : scaled_width;
   scaled_height = scaled_height > 1 ? scaled_height >> 1 : scaled_height;
  }
 }

 if ( picmip && data && resampledBuffer && r_imageUpsample->integer &&
      scaled_width < r_imageUpsampleMaxSize->integer && scaled_height < r_imageUpsampleMaxSize->integer)
 {
  int finalwidth, finalheight;




  finalwidth = scaled_width << r_imageUpsample->integer;
  finalheight = scaled_height << r_imageUpsample->integer;

  while ( finalwidth > r_imageUpsampleMaxSize->integer
   || finalheight > r_imageUpsampleMaxSize->integer ) {
   finalwidth >>= 1;
   finalheight >>= 1;
  }

  while ( finalwidth > glConfig.maxTextureSize
   || finalheight > glConfig.maxTextureSize ) {
   finalwidth >>= 1;
   finalheight >>= 1;
  }

  *resampledBuffer = ri.Hunk_AllocateTempMemory( finalwidth * finalheight * 4 );

  if (scaled_width != width || scaled_height != height)
   ResampleTexture (*data, width, height, *resampledBuffer, scaled_width, scaled_height);
  else
   Com_Memcpy(*resampledBuffer, *data, width * height * 4);

  if (type == IMGTYPE_COLORALPHA)
   RGBAtoYCoCgA(*resampledBuffer, *resampledBuffer, scaled_width, scaled_height);

  while (scaled_width < finalwidth || scaled_height < finalheight)
  {
   scaled_width <<= 1;
   scaled_height <<= 1;

   FCBIByBlock(*resampledBuffer, scaled_width, scaled_height, clampToEdge, (type == IMGTYPE_NORMAL || type == IMGTYPE_NORMALHEIGHT));
  }

  if (type == IMGTYPE_COLORALPHA)
   YCoCgAtoRGBA(*resampledBuffer, *resampledBuffer, scaled_width, scaled_height);
  else if (type == IMGTYPE_NORMAL || type == IMGTYPE_NORMALHEIGHT)
   FillInNormalizedZ(*resampledBuffer, *resampledBuffer, scaled_width, scaled_height);





  *data = *resampledBuffer;
 }
 else if ( scaled_width != width || scaled_height != height )
 {
  if (data && resampledBuffer)
  {
   *resampledBuffer = ri.Hunk_AllocateTempMemory( scaled_width * scaled_height * 4 );
   ResampleTexture (*data, width, height, *resampledBuffer, scaled_width, scaled_height);
   *data = *resampledBuffer;
  }
 }

 width = scaled_width;
 height = scaled_height;




 if ( picmip ) {
  scaled_width >>= r_picmip->integer;
  scaled_height >>= r_picmip->integer;
 }






 while ( scaled_width > glConfig.maxTextureSize
  || scaled_height > glConfig.maxTextureSize ) {
  scaled_width >>= 1;
  scaled_height >>= 1;
 }




 scaled_width = MAX(1, scaled_width);
 scaled_height = MAX(1, scaled_height);

 scaled = (width != scaled_width) || (height != scaled_height);




 if (data)
 {
  while (width > scaled_width || height > scaled_height)
  {
   if (type == IMGTYPE_NORMAL || type == IMGTYPE_NORMALHEIGHT)
    R_MipMapNormalHeight(*data, *data, width, height, qfalse);
   else
    R_MipMapsRGB(*data, width, height);

   width = MAX(1, width >> 1);
   height = MAX(1, height >> 1);
  }
 }

 *inout_width = width;
 *inout_height = height;

 return scaled;
}
