
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef TYPE_2__* my_src_ptr ;
typedef TYPE_3__* j_decompress_ptr ;
struct TYPE_8__ {int src; } ;
struct TYPE_6__ {size_t next_input_byte; scalar_t__ bytes_in_buffer; } ;
struct TYPE_7__ {TYPE_1__ pub; } ;


 int my_fill_input_buffer (TYPE_3__*) ;

__attribute__((used)) static void my_skip_input_data( j_decompress_ptr cinfo, long num_bytes ){
 my_src_ptr src = (my_src_ptr) cinfo->src;





 if ( num_bytes > 0 ) {
  while ( num_bytes > (long) src->pub.bytes_in_buffer ) {
   num_bytes -= (long) src->pub.bytes_in_buffer;
   (void) my_fill_input_buffer( cinfo );



  }
  src->pub.next_input_byte += (size_t) num_bytes;
  src->pub.bytes_in_buffer -= (size_t) num_bytes;
 }
}
