
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef TYPE_2__* my_src_ptr ;
typedef TYPE_3__* j_decompress_ptr ;
typedef int boolean ;
struct TYPE_9__ {int src; } ;
struct TYPE_7__ {size_t bytes_in_buffer; void** next_input_byte; } ;
struct TYPE_8__ {size_t src_size; size_t src_buffer; scalar_t__ start_of_file; TYPE_1__ pub; void** buffer; } ;
typedef void* JOCTET ;


 int ERREXIT (TYPE_3__*,int ) ;
 scalar_t__ FALSE ;
 size_t INPUT_BUF_SIZE ;
 int JERR_INPUT_EMPTY ;
 scalar_t__ JPEG_EOI ;
 int JWRN_JPEG_EOF ;
 int TRUE ;
 int WARNMS (TYPE_3__*,int ) ;
 int memcpy (void**,size_t,size_t) ;

__attribute__((used)) static boolean my_fill_input_buffer( j_decompress_ptr cinfo ){
 my_src_ptr src = (my_src_ptr) cinfo->src;
 size_t nbytes;

 if ( src->src_size > INPUT_BUF_SIZE ) {
  nbytes = INPUT_BUF_SIZE;
 }
 else{
  nbytes = src->src_size;
 }

 memcpy( src->buffer, src->src_buffer, nbytes );
 src->src_buffer += nbytes;
 src->src_size -= nbytes;

 if ( nbytes <= 0 ) {
  if ( src->start_of_file ) {
   ERREXIT( cinfo, JERR_INPUT_EMPTY );
  }
  WARNMS( cinfo, JWRN_JPEG_EOF );

  src->buffer[0] = (JOCTET) 0xFF;
  src->buffer[1] = (JOCTET) JPEG_EOI;
  nbytes = 2;
 }

 src->pub.next_input_byte = src->buffer;
 src->pub.bytes_in_buffer = nbytes;
 src->start_of_file = FALSE;

 return TRUE;
}
