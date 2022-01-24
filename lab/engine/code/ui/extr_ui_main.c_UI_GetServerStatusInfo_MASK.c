#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {char* text; char* address; size_t numLines; char*** lines; char* pings; } ;
typedef  TYPE_1__ serverStatusInfo_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int,char*,int) ; 
 int MAX_SERVERSTATUS_LINES ; 
 int /*<<< orphan*/  FUNC1 (char*,char const*,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 int qfalse ; 
 int qtrue ; 
 char* FUNC4 (char*,char) ; 
 scalar_t__ FUNC5 (char*) ; 
 scalar_t__ FUNC6 (char const*,char*,int) ; 

__attribute__((used)) static int FUNC7( const char *serverAddress, serverStatusInfo_t *info ) {
	char *p, *score, *ping, *name;
	int i, len;

	if (info) {
		FUNC3(info, 0, sizeof(*info));
	}

	// ignore initial unset addresses
	if (serverAddress && *serverAddress == '\0') {
		return qfalse;
	}

	// reset server status request for this address
	if (!info) {
		FUNC6( serverAddress, NULL, 0);
		return qfalse;
	}

	if ( FUNC6( serverAddress, info->text, sizeof(info->text)) ) {
		FUNC1(info->address, serverAddress, sizeof(info->address));
		p = info->text;
		info->numLines = 0;
		info->lines[info->numLines][0] = "Address";
		info->lines[info->numLines][1] = "";
		info->lines[info->numLines][2] = "";
		info->lines[info->numLines][3] = info->address;
		info->numLines++;
		// get the cvars
		while (p && *p) {
			p = FUNC4(p, '\\');
			if (!p) break;
			*p++ = '\0';
			if (*p == '\\')
				break;
			info->lines[info->numLines][0] = p;
			info->lines[info->numLines][1] = "";
			info->lines[info->numLines][2] = "";
			p = FUNC4(p, '\\');
			if (!p) break;
			*p++ = '\0';
			info->lines[info->numLines][3] = p;

			info->numLines++;
			if (info->numLines >= MAX_SERVERSTATUS_LINES)
				break;
		}
		// get the player list
		if (info->numLines < MAX_SERVERSTATUS_LINES-3) {
			// empty line
			info->lines[info->numLines][0] = "";
			info->lines[info->numLines][1] = "";
			info->lines[info->numLines][2] = "";
			info->lines[info->numLines][3] = "";
			info->numLines++;
			// header
			info->lines[info->numLines][0] = "num";
			info->lines[info->numLines][1] = "score";
			info->lines[info->numLines][2] = "ping";
			info->lines[info->numLines][3] = "name";
			info->numLines++;
			// parse players
			i = 0;
			len = 0;
			while (p && *p) {
				if (*p == '\\')
					*p++ = '\0';
				score = p;
				p = FUNC4(p, ' ');
				if (!p)
					break;
				*p++ = '\0';
				ping = p;
				p = FUNC4(p, ' ');
				if (!p)
					break;
				*p++ = '\0';
				name = p;
				FUNC0(&info->pings[len], sizeof(info->pings)-len, "%d", i);
				info->lines[info->numLines][0] = &info->pings[len];
				len += FUNC5(&info->pings[len]) + 1;
				info->lines[info->numLines][1] = score;
				info->lines[info->numLines][2] = ping;
				info->lines[info->numLines][3] = name;
				info->numLines++;
				if (info->numLines >= MAX_SERVERSTATUS_LINES)
					break;
				p = FUNC4(p, '\\');
				if (!p)
					break;
				*p++ = '\0';
				//
				i++;
			}
		}
		FUNC2( info );
		return qtrue;
	}
	return qfalse;
}