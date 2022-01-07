
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int h2o_iovec_t ;
struct TYPE_2__ {int const buf; } ;


 int H2O_MAX_TOKENS ;
 TYPE_1__* h2o__tokens ;

int h2o_iovec_is_token(const h2o_iovec_t *buf)
{
    return &h2o__tokens[0].buf <= buf && buf <= &h2o__tokens[H2O_MAX_TOKENS - 1].buf;
}
