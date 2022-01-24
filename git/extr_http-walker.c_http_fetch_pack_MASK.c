#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct walker {scalar_t__ get_verbosely; } ;
struct slot_results {scalar_t__ curl_result; } ;
struct packed_git {unsigned char* hash; } ;
struct http_pack_request {int /*<<< orphan*/  url; TYPE_1__* slot; int /*<<< orphan*/ * lst; } ;
struct alt_base {int /*<<< orphan*/  packs; int /*<<< orphan*/  base; } ;
struct TYPE_3__ {struct slot_results* results; } ;

/* Variables and functions */
 scalar_t__ CURLE_OK ; 
 char* curl_errorstr ; 
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 scalar_t__ FUNC1 (struct walker*,struct alt_base*) ; 
 struct packed_git* FUNC2 (unsigned char*,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct http_pack_request*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,char*) ; 
 char* FUNC5 (unsigned char*) ; 
 struct http_pack_request* FUNC6 (struct packed_git*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct http_pack_request*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*) ; 
 scalar_t__ FUNC9 (TYPE_1__*) ; 
 int /*<<< orphan*/  stderr ; 

__attribute__((used)) static int FUNC10(struct walker *walker, struct alt_base *repo, unsigned char *sha1)
{
	struct packed_git *target;
	int ret;
	struct slot_results results;
	struct http_pack_request *preq;

	if (FUNC1(walker, repo))
		return -1;
	target = FUNC2(sha1, repo->packs);
	if (!target)
		return -1;

	if (walker->get_verbosely) {
		FUNC4(stderr, "Getting pack %s\n",
			FUNC5(target->hash));
		FUNC4(stderr, " which contains %s\n",
			FUNC5(sha1));
	}

	preq = FUNC6(target, repo->base);
	if (preq == NULL)
		goto abort;
	preq->lst = &repo->packs;
	preq->slot->results = &results;

	if (FUNC9(preq->slot)) {
		FUNC8(preq->slot);
		if (results.curl_result != CURLE_OK) {
			FUNC0("Unable to get pack file %s\n%s", preq->url,
			      curl_errorstr);
			goto abort;
		}
	} else {
		FUNC0("Unable to start request");
		goto abort;
	}

	ret = FUNC3(preq);
	FUNC7(preq);
	if (ret)
		return ret;

	return 0;

abort:
	return -1;
}