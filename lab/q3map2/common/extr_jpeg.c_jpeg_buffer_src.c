
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct jpeg_source_mgr {int dummy; } ;
typedef TYPE_3__* my_src_ptr ;
typedef int my_source_mgr ;
typedef TYPE_4__* j_decompress_ptr ;
typedef int j_common_ptr ;
struct TYPE_9__ {struct jpeg_source_mgr* src; TYPE_1__* mem; } ;
struct TYPE_7__ {int * next_input_byte; scalar_t__ bytes_in_buffer; int term_source; int resync_to_restart; int skip_input_data; int fill_input_buffer; int init_source; } ;
struct TYPE_8__ {int src_size; TYPE_2__ pub; int * src_buffer; int * buffer; } ;
struct TYPE_6__ {scalar_t__ (* alloc_small ) (int ,int ,int) ;} ;
typedef int JOCTET ;


 int INPUT_BUF_SIZE ;
 int JPOOL_PERMANENT ;
 int jpeg_resync_to_restart ;
 int my_fill_input_buffer ;
 int my_init_source ;
 int my_skip_input_data ;
 int my_term_source ;
 scalar_t__ stub1 (int ,int ,int) ;
 scalar_t__ stub2 (int ,int ,int) ;

__attribute__((used)) static void jpeg_buffer_src( j_decompress_ptr cinfo, void* buffer, int bufsize ){
 my_src_ptr src;
 if ( cinfo->src == ((void*)0) ) {
  cinfo->src = (struct jpeg_source_mgr *)
      ( *cinfo->mem->alloc_small )( (j_common_ptr) cinfo, JPOOL_PERMANENT,
               sizeof( my_source_mgr ) );
  src = (my_src_ptr) cinfo->src;
  src->buffer = (JOCTET *)
       ( *cinfo->mem->alloc_small )( (j_common_ptr) cinfo, JPOOL_PERMANENT,
             INPUT_BUF_SIZE * sizeof( JOCTET ) );
 }

 src = (my_src_ptr) cinfo->src;
 src->pub.init_source = my_init_source;
 src->pub.fill_input_buffer = my_fill_input_buffer;
 src->pub.skip_input_data = my_skip_input_data;
 src->pub.resync_to_restart = jpeg_resync_to_restart;
 src->pub.term_source = my_term_source;
 src->src_buffer = (JOCTET *)buffer;
 src->src_size = bufsize;
 src->pub.bytes_in_buffer = 0;
 src->pub.next_input_byte = ((void*)0);
}
