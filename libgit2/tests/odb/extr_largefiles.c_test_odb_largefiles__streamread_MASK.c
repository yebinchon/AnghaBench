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
typedef  int /*<<< orphan*/  hdr ;
typedef  int /*<<< orphan*/  git_oid ;
typedef  int /*<<< orphan*/  git_odb_stream ;
typedef  int /*<<< orphan*/  git_object_t ;
typedef  int /*<<< orphan*/  git_hash_ctx ;

/* Variables and functions */
 int /*<<< orphan*/  GIT_OBJECT_BLOB ; 
 int /*<<< orphan*/  LARGEFILE_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC10 (size_t*,char*,int,size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ **,size_t*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int FUNC13 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  odb ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 

void FUNC15(void)
{
	git_oid oid, read_oid;
	git_odb_stream *stream;
	char buf[10240];
	char hdr[64];
	size_t len, hdr_len, total = 0;
	git_hash_ctx hash;
	git_object_t type;
	int ret;

#ifndef GIT_ARCH_64
	FUNC5();
#endif

	if (!FUNC4("GITTEST_INVASIVE_FS_SIZE") ||
		!FUNC4("GITTEST_SLOW"))
		FUNC5();

	FUNC14(&oid);

	FUNC3(FUNC11(&stream, &len, &type, odb, &oid));

	FUNC2(LARGEFILE_SIZE, len);
	FUNC0(GIT_OBJECT_BLOB, type);

	FUNC3(FUNC7(&hash));
	FUNC3(FUNC10(&hdr_len, hdr, sizeof(hdr), len, type));

	FUNC3(FUNC9(&hash, hdr, hdr_len));

	while ((ret = FUNC13(stream, buf, 10240)) > 0) {
		FUNC3(FUNC9(&hash, buf, ret));
		total += ret;
	}

	FUNC2(LARGEFILE_SIZE, total);

	FUNC8(&read_oid, &hash);

	FUNC1(&oid, &read_oid);

	FUNC6(&hash);
	FUNC12(stream);
}