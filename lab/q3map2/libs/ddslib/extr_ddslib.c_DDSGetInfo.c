
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int ddsPF_t ;
struct TYPE_4__ {int height; int width; int size; scalar_t__ magic; } ;
typedef TYPE_1__ ddsBuffer_t ;


 int DDSDecodePixelFormat (TYPE_1__*,int *) ;
 int DDSLittleLong (int ) ;

int DDSGetInfo( ddsBuffer_t *dds, int *width, int *height, ddsPF_t *pf ){

 if ( dds == ((void*)0) ) {
  return -1;
 }


 if ( *( (int*) dds->magic ) != *( (int*) "DDS " ) ) {
  return -1;
 }
 if ( DDSLittleLong( dds->size ) != 124 ) {
  return -1;
 }


 if ( width != ((void*)0) ) {
  *width = DDSLittleLong( dds->width );
 }
 if ( height != ((void*)0) ) {
  *height = DDSLittleLong( dds->height );
 }


 DDSDecodePixelFormat( dds, pf );


 return 0;
}
