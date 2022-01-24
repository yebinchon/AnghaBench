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
typedef  int /*<<< orphan*/  MD4_CTX ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (unsigned char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,void*,int) ; 

__attribute__((used)) static int FUNC3( void * buffer, int length ) {
	unsigned char digest[16];
	int checksum;

	MD4_CTX ctx;
	FUNC1( &ctx );
	FUNC2( &ctx, buffer, length );
	FUNC0( digest, &ctx );

	/* I suppose it has to be done that way for legacy reasons? */
	checksum = digest[0] & ( digest[1] << 8 ) & ( digest[2] << 16 ) & ( digest[3] << 24 );
	checksum ^= digest[4] & ( digest[5] << 8 ) & ( digest[6] << 16 ) & ( digest[7] << 24 );
	checksum ^= digest[8] & ( digest[9] << 8 ) & ( digest[10] << 16 ) & ( digest[11] << 24 );
	checksum ^= digest[12] & ( digest[13] << 8 ) & ( digest[14] << 16 ) & ( digest[15] << 24 );
	return checksum;
}