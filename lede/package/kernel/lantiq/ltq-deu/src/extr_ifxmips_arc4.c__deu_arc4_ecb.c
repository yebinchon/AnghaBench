
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;


 int _deu_arc4 (void*,int *,int const*,int *,size_t,int,int ) ;

__attribute__((used)) static void _deu_arc4_ecb(void *ctx, uint8_t *dst, const uint8_t *src,
                uint8_t *iv, size_t nbytes, int encdec, int inplace)
{
        _deu_arc4 (ctx, dst, src, ((void*)0), nbytes, encdec, 0);
}
