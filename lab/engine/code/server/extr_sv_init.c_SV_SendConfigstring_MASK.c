#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  client_t ;
struct TYPE_2__ {int /*<<< orphan*/ ** configstrings; } ;

/* Variables and functions */
 int MAX_STRING_CHARS ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,...) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 TYPE_1__ sv ; 

__attribute__((used)) static void FUNC3(client_t *client, int index)
{
	int maxChunkSize = MAX_STRING_CHARS - 24;
	int len;

	len = FUNC2(sv.configstrings[index]);

	if( len >= maxChunkSize ) {
		int		sent = 0;
		int		remaining = len;
		char	*cmd;
		char	buf[MAX_STRING_CHARS];

		while (remaining > 0 ) {
			if ( sent == 0 ) {
				cmd = "bcs0";
			}
			else if( remaining < maxChunkSize ) {
				cmd = "bcs2";
			}
			else {
				cmd = "bcs1";
			}
			FUNC0( buf, &sv.configstrings[index][sent],
				maxChunkSize );

			FUNC1( client, "%s %i \"%s\"\n", cmd,
				index, buf );

			sent += (maxChunkSize - 1);
			remaining -= (maxChunkSize - 1);
		}
	} else {
		// standard cs, just send it
		FUNC1( client, "cs %i \"%s\"\n", index,
			sv.configstrings[index] );
	}
}