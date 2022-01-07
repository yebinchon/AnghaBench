
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int U32 ;
typedef scalar_t__ BYTE ;


 int BMK_testSequence (scalar_t__*,int,int const,int) ;
 int BMK_testSequence64 (scalar_t__*,int,int const,int) ;
 int DISPLAYLEVEL (int,char*,...) ;
 int SANITY_BUFFER_SIZE ;

__attribute__((used)) static void BMK_sanityCheck(void)
{
    static const U32 prime = 2654435761U;
    BYTE sanityBuffer[SANITY_BUFFER_SIZE];
    U32 byteGen = prime;

    int i;
    for (i=0; i<SANITY_BUFFER_SIZE; i++) {
        sanityBuffer[i] = (BYTE)(byteGen>>24);
        byteGen *= byteGen;
    }

    BMK_testSequence(((void*)0), 0, 0, 0x02CC5D05);
    BMK_testSequence(((void*)0), 0, prime, 0x36B78AE7);
    BMK_testSequence(sanityBuffer, 1, 0, 0xB85CBEE5);
    BMK_testSequence(sanityBuffer, 1, prime, 0xD5845D64);
    BMK_testSequence(sanityBuffer, 14, 0, 0xE5AA0AB4);
    BMK_testSequence(sanityBuffer, 14, prime, 0x4481951D);
    BMK_testSequence(sanityBuffer, SANITY_BUFFER_SIZE, 0, 0x1F1AA412);
    BMK_testSequence(sanityBuffer, SANITY_BUFFER_SIZE, prime, 0x498EC8E2);

    BMK_testSequence64(((void*)0) , 0, 0, 0xEF46DB3751D8E999ULL);
    BMK_testSequence64(((void*)0) , 0, prime, 0xAC75FDA2929B17EFULL);
    BMK_testSequence64(sanityBuffer, 1, 0, 0x4FCE394CC88952D8ULL);
    BMK_testSequence64(sanityBuffer, 1, prime, 0x739840CB819FA723ULL);
    BMK_testSequence64(sanityBuffer, 14, 0, 0xCFFA8DB881BC3A3DULL);
    BMK_testSequence64(sanityBuffer, 14, prime, 0x5B9611585EFCC9CBULL);
    BMK_testSequence64(sanityBuffer, SANITY_BUFFER_SIZE, 0, 0x0EAB543384F878ADULL);
    BMK_testSequence64(sanityBuffer, SANITY_BUFFER_SIZE, prime, 0xCAA65939306F1E21ULL);

    DISPLAYLEVEL(3, "\r%70s\r", "");
    DISPLAYLEVEL(3, "Sanity check -- all tests ok\n");
}
