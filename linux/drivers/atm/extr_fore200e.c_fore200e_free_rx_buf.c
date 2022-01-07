
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct fore200e {TYPE_1__** host_bsq; } ;
struct chunk {int * alloc_addr; } ;
struct buffer {struct chunk data; } ;
struct TYPE_2__ {struct buffer* buffer; } ;


 int BUFFER_MAGN_NBR ;
 int BUFFER_SCHEME_NBR ;
 int fore200e_chunk_free (struct fore200e*,struct chunk*) ;
 int** fore200e_rx_buf_nbr ;

__attribute__((used)) static void
fore200e_free_rx_buf(struct fore200e* fore200e)
{
    int scheme, magn, nbr;
    struct buffer* buffer;

    for (scheme = 0; scheme < BUFFER_SCHEME_NBR; scheme++) {
 for (magn = 0; magn < BUFFER_MAGN_NBR; magn++) {

     if ((buffer = fore200e->host_bsq[ scheme ][ magn ].buffer) != ((void*)0)) {

  for (nbr = 0; nbr < fore200e_rx_buf_nbr[ scheme ][ magn ]; nbr++) {

      struct chunk* data = &buffer[ nbr ].data;

      if (data->alloc_addr != ((void*)0))
   fore200e_chunk_free(fore200e, data);
  }
     }
 }
    }
}
