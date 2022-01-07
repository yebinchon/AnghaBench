
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int png_struct ;
typedef scalar_t__ png_size_t ;
typedef int png_byte ;
struct TYPE_2__ {size_t offset; scalar_t__ size; int * buffer; } ;
typedef TYPE_1__ pngBuffer_t ;


 int memcpy (int *,int *,scalar_t__) ;
 scalar_t__ png_get_io_ptr (int *) ;

void PNGReadData( png_struct *png, png_byte *buffer, png_size_t size ){
 pngBuffer_t *pb = (pngBuffer_t*) png_get_io_ptr( png );


 if ( ( pb->offset + size ) > pb->size ) {
  size = ( pb->size - pb->offset );
 }
 memcpy( buffer, &pb->buffer[ pb->offset ], size );
 pb->offset += size;

}
