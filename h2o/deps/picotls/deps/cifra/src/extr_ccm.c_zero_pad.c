
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int cf_cbcmac_stream ;


 int cf_cbcmac_stream_finish_block_zero (int *) ;

__attribute__((used)) static void zero_pad(cf_cbcmac_stream *cm)
{
  cf_cbcmac_stream_finish_block_zero(cm);
}
