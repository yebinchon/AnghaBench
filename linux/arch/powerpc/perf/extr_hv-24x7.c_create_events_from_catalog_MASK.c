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
typedef  int /*<<< orphan*/  uint64_t ;
struct rb_root {int dummy; } ;
struct hv_24x7_event_data {scalar_t__ event_group_record_len; int /*<<< orphan*/  domain; int /*<<< orphan*/  length; } ;
struct hv_24x7_catalog_page_0 {int /*<<< orphan*/  event_data_len; int /*<<< orphan*/  event_data_offs; int /*<<< orphan*/  event_entry_count; int /*<<< orphan*/  length; int /*<<< orphan*/  version; } ;
struct attribute {int dummy; } ;
typedef  size_t ssize_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int EIO ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 size_t MAX_4K ; 
 int PAGE_SIZE ; 
 struct rb_root RB_ROOT ; 
 int SIZE_MAX ; 
 size_t FUNC1 (int /*<<< orphan*/ ) ; 
 size_t FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 size_t FUNC5 (struct hv_24x7_event_data*,size_t,size_t,size_t,size_t,void*) ; 
 size_t FUNC6 (size_t,struct attribute**,struct hv_24x7_event_data*,int) ; 
 char* FUNC7 (struct hv_24x7_event_data*,int*) ; 
 struct attribute* FUNC8 (struct hv_24x7_event_data*,int) ; 
 struct attribute* FUNC9 (struct hv_24x7_event_data*,int) ; 
 int FUNC10 (struct rb_root*,char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct rb_root*) ; 
 long FUNC12 (void*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 long FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/  hv_page_cache ; 
 int /*<<< orphan*/  FUNC14 (struct attribute**) ; 
 struct attribute** FUNC15 (size_t,int,int /*<<< orphan*/ ) ; 
 struct hv_24x7_catalog_page_0* FUNC16 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ,void*) ; 
 int /*<<< orphan*/  FUNC18 (char*,size_t,int,...) ; 
 int /*<<< orphan*/  FUNC19 (char*,...) ; 
 int /*<<< orphan*/  FUNC20 (char*,size_t,size_t,...) ; 
 int /*<<< orphan*/  FUNC21 (char*,size_t,int,...) ; 
 int /*<<< orphan*/  FUNC22 (void*) ; 
 void* FUNC23 (size_t) ; 
 int /*<<< orphan*/  FUNC24 (void*) ; 

__attribute__((used)) static int FUNC25(struct attribute ***events_,
				      struct attribute ***event_descs_,
				      struct attribute ***event_long_descs_)
{
	long hret;
	size_t catalog_len, catalog_page_len, event_entry_count,
	       event_data_len, event_data_offs,
	       event_data_bytes, junk_events, event_idx, event_attr_ct, i,
	       attr_max, event_idx_last, desc_ct, long_desc_ct;
	ssize_t ct, ev_len;
	uint64_t catalog_version_num;
	struct attribute **events, **event_descs, **event_long_descs;
	struct hv_24x7_catalog_page_0 *page_0 =
		FUNC16(hv_page_cache, GFP_KERNEL);
	void *page = page_0;
	void *event_data, *end;
	struct hv_24x7_event_data *event;
	struct rb_root ev_uniq = RB_ROOT;
	int ret = 0;

	if (!page) {
		ret = -ENOMEM;
		goto e_out;
	}

	hret = FUNC12(page, 0, 0);
	if (hret) {
		ret = -EIO;
		goto e_free;
	}

	catalog_version_num = FUNC3(page_0->version);
	catalog_page_len = FUNC2(page_0->length);

	if (MAX_4K < catalog_page_len) {
		FUNC19("invalid page count: %zu\n", catalog_page_len);
		ret = -EIO;
		goto e_free;
	}

	catalog_len = catalog_page_len * 4096;

	event_entry_count = FUNC1(page_0->event_entry_count);
	event_data_offs   = FUNC1(page_0->event_data_offs);
	event_data_len    = FUNC1(page_0->event_data_len);

	FUNC18("cv %llu cl %zu eec %zu edo %zu edl %zu\n",
			catalog_version_num, catalog_len,
			event_entry_count, event_data_offs, event_data_len);

	if ((MAX_4K < event_data_len)
			|| (MAX_4K < event_data_offs)
			|| (MAX_4K - event_data_offs < event_data_len)) {
		FUNC19("invalid event data offs %zu and/or len %zu\n",
				event_data_offs, event_data_len);
		ret = -EIO;
		goto e_free;
	}

	if ((event_data_offs + event_data_len) > catalog_page_len) {
		FUNC19("event data %zu-%zu does not fit inside catalog 0-%zu\n",
				event_data_offs,
				event_data_offs + event_data_len,
				catalog_page_len);
		ret = -EIO;
		goto e_free;
	}

	if (SIZE_MAX - 1 < event_entry_count) {
		FUNC19("event_entry_count %zu is invalid\n", event_entry_count);
		ret = -EIO;
		goto e_free;
	}

