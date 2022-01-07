
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef TYPE_1__* my_src_ptr ;
typedef TYPE_2__* j_decompress_ptr ;
struct TYPE_5__ {int src; } ;
struct TYPE_4__ {int start_of_file; } ;


 int TRUE ;

__attribute__((used)) static void my_init_source( j_decompress_ptr cinfo ){
 my_src_ptr src = (my_src_ptr) cinfo->src;





 src->start_of_file = TRUE;
}
