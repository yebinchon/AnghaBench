
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int processor ;
typedef int h2o_sendvec_t ;
typedef int h2o_send_state_t ;
typedef int h2o_compress_context_t ;


 int do_process (int *,int *,size_t,int ,int **,size_t*,int ) ;
 scalar_t__ inflate ;

__attribute__((used)) static h2o_send_state_t do_decompress(h2o_compress_context_t *_self, h2o_sendvec_t *inbufs, size_t inbufcnt, h2o_send_state_t state,
                                      h2o_sendvec_t **outbufs, size_t *outbufcnt)
{
    return do_process(_self, inbufs, inbufcnt, state, outbufs, outbufcnt, (processor)inflate);
}
