
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct host_bsq {int freebuf_count; struct buffer* freebuf; struct buffer* buffer; } ;
struct fore200e {int state; TYPE_1__* bus; struct host_bsq** host_bsq; } ;
struct buffer {int scheme; int magn; int index; struct buffer* next; int data; scalar_t__ supplied; } ;
struct TYPE_2__ {int buffer_alignment; } ;


 int BUFFER_MAGN_NBR ;
 int BUFFER_SCHEME_NBR ;
 int DMA_FROM_DEVICE ;
 int DPRINTK (int,char*,int,int) ;
 int ENOMEM ;
 int FORE200E_STATE_ALLOC_BUF ;
 int GFP_KERNEL ;
 int bsq_audit (int,struct host_bsq*,int,int) ;
 scalar_t__ fore200e_chunk_alloc (struct fore200e*,int *,int,int ,int ) ;
 int fore200e_chunk_free (struct fore200e*,int *) ;
 int** fore200e_rx_buf_nbr ;
 int** fore200e_rx_buf_size ;
 struct buffer* kcalloc (int,int,int ) ;
 int kfree (struct buffer*) ;

__attribute__((used)) static int fore200e_alloc_rx_buf(struct fore200e *fore200e)
{
    int scheme, magn, nbr, size, i;

    struct host_bsq* bsq;
    struct buffer* buffer;

    for (scheme = 0; scheme < BUFFER_SCHEME_NBR; scheme++) {
 for (magn = 0; magn < BUFFER_MAGN_NBR; magn++) {

     bsq = &fore200e->host_bsq[ scheme ][ magn ];

     nbr = fore200e_rx_buf_nbr[ scheme ][ magn ];
     size = fore200e_rx_buf_size[ scheme ][ magn ];

     DPRINTK(2, "rx buffers %d / %d are being allocated\n", scheme, magn);


     buffer = bsq->buffer = kcalloc(nbr, sizeof(struct buffer),
                                           GFP_KERNEL);

     if (buffer == ((void*)0))
  return -ENOMEM;

     bsq->freebuf = ((void*)0);

     for (i = 0; i < nbr; i++) {

  buffer[ i ].scheme = scheme;
  buffer[ i ].magn = magn;






  if (fore200e_chunk_alloc(fore200e,
      &buffer[ i ].data, size, fore200e->bus->buffer_alignment,
      DMA_FROM_DEVICE) < 0) {

      while (i > 0)
   fore200e_chunk_free(fore200e, &buffer[ --i ].data);
      kfree(buffer);

      return -ENOMEM;
  }


  buffer[ i ].next = bsq->freebuf;
  bsq->freebuf = &buffer[ i ];
     }

     bsq->freebuf_count = nbr;




 }
    }

    fore200e->state = FORE200E_STATE_ALLOC_BUF;
    return 0;
}
