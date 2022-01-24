#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct git_pack_header {scalar_t__ hdr_signature; int /*<<< orphan*/  hdr_version; } ;
struct TYPE_5__ {int /*<<< orphan*/  fd; } ;
struct git_pack_file {TYPE_1__ mwf; } ;
struct TYPE_6__ {int /*<<< orphan*/  data; } ;
typedef  TYPE_2__ git_map ;

/* Variables and functions */
 int /*<<< orphan*/  GIT_ERROR_INDEXER ; 
 int /*<<< orphan*/  GIT_MAP_SHARED ; 
 int /*<<< orphan*/  GIT_PROT_READ ; 
 int /*<<< orphan*/  PACK_SIGNATURE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct git_pack_header*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (TYPE_2__*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct git_pack_header *hdr, struct git_pack_file *pack)
{
	int error;
	git_map map;

	if ((error = FUNC3(&map, sizeof(*hdr), GIT_PROT_READ, GIT_MAP_SHARED, pack->mwf.fd, 0)) < 0)
		return error;

	FUNC1(hdr, map.data, sizeof(*hdr));
	FUNC4(&map);

	/* Verify we recognize this pack file format. */
	if (hdr->hdr_signature != FUNC2(PACK_SIGNATURE)) {
		FUNC0(GIT_ERROR_INDEXER, "wrong pack signature");
		return -1;
	}

	if (!FUNC5(hdr->hdr_version)) {
		FUNC0(GIT_ERROR_INDEXER, "wrong pack version");
		return -1;
	}

	return 0;
}