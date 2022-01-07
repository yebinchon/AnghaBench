
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int XXH32_state_t ;
typedef int U32 ;


 int BMK_checkResult (int ,int ) ;
 int XXH32 (void const*,size_t,int ) ;
 int XXH32_digest (int *) ;
 int XXH32_reset (int *,int ) ;
 int XXH32_update (int *,char const*,int) ;

__attribute__((used)) static void BMK_testSequence(const void* sequence, size_t len, U32 seed, U32 Nresult)
{
    XXH32_state_t state;
    U32 Dresult;
    size_t pos;

    Dresult = XXH32(sequence, len, seed);
    BMK_checkResult(Dresult, Nresult);

    XXH32_reset(&state, seed);
    XXH32_update(&state, sequence, len);
    Dresult = XXH32_digest(&state);
    BMK_checkResult(Dresult, Nresult);

    XXH32_reset(&state, seed);
    for (pos=0; pos<len; pos++)
        XXH32_update(&state, ((const char*)sequence)+pos, 1);
    Dresult = XXH32_digest(&state);
    BMK_checkResult(Dresult, Nresult);
}
