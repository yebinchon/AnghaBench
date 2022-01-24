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
struct TYPE_2__ {int movieCount; int /*<<< orphan*/ * movieList; } ;

/* Variables and functions */
 int MAX_MOVIES ; 
 int /*<<< orphan*/  FUNC0 (char*,char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int FUNC3 (char*) ; 
 int FUNC4 (char*,char*,char*,int) ; 
 TYPE_1__ uiInfo ; 

__attribute__((used)) static void FUNC5( void ) {
	char	movielist[4096];
	char	*moviename;
	int		i, len;

	uiInfo.movieCount = FUNC4( "video", "roq", movielist, 4096 );

	if (uiInfo.movieCount) {
		if (uiInfo.movieCount > MAX_MOVIES) {
			uiInfo.movieCount = MAX_MOVIES;
		}
		moviename = movielist;
		for ( i = 0; i < uiInfo.movieCount; i++ ) {
			len = FUNC3( moviename );
			if (!FUNC0(moviename +  len - 4,".roq")) {
				moviename[len-4] = '\0';
			}
			FUNC1(moviename);
			uiInfo.movieList[i] = FUNC2(moviename);
			moviename += len + 1;
		}
	}

}