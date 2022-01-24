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
typedef  int /*<<< orphan*/  fileHandle_t ;
struct TYPE_2__ {int numglobalservers; int numfavoriteservers; int globalServers; int favoriteServers; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int*,int,int /*<<< orphan*/ ) ; 
 TYPE_1__ cls ; 

void FUNC3( void ) {
	int size;
	fileHandle_t fileOut = FUNC1("servercache.dat");
	FUNC2(&cls.numglobalservers, sizeof(int), fileOut);
	FUNC2(&cls.numfavoriteservers, sizeof(int), fileOut);
	size = sizeof(cls.globalServers) + sizeof(cls.favoriteServers);
	FUNC2(&size, sizeof(int), fileOut);
	FUNC2(&cls.globalServers, sizeof(cls.globalServers), fileOut);
	FUNC2(&cls.favoriteServers, sizeof(cls.favoriteServers), fileOut);
	FUNC0(fileOut);
}