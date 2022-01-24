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
struct spanhash_top {int alloc_log2; int /*<<< orphan*/  data; int /*<<< orphan*/  free; } ;
struct spanhash {int dummy; } ;
struct repository {int dummy; } ;
struct diff_filespec {unsigned char* data; unsigned int size; } ;

/* Variables and functions */
 unsigned int HASHBASE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int INITIAL_HASH_SIZE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,unsigned long,int /*<<< orphan*/ ) ; 
 struct spanhash_top* FUNC2 (struct spanhash_top*,unsigned int,int) ; 
 int /*<<< orphan*/  FUNC3 (struct repository*,struct diff_filespec*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  spanhash_cmp ; 
 int /*<<< orphan*/  FUNC5 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int,int) ; 
 struct spanhash_top* FUNC7 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct spanhash_top *FUNC8(struct repository *r,
				       struct diff_filespec *one)
{
	int i, n;
	unsigned int accum1, accum2, hashval;
	struct spanhash_top *hash;
	unsigned char *buf = one->data;
	unsigned int sz = one->size;
	int is_text = !FUNC3(r, one);

	i = INITIAL_HASH_SIZE;
	hash = FUNC7(FUNC5(sizeof(*hash),
			      FUNC6(sizeof(struct spanhash), 1<<i)));
	hash->alloc_log2 = i;
	hash->free = FUNC0(i);
	FUNC4(hash->data, 0, sizeof(struct spanhash) * (1<<i));

	n = 0;
	accum1 = accum2 = 0;
	while (sz) {
		unsigned int c = *buf++;
		unsigned int old_1 = accum1;
		sz--;

		/* Ignore CR in CRLF sequence if text */
		if (is_text && c == '\r' && sz && *buf == '\n')
			continue;

		accum1 = (accum1 << 7) ^ (accum2 >> 25);
		accum2 = (accum2 << 7) ^ (old_1 >> 25);
		accum1 += c;
		if (++n < 64 && c != '\n')
			continue;
		hashval = (accum1 + accum2 * 0x61) % HASHBASE;
		hash = FUNC2(hash, hashval, n);
		n = 0;
		accum1 = accum2 = 0;
	}
	FUNC1(hash->data, 1ul << hash->alloc_log2, spanhash_cmp);
	return hash;
}