	event_data_bytes = event_data_len * 4096;

	/*
	 * event data can span several pages, events can cross between these
	 * pages. Use vmalloc to make this easier.
	 */
	event_data = FUNC23(event_data_bytes);
	if (!event_data) {
		FUNC19("could not allocate event data\n");
		ret = -ENOMEM;
		goto e_free;
	}

	end = event_data + event_data_bytes;

	/*
	 * using vmalloc_to_phys() like this only works if PAGE_SIZE is
	 * divisible by 4096
	 */
	FUNC0(PAGE_SIZE % 4096);

	for (i = 0; i < event_data_len; i++) {
		hret = FUNC13(
				FUNC24(event_data + i * 4096),
				catalog_version_num,
				i + event_data_offs);
		if (hret) {
			FUNC19("Failed to get event data in page %zu: rc=%ld\n",
			       i + event_data_offs, hret);
			ret = -EIO;
			goto e_event_data;
		}
	}

	/*
	 * scan the catalog to determine the number of attributes we need, and
	 * verify it at the same time.
	 */
	for (junk_events = 0, event = event_data, event_idx = 0, attr_max = 0;
	     ;
	     event_idx++, event = (void *)event + ev_len) {
		size_t offset = (void *)event - (void *)event_data;
		char *name;
		int nl;

		ev_len = FUNC5(event, event_idx,
						    event_data_bytes,
						    event_entry_count,
						    offset, end);
		if (ev_len < 0)
			break;

		name = FUNC7(event, &nl);

		if (event->event_group_record_len == 0) {
			FUNC18("invalid event %zu (%.*s): group_record_len == 0, skipping\n",
					event_idx, nl, name);
			junk_events++;
			continue;
		}

		if (!FUNC4(event->domain)) {
			FUNC20("event %zu (%.*s) has invalid domain %d\n",
					event_idx, nl, name, event->domain);
			junk_events++;
			continue;
		}

		attr_max++;
	}

	event_idx_last = event_idx;
	if (event_idx_last != event_entry_count)
		FUNC21("event buffer ended before listed # of events were parsed (got %zu, wanted %zu, junk %zu)\n",
				event_idx_last, event_entry_count, junk_events);

	events = FUNC15(attr_max + 1, sizeof(*events), GFP_KERNEL);
	if (!events) {
		ret = -ENOMEM;
		goto e_event_data;
	}

	event_descs = FUNC15(event_idx + 1, sizeof(*event_descs),
				GFP_KERNEL);
	if (!event_descs) {
		ret = -ENOMEM;
		goto e_event_attrs;
	}

	event_long_descs = FUNC15(event_idx + 1,
			sizeof(*event_long_descs), GFP_KERNEL);
	if (!event_long_descs) {
		ret = -ENOMEM;
		goto e_event_descs;
	}

	/* Iterate over the catalog filling in the attribute vector */
	for (junk_events = 0, event_attr_ct = 0, desc_ct = 0, long_desc_ct = 0,
				event = event_data, event_idx = 0;
			event_idx < event_idx_last;
			event_idx++, ev_len = FUNC1(event->length),
				event = (void *)event + ev_len) {
		char *name;
		int nl;
		int nonce;
		/*
		 * these are the only "bad" events that are intermixed and that
		 * we can ignore without issue. make sure to skip them here
		 */
		if (event->event_group_record_len == 0)
			continue;
		if (!FUNC4(event->domain))
			continue;

		name  = FUNC7(event, &nl);
		nonce = FUNC10(&ev_uniq, name, nl, event->domain);
		ct    = FUNC6(event_idx, events + event_attr_ct,
					    event, nonce);
		if (ct < 0) {
			FUNC21("event %zu (%.*s) creation failure, skipping\n",
				event_idx, nl, name);
			junk_events++;
		} else {
			event_attr_ct++;
			event_descs[desc_ct] = FUNC8(event, nonce);
			if (event_descs[desc_ct])
				desc_ct++;
			event_long_descs[long_desc_ct] =
					FUNC9(event, nonce);
			if (event_long_descs[long_desc_ct])
				long_desc_ct++;
		}
	}

	FUNC20("read %zu catalog entries, created %zu event attrs (%zu failures), %zu descs\n",
			event_idx, event_attr_ct, junk_events, desc_ct);

	events[event_attr_ct] = NULL;
	event_descs[desc_ct] = NULL;
	event_long_descs[long_desc_ct] = NULL;

	FUNC11(&ev_uniq);
	FUNC22(event_data);
	FUNC17(hv_page_cache, page);

	*events_ = events;
	*event_descs_ = event_descs;
	*event_long_descs_ = event_long_descs;
	return 0;

e_event_descs:
	FUNC14(event_descs);
e_event_attrs:
	FUNC14(events);
e_event_data:
	FUNC22(event_data);
e_free:
	FUNC17(hv_page_cache, page);
e_out:
	*events_ = NULL;
	*event_descs_ = NULL;
	*event_long_descs_ = NULL;
	return ret;
}