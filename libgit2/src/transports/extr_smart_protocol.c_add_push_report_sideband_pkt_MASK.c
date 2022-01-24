#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  git_push ;
struct TYPE_7__ {char const* data; size_t len; } ;
typedef  TYPE_1__ git_pkt_data ;
typedef  int /*<<< orphan*/  git_pkt ;
struct TYPE_8__ {size_t size; char* ptr; } ;
typedef  TYPE_2__ git_buf ;

/* Variables and functions */
 int GIT_EBUFS ; 
 int GIT_ITEROVER ; 
 int FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,char const*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,char const*,size_t) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ **,char const**,char const*,size_t) ; 

__attribute__((used)) static int FUNC5(git_push *push, git_pkt_data *data_pkt, git_buf *data_pkt_buf)
{
	git_pkt *pkt;
	const char *line, *line_end = NULL;
	size_t line_len;
	int error;
	int reading_from_buf = data_pkt_buf->size > 0;

	if (reading_from_buf) {
		/* We had an existing partial packet, so add the new
		 * packet to the buffer and parse the whole thing */
		FUNC2(data_pkt_buf, data_pkt->data, data_pkt->len);
		line = data_pkt_buf->ptr;
		line_len = data_pkt_buf->size;
	}
	else {
		line = data_pkt->data;
		line_len = data_pkt->len;
	}

	while (line_len > 0) {
		error = FUNC4(&pkt, &line_end, line, line_len);

		if (error == GIT_EBUFS) {
			/* Buffer the data when the inner packet is split
			 * across multiple sideband packets */
			if (!reading_from_buf)
				FUNC2(data_pkt_buf, line, line_len);
			error = 0;
			goto done;
		}
		else if (error < 0)
			goto done;

		/* Advance in the buffer */
		line_len -= (line_end - line);
		line = line_end;

		error = FUNC0(push, pkt);

		FUNC3(pkt);

		if (error < 0 && error != GIT_ITEROVER)
			goto done;
	}

	error = 0;

done:
	if (reading_from_buf)
		FUNC1(data_pkt_buf, line_end);
	return error;
}