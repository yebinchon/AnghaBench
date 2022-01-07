
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int ddsPF_t ;
struct TYPE_4__ {unsigned int fourCC; } ;
struct TYPE_5__ {TYPE_1__ pixelFormat; } ;
typedef TYPE_2__ ddsBuffer_t ;


 int DDS_PF_ARGB8888 ;
 int DDS_PF_DXT1 ;
 int DDS_PF_DXT2 ;
 int DDS_PF_DXT3 ;
 int DDS_PF_DXT4 ;
 int DDS_PF_DXT5 ;
 int DDS_PF_UNKNOWN ;

__attribute__((used)) static void DDSDecodePixelFormat( ddsBuffer_t *dds, ddsPF_t *pf ){
 unsigned int fourCC;



 if ( dds == ((void*)0) || pf == ((void*)0) ) {
  return;
 }


 fourCC = dds->pixelFormat.fourCC;


 if ( fourCC == 0 ) {
  *pf = DDS_PF_ARGB8888;
 }
 else if ( fourCC == *( (unsigned int*) "DXT1" ) ) {
  *pf = DDS_PF_DXT1;
 }
 else if ( fourCC == *( (unsigned int*) "DXT2" ) ) {
  *pf = DDS_PF_DXT2;
 }
 else if ( fourCC == *( (unsigned int*) "DXT3" ) ) {
  *pf = DDS_PF_DXT3;
 }
 else if ( fourCC == *( (unsigned int*) "DXT4" ) ) {
  *pf = DDS_PF_DXT4;
 }
 else if ( fourCC == *( (unsigned int*) "DXT5" ) ) {
  *pf = DDS_PF_DXT5;
 }
 else{
  *pf = DDS_PF_UNKNOWN;
 }
}
