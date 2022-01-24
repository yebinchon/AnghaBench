#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {scalar_t__ downloadCount; scalar_t__ downloadBlock; int /*<<< orphan*/  downloadTempName; int /*<<< orphan*/  downloadName; } ;
struct TYPE_3__ {int /*<<< orphan*/  realtime; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,char const*,char const*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int,char*,char const*) ; 
 int /*<<< orphan*/  FUNC3 (char*,char const*) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char const*,int) ; 
 TYPE_2__ clc ; 
 TYPE_1__ cls ; 
 int /*<<< orphan*/  qfalse ; 
 int /*<<< orphan*/  FUNC6 (char*,char const*) ; 

void FUNC7( const char *localName, const char *remoteName ) {

	FUNC1("***** CL_BeginDownload *****\n"
				"Localname: %s\n"
				"Remotename: %s\n"
				"****************************\n", localName, remoteName);

	FUNC5 ( clc.downloadName, localName, sizeof(clc.downloadName) );
	FUNC2( clc.downloadTempName, sizeof(clc.downloadTempName), "%s.tmp", localName );

	// Set so UI gets access to it
	FUNC3( "cl_downloadName", remoteName );
	FUNC3( "cl_downloadSize", "0" );
	FUNC3( "cl_downloadCount", "0" );
	FUNC4( "cl_downloadTime", cls.realtime );

	clc.downloadBlock = 0; // Starting new file
	clc.downloadCount = 0;

	FUNC0(FUNC6("download %s", remoteName), qfalse);
}