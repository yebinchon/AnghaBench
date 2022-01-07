
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int avctx; int pkt; } ;
typedef TYPE_1__ Decoder ;


 int av_packet_unref (int *) ;
 int avcodec_free_context (int *) ;

__attribute__((used)) static void decoder_destroy(Decoder *d) {
    av_packet_unref(&d->pkt);
    avcodec_free_context(&d->avctx);
}
