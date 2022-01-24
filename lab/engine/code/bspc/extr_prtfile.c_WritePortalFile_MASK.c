#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/ * headnode; } ;
typedef  TYPE_1__ tree_t ;
typedef  int /*<<< orphan*/  node_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 char* PORTALFILE ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int clusterleaf ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (char*,char*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,char*,...) ; 
 int num_visclusters ; 
 int num_visportals ; 
 int /*<<< orphan*/  pf ; 
 int /*<<< orphan*/  FUNC10 (char*,char*) ; 
 int /*<<< orphan*/  FUNC11 (char*,...) ; 
 char* source ; 
 int /*<<< orphan*/  FUNC12 (char*,char*,char*) ; 

void FUNC13 (tree_t *tree)
{
	char	filename[1024];
	node_t *headnode;

	FUNC11 ("--- WritePortalFile ---\n");

	headnode = tree->headnode;
	num_visclusters = 0;
	num_visportals = 0;

	FUNC5 (headnode);

	FUNC2 (tree);

	FUNC0 (headnode);

// set the cluster field in every leaf and count the total number of portals

	FUNC3 (headnode);
	
// write the file
	FUNC12 (filename, "%s.prt", source);
	FUNC10 ("writing %s\n", filename);
	pf = FUNC8 (filename, "w");
	if (!pf)
		FUNC1 ("Error opening %s", filename);
		
	FUNC9 (pf, "%s\n", PORTALFILE);
	FUNC9 (pf, "%i\n", num_visclusters);
	FUNC9 (pf, "%i\n", num_visportals);

	FUNC11 ("%5i visclusters\n", num_visclusters);
	FUNC11 ("%5i visportals\n", num_visportals);

	FUNC6 (headnode);

	FUNC7 (pf);

	// we need to store the clusters out now because ordering
	// issues made us do this after writebsp...
	clusterleaf = 1;
	FUNC4 (headnode);
}