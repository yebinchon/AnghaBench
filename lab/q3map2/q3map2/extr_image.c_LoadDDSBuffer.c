
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ ddsPF_t ;
typedef int ddsBuffer_t ;
typedef int byte ;


 int DDSDecompress (int *,int *) ;
 scalar_t__ DDSGetInfo (int *,int*,int*,scalar_t__*) ;
 scalar_t__ DDS_PF_ARGB8888 ;
 scalar_t__ DDS_PF_DXT1 ;
 scalar_t__ DDS_PF_DXT3 ;
 scalar_t__ DDS_PF_DXT5 ;
 int SYS_WRN ;
 int Sys_FPrintf (int ,char*,...) ;
 int * safe_malloc (int) ;

__attribute__((used)) static void LoadDDSBuffer( byte *buffer, int size, byte **pixels, int *width, int *height ){
 int w, h;
 ddsPF_t pf;



 if ( buffer == ((void*)0) || size <= 0 || pixels == ((void*)0) || width == ((void*)0) || height == ((void*)0) ) {
  return;
 }


 *pixels = 0;
 *width = 0;
 *height = 0;


 if ( DDSGetInfo( (ddsBuffer_t*) buffer, &w, &h, &pf ) ) {
  Sys_FPrintf( SYS_WRN, "WARNING: Invalid DDS texture\n" );
  return;
 }


 if ( pf != DDS_PF_ARGB8888 && pf != DDS_PF_DXT1 && pf != DDS_PF_DXT3 && pf != DDS_PF_DXT5 ) {
  Sys_FPrintf( SYS_WRN, "WARNING: Only DDS texture formats ARGB8888, DXT1, DXT3, and DXT5 are supported (%d)\n", pf );
  return;
 }


 *width = w;
 *height = h;
 *pixels = safe_malloc( w * h * 4 );


 DDSDecompress( (ddsBuffer_t*) buffer, *pixels );
}
