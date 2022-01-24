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
typedef  int postGameInfo_t ;
typedef  int /*<<< orphan*/  gameList ;
typedef  int /*<<< orphan*/  fileHandle_t ;

/* Variables and functions */
 int /*<<< orphan*/  FS_WRITE ; 
 int /*<<< orphan*/  FUNC0 (int*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  qfalse ; 
 int FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC5 (char*,char*,char*,int) ; 
 int /*<<< orphan*/  FUNC6 (int*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (char*,char*) ; 

void FUNC8(void) {
	char	gameList[4096];
	char *gameFile;
	int		i, len, count, size;
	fileHandle_t f;
	postGameInfo_t newInfo;

	count = FUNC5( "games", "game", gameList, sizeof(gameList) );

	size = sizeof(postGameInfo_t);
	FUNC1(&newInfo, 0, size);

	if (count > 0) {
		gameFile = gameList;
		for ( i = 0; i < count; i++ ) {
			len = FUNC2(gameFile);
			if (FUNC4(FUNC7("games/%s",gameFile), &f, FS_WRITE) >= 0) {
				FUNC6(&size, sizeof(int), f);
				FUNC6(&newInfo, size, f);
				FUNC3(f);
			}
			gameFile += len + 1;
		}
	}
	
	FUNC0(&newInfo, qfalse);

}