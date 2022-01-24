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
struct TYPE_2__ {int /*<<< orphan*/  rev; int /*<<< orphan*/  pf; int /*<<< orphan*/  sig; } ;
struct ucode_cpu_info {TYPE_1__ cpu_sig; } ;
struct microcode_header_intel {int /*<<< orphan*/  rev; int /*<<< orphan*/  pf; int /*<<< orphan*/  sig; } ;
struct microcode_intel {struct microcode_header_intel hdr; } ;

/* Variables and functions */
 unsigned int FUNC0 (struct microcode_header_intel*) ; 
 int /*<<< orphan*/  FUNC1 (void*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct microcode_header_intel*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (void*,unsigned int) ; 

__attribute__((used)) static struct microcode_intel *
FUNC5(void *data, size_t size, struct ucode_cpu_info *uci, bool save)
{
	struct microcode_header_intel *mc_header;
	struct microcode_intel *patch = NULL;
	unsigned int mc_size;

	while (size) {
		if (size < sizeof(struct microcode_header_intel))
			break;

		mc_header = (struct microcode_header_intel *)data;

		mc_size = FUNC0(mc_header);
		if (!mc_size ||
		    mc_size > size ||
		    FUNC3(data, 0) < 0)
			break;

		size -= mc_size;

		if (!FUNC2(mc_header, uci->cpu_sig.sig)) {
			data += mc_size;
			continue;
		}

		if (save) {
			FUNC4(data, mc_size);
			goto next;
		}


		if (!patch) {
			if (!FUNC1(data,
						 uci->cpu_sig.sig,
						 uci->cpu_sig.pf,
						 uci->cpu_sig.rev))
				goto next;

		} else {
			struct microcode_header_intel *phdr = &patch->hdr;

			if (!FUNC1(data,
						 phdr->sig,
						 phdr->pf,
						 phdr->rev))
				goto next;
		}

		/* We have a newer patch, save it. */
		patch = data;

next:
		data += mc_size;
	}

	if (size)
		return NULL;

	return patch;
}