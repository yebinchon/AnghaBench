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
typedef  int /*<<< orphan*/  git_pkt ;

/* Variables and functions */
 int GIT_EBUFS ; 
 int GIT_ERROR ; 
 int /*<<< orphan*/  GIT_ERROR_NET ; 
 char const GIT_SIDE_BAND_DATA ; 
 char const GIT_SIDE_BAND_ERROR ; 
 char const GIT_SIDE_BAND_PROGRESS ; 
 size_t PKT_LEN_SIZE ; 
 int FUNC0 (int /*<<< orphan*/ **,char const*,size_t) ; 
 int FUNC1 (int /*<<< orphan*/ **,char const*,size_t) ; 
 int FUNC2 (int /*<<< orphan*/ **,char const*,size_t) ; 
 int FUNC3 (int /*<<< orphan*/ **,char const*,size_t) ; 
 int FUNC4 (int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC5 (char const*,size_t,char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*) ; 
 int FUNC8 (int /*<<< orphan*/ **) ; 
 int FUNC9 (int /*<<< orphan*/ **,char const*,size_t) ; 
 int FUNC10 (int /*<<< orphan*/ **,char const*,size_t) ; 
 int FUNC11 (size_t*,char const*,size_t) ; 
 int FUNC12 (int /*<<< orphan*/ **,char const*,size_t) ; 
 int FUNC13 (int /*<<< orphan*/ **,char const*,size_t) ; 
 int FUNC14 (int /*<<< orphan*/ **,char const*,size_t) ; 
 int FUNC15 (int /*<<< orphan*/ **,char const*,size_t) ; 

int FUNC16(
	git_pkt **pkt, const char **endptr, const char *line, size_t linelen)
{
	int error;
	size_t len;

	if ((error = FUNC11(&len, line, linelen)) < 0) {
		/*
		 * If we fail to parse the length, it might be
		 * because the server is trying to send us the
		 * packfile already or because we do not yet have
		 * enough data.
		 */
		if (error == GIT_EBUFS)
			;
		else if (!FUNC5(line, linelen, "PACK"))
			FUNC6(GIT_ERROR_NET, "unexpected pack file");
		else
			FUNC6(GIT_ERROR_NET, "bad packet length");
		return error;
	}

	/*
	 * Make sure there is enough in the buffer to satisfy
	 * this line.
	 */
	if (linelen < len)
		return GIT_EBUFS;

	/*
	 * The length has to be exactly 0 in case of a flush
	 * packet or greater than PKT_LEN_SIZE, as the decoded
	 * length includes its own encoded length of four bytes.
	 */
	if (len != 0 && len < PKT_LEN_SIZE)
		return GIT_ERROR;

	line += PKT_LEN_SIZE;
	/*
	 * The Git protocol does not specify empty lines as part
	 * of the protocol. Not knowing what to do with an empty
	 * line, we should return an error upon hitting one.
	 */
	if (len == PKT_LEN_SIZE) {
		FUNC7(GIT_ERROR_NET, "Invalid empty packet");
		return GIT_ERROR;
	}

	if (len == 0) { /* Flush pkt */
		*endptr = line;
		return FUNC4(pkt);
	}

	len -= PKT_LEN_SIZE; /* the encoded length includes its own size */

	if (*line == GIT_SIDE_BAND_DATA)
		error = FUNC2(pkt, line, len);
	else if (*line == GIT_SIDE_BAND_PROGRESS)
		error = FUNC14(pkt, line, len);
	else if (*line == GIT_SIDE_BAND_ERROR)
		error = FUNC13(pkt, line, len);
	else if (!FUNC5(line, len, "ACK"))
		error = FUNC0(pkt, line, len);
	else if (!FUNC5(line, len, "NAK"))
		error = FUNC8(pkt);
	else if (!FUNC5(line, len, "ERR"))
		error = FUNC3(pkt, line, len);
	else if (*line == '#')
		error = FUNC1(pkt, line, len);
	else if (!FUNC5(line, len, "ok"))
		error = FUNC10(pkt, line, len);
	else if (!FUNC5(line, len, "ng"))
		error = FUNC9(pkt, line, len);
	else if (!FUNC5(line, len, "unpack"))
		error = FUNC15(pkt, line, len);
	else
		error = FUNC12(pkt, line, len);

	*endptr = line + len;

	return error;
}