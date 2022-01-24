#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int l; int m; char* s; } ;
typedef  TYPE_1__ kstring_t ;
typedef  int /*<<< orphan*/  _bgzf_file_t ;
struct TYPE_7__ {int block_offset; int block_length; scalar_t__ fp; int /*<<< orphan*/  block_address; scalar_t__ uncompressed_block; } ;
typedef  TYPE_2__ BGZF ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (char*,unsigned char*,int) ; 
 scalar_t__ FUNC4 (char*,int) ; 

int FUNC5(BGZF *fp, int delim, kstring_t *str)
{
	int l, state = 0;
	unsigned char *buf = (unsigned char*)fp->uncompressed_block;
	str->l = 0;
	do {
		if (fp->block_offset >= fp->block_length) {
			if (FUNC1(fp) != 0) { state = -2; break; }
			if (fp->block_length == 0) { state = -1; break; }
		}
		for (l = fp->block_offset; l < fp->block_length && buf[l] != delim; ++l);
		if (l < fp->block_length) state = 1;
		l -= fp->block_offset;
		if (str->l + l + 1 >= str->m) {
			str->m = str->l + l + 2;
			FUNC2(str->m);
			str->s = (char*)FUNC4(str->s, str->m);
		}
		FUNC3(str->s + str->l, buf + fp->block_offset, l);
		str->l += l;
		fp->block_offset += l + 1;
		if (fp->block_offset >= fp->block_length) {
			fp->block_address = FUNC0((_bgzf_file_t)fp->fp);
			fp->block_offset = 0;
			fp->block_length = 0;
		} 
	} while (state == 0);
	if (str->l == 0 && state < 0) return state;
	str->s[str->l] = 0;
	return str->l;
}