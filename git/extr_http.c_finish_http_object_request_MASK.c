#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct strbuf {int /*<<< orphan*/  buf; } ;
struct stat {scalar_t__ st_size; } ;
struct TYPE_4__ {int /*<<< orphan*/  buf; } ;
struct TYPE_6__ {int /*<<< orphan*/  hash; } ;
struct http_object_request {int localfile; int http_code; scalar_t__ curl_result; scalar_t__ zret; int rename; TYPE_1__ tmpfile; int /*<<< orphan*/  oid; TYPE_3__ real_oid; int /*<<< orphan*/  c; int /*<<< orphan*/  stream; } ;
struct TYPE_5__ {int /*<<< orphan*/  (* final_fn ) (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ;} ;

/* Variables and functions */
 scalar_t__ CURLE_OK ; 
 struct strbuf STRBUF_INIT ; 
 scalar_t__ Z_STREAM_END ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,struct strbuf*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC5 (struct http_object_request*) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,struct stat*) ; 
 int /*<<< orphan*/  FUNC7 (struct strbuf*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 TYPE_2__* the_hash_algo ; 
 int /*<<< orphan*/  the_repository ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (char*) ; 

int FUNC11(struct http_object_request *freq)
{
	struct stat st;
	struct strbuf filename = STRBUF_INIT;

	FUNC0(freq->localfile);
	freq->localfile = -1;

	FUNC5(freq);

	if (freq->http_code == 416) {
		FUNC10("requested range invalid; we may already have all the data.");
	} else if (freq->curl_result != CURLE_OK) {
		if (FUNC6(freq->tmpfile.buf, &st) == 0)
			if (st.st_size == 0)
				FUNC9(freq->tmpfile.buf);
		return -1;
	}

	FUNC2(&freq->stream);
	the_hash_algo->final_fn(freq->real_oid.hash, &freq->c);
	if (freq->zret != Z_STREAM_END) {
		FUNC9(freq->tmpfile.buf);
		return -1;
	}
	if (!FUNC4(&freq->oid, &freq->real_oid)) {
		FUNC9(freq->tmpfile.buf);
		return -1;
	}
	FUNC3(the_repository, &filename, &freq->oid);
	freq->rename = FUNC1(freq->tmpfile.buf, filename.buf);
	FUNC7(&filename);

	return freq->rename;
}