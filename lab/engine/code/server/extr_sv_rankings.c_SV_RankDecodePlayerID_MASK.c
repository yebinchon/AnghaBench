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
typedef  int /*<<< orphan*/  uint64_t ;
typedef  int /*<<< orphan*/  qint64 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (unsigned char*,char const*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (char const*) ; 

__attribute__((used)) static uint64_t FUNC5( const char* string )
{
	unsigned char	buffer[9];
	int len;
	qint64	player_id;

	FUNC3( string != NULL );
	
	len = FUNC4 (string) ;
	FUNC0( "SV_RankDecodePlayerID: string length %d\n",len );
	FUNC2( buffer, string, len );
	player_id = FUNC1(*(qint64*)buffer);
	return *(uint64_t*)&player_id;
}