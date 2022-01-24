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

/* Variables and functions */
 int Z2RAM_CHUNKSHIFT ; 
 int Z2RAM_CHUNKSIZE ; 
 int Z2RAM_SIZE ; 
 int /*<<< orphan*/  Z2RAM_START ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  z2_count ; 
 unsigned long* z2ram_map ; 
 int /*<<< orphan*/  z2ram_size ; 
 int /*<<< orphan*/  zorro_unused_z2ram ; 

__attribute__((used)) static void
FUNC3( void )
{
    int i;

    for ( i = 0; i < Z2RAM_SIZE / Z2RAM_CHUNKSIZE; i++ )
    {
	if ( FUNC2( i, zorro_unused_z2ram ) )
	{
	    z2_count++;
	    z2ram_map[z2ram_size++] = (unsigned long)FUNC0(Z2RAM_START) +
				      (i << Z2RAM_CHUNKSHIFT);
	    FUNC1( i, zorro_unused_z2ram );
	}
    }

    return;
}