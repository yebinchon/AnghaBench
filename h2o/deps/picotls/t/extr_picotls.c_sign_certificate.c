
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint16_t ;
typedef int ptls_t ;
typedef int ptls_sign_certificate_t ;
typedef int ptls_iovec_t ;
typedef int ptls_buffer_t ;
struct TYPE_3__ {int (* cb ) (TYPE_1__*,int *,int *,int *,int ,int const*,size_t) ;} ;


 int sc_callcnt ;
 TYPE_1__* sc_orig ;
 int stub1 (TYPE_1__*,int *,int *,int *,int ,int const*,size_t) ;

__attribute__((used)) static int sign_certificate(ptls_sign_certificate_t *self, ptls_t *tls, uint16_t *selected_algorithm, ptls_buffer_t *output,
                            ptls_iovec_t input, const uint16_t *algorithms, size_t num_algorithms)
{
    ++sc_callcnt;
    return sc_orig->cb(sc_orig, tls, selected_algorithm, output, input, algorithms, num_algorithms);
}
