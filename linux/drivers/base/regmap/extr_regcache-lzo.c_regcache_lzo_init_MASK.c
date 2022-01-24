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
struct regmap {size_t num_reg_defaults_raw; char* reg_defaults_raw; int cache_size_raw; struct regcache_lzo_ctx** cache; } ;
struct regcache_lzo_ctx {unsigned long* sync_bmp; size_t sync_bmp_nbits; char const* src; int src_len; int decompressed_size; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (unsigned long*) ; 
 unsigned long* FUNC1 (size_t,int /*<<< orphan*/ ) ; 
 struct regcache_lzo_ctx** FUNC2 (int,int,int /*<<< orphan*/ ) ; 
 struct regcache_lzo_ctx* FUNC3 (int,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct regmap*) ; 
 int FUNC5 (struct regmap*,struct regcache_lzo_ctx*) ; 
 int /*<<< orphan*/  FUNC6 (struct regmap*) ; 
 int FUNC7 (struct regmap*) ; 
 int FUNC8 (struct regcache_lzo_ctx*) ; 

__attribute__((used)) static int FUNC9(struct regmap *map)
{
	struct regcache_lzo_ctx **lzo_blocks;
	size_t bmp_size;
	int ret, i, blksize, blkcount;
	const char *p, *end;
	unsigned long *sync_bmp;

	ret = 0;

	blkcount = FUNC4(map);
	map->cache = FUNC2(blkcount, sizeof(*lzo_blocks),
			     GFP_KERNEL);
	if (!map->cache)
		return -ENOMEM;
	lzo_blocks = map->cache;

	/*
	 * allocate a bitmap to be used when syncing the cache with
	 * the hardware.  Each time a register is modified, the corresponding
	 * bit is set in the bitmap, so we know that we have to sync
	 * that register.
	 */
	bmp_size = map->num_reg_defaults_raw;
	sync_bmp = FUNC1(bmp_size, GFP_KERNEL);
	if (!sync_bmp) {
		ret = -ENOMEM;
		goto err;
	}

	/* allocate the lzo blocks and initialize them */
	for (i = 0; i < blkcount; i++) {
		lzo_blocks[i] = FUNC3(sizeof **lzo_blocks,
					GFP_KERNEL);
		if (!lzo_blocks[i]) {
			FUNC0(sync_bmp);
			ret = -ENOMEM;
			goto err;
		}
		lzo_blocks[i]->sync_bmp = sync_bmp;
		lzo_blocks[i]->sync_bmp_nbits = bmp_size;
		/* alloc the working space for the compressed block */
		ret = FUNC8(lzo_blocks[i]);
		if (ret < 0)
			goto err;
	}

	blksize = FUNC7(map);
	p = map->reg_defaults_raw;
	end = map->reg_defaults_raw + map->cache_size_raw;
	/* compress the register map and fill the lzo blocks */
	for (i = 0; i < blkcount; i++, p += blksize) {
		lzo_blocks[i]->src = p;
		if (p + blksize > end)
			lzo_blocks[i]->src_len = end - p;
		else
			lzo_blocks[i]->src_len = blksize;
		ret = FUNC5(map,
						       lzo_blocks[i]);
		if (ret < 0)
			goto err;
		lzo_blocks[i]->decompressed_size =
			lzo_blocks[i]->src_len;
	}

	return 0;
err:
	FUNC6(map);
	return ret;
}