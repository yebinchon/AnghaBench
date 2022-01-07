
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int XXH64_state_t ;
typedef int U64 ;


 int BMK_checkResult64 (int ,int ) ;
 int XXH64 (void*,size_t,int ) ;
 int XXH64_digest (int *) ;
 int XXH64_reset (int *,int ) ;
 int XXH64_update (int *,char*,int) ;

__attribute__((used)) static void BMK_testSequence64(void* sentence, size_t len, U64 seed, U64 Nresult)
{
    XXH64_state_t state;
    U64 Dresult;
    size_t pos;

    Dresult = XXH64(sentence, len, seed);
    BMK_checkResult64(Dresult, Nresult);

    XXH64_reset(&state, seed);
    XXH64_update(&state, sentence, len);
    Dresult = XXH64_digest(&state);
    BMK_checkResult64(Dresult, Nresult);

    XXH64_reset(&state, seed);
    for (pos=0; pos<len; pos++)
        XXH64_update(&state, ((char*)sentence)+pos, 1);
    Dresult = XXH64_digest(&state);
    BMK_checkResult64(Dresult, Nresult);
}
