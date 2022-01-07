
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef TYPE_1__* my_dest_ptr ;
typedef TYPE_2__* j_compress_ptr ;
typedef int boolean ;
struct TYPE_8__ {int (* Error ) (int ,char*,int ) ;} ;
struct TYPE_7__ {int dest; } ;
struct TYPE_6__ {int size; } ;


 int ERR_FATAL ;
 int FALSE ;
 int jpeg_destroy_compress (TYPE_2__*) ;
 TYPE_3__ ri ;
 int stub1 (int ,char*,int ) ;

__attribute__((used)) static boolean
empty_output_buffer (j_compress_ptr cinfo)
{
  my_dest_ptr dest = (my_dest_ptr) cinfo->dest;

  jpeg_destroy_compress(cinfo);


  ri.Error(ERR_FATAL, "Output buffer for encoded JPEG image has insufficient size of %d bytes",
           dest->size);

  return FALSE;
}
