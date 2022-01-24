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
struct packed_git {scalar_t__ pack_size; int pack_fd; struct pack_window* windows; int /*<<< orphan*/  do_not_close; int /*<<< orphan*/  pack_name; } ;
struct pack_window {scalar_t__ offset; size_t len; scalar_t__ base; int /*<<< orphan*/  inuse_cnt; scalar_t__ last_used; struct pack_window* next; } ;
typedef  scalar_t__ off_t ;
struct TYPE_2__ {scalar_t__ rawsz; } ;

/* Variables and functions */
 scalar_t__ MAP_FAILED ; 
 int /*<<< orphan*/  MAP_PRIVATE ; 
 int /*<<< orphan*/  PROT_READ ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (struct packed_git*) ; 
 int /*<<< orphan*/  FUNC2 (char*,...) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (struct pack_window*,scalar_t__) ; 
 scalar_t__ FUNC5 (struct packed_git*) ; 
 scalar_t__ pack_mapped ; 
 int /*<<< orphan*/  pack_mmap_calls ; 
 scalar_t__ pack_open_windows ; 
 int /*<<< orphan*/  pack_used_ctr ; 
 scalar_t__ packed_git_limit ; 
 int packed_git_window_size ; 
 scalar_t__ peak_pack_mapped ; 
 scalar_t__ peak_pack_open_windows ; 
 TYPE_1__* the_hash_algo ; 
 scalar_t__ FUNC6 (struct packed_git*) ; 
 struct pack_window* FUNC7 (int,int) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *,size_t,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,scalar_t__) ; 
 unsigned long FUNC9 (scalar_t__) ; 

unsigned char *FUNC10(struct packed_git *p,
		struct pack_window **w_cursor,
		off_t offset,
		unsigned long *left)
{
	struct pack_window *win = *w_cursor;

	/* Since packfiles end in a hash of their content and it's
	 * pointless to ask for an offset into the middle of that
	 * hash, and the in_window function above wouldn't match
	 * don't allow an offset too close to the end of the file.
	 */
	if (!p->pack_size && p->pack_fd == -1 && FUNC5(p))
		FUNC2("packfile %s cannot be accessed", p->pack_name);
	if (offset > (p->pack_size - the_hash_algo->rawsz))
		FUNC2("offset beyond end of packfile (truncated pack?)");
	if (offset < 0)
		FUNC2(FUNC0("offset before end of packfile (broken .idx?)"));

	if (!win || !FUNC4(win, offset)) {
		if (win)
			win->inuse_cnt--;
		for (win = p->windows; win; win = win->next) {
			if (FUNC4(win, offset))
				break;
		}
		if (!win) {
			size_t window_align = packed_git_window_size / 2;
			off_t len;

			if (p->pack_fd == -1 && FUNC5(p))
				FUNC2("packfile %s cannot be accessed", p->pack_name);

			win = FUNC7(1, sizeof(*win));
			win->offset = (offset / window_align) * window_align;
			len = p->pack_size - win->offset;
			if (len > packed_git_window_size)
				len = packed_git_window_size;
			win->len = (size_t)len;
			pack_mapped += win->len;
			while (packed_git_limit < pack_mapped
				&& FUNC6(p))
				; /* nothing */
			win->base = FUNC8(NULL, win->len,
				PROT_READ, MAP_PRIVATE,
				p->pack_fd, win->offset);
			if (win->base == MAP_FAILED)
				FUNC3("packfile %s cannot be mapped",
					  p->pack_name);
			if (!win->offset && win->len == p->pack_size
				&& !p->do_not_close)
				FUNC1(p);
			pack_mmap_calls++;
			pack_open_windows++;
			if (pack_mapped > peak_pack_mapped)
				peak_pack_mapped = pack_mapped;
			if (pack_open_windows > peak_pack_open_windows)
				peak_pack_open_windows = pack_open_windows;
			win->next = p->windows;
			p->windows = win;
		}
	}
	if (win != *w_cursor) {
		win->last_used = pack_used_ctr++;
		win->inuse_cnt++;
		*w_cursor = win;
	}
	offset -= win->offset;
	if (left)
		*left = win->len - FUNC9(offset);
	return win->base + offset;
}