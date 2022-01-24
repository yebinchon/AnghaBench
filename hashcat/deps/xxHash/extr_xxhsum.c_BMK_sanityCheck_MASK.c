#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int U32 ;
typedef  scalar_t__ BYTE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__*,int,int const,int) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__*,int,int const,int) ; 
 int /*<<< orphan*/  FUNC2 (int,char*,...) ; 
 int SANITY_BUFFER_SIZE ; 

__attribute__((used)) static void FUNC3(void)
{
    static const U32 prime = 2654435761U;
    BYTE sanityBuffer[SANITY_BUFFER_SIZE];
    U32 byteGen = prime;

    int i;
    for (i=0; i<SANITY_BUFFER_SIZE; i++) {
        sanityBuffer[i] = (BYTE)(byteGen>>24);
        byteGen *= byteGen;
    }

    FUNC0(NULL,          0, 0,     0x02CC5D05);
    FUNC0(NULL,          0, prime, 0x36B78AE7);
    FUNC0(sanityBuffer,  1, 0,     0xB85CBEE5);
    FUNC0(sanityBuffer,  1, prime, 0xD5845D64);
    FUNC0(sanityBuffer, 14, 0,     0xE5AA0AB4);
    FUNC0(sanityBuffer, 14, prime, 0x4481951D);
    FUNC0(sanityBuffer, SANITY_BUFFER_SIZE, 0,     0x1F1AA412);
    FUNC0(sanityBuffer, SANITY_BUFFER_SIZE, prime, 0x498EC8E2);

    FUNC1(NULL        ,  0, 0,     0xEF46DB3751D8E999ULL);
    FUNC1(NULL        ,  0, prime, 0xAC75FDA2929B17EFULL);
    FUNC1(sanityBuffer,  1, 0,     0x4FCE394CC88952D8ULL);
    FUNC1(sanityBuffer,  1, prime, 0x739840CB819FA723ULL);
    FUNC1(sanityBuffer, 14, 0,     0xCFFA8DB881BC3A3DULL);
    FUNC1(sanityBuffer, 14, prime, 0x5B9611585EFCC9CBULL);
    FUNC1(sanityBuffer, SANITY_BUFFER_SIZE, 0,     0x0EAB543384F878ADULL);
    FUNC1(sanityBuffer, SANITY_BUFFER_SIZE, prime, 0xCAA65939306F1E21ULL);

    FUNC2(3, "\r%70s\r", "");       /* Clean display line */
    FUNC2(3, "Sanity check -- all tests ok\n");
}