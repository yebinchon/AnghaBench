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
struct jffs2_unknown_node {int dummy; } ;
struct jffs2_raw_dirent {char type; int ino; int pino; scalar_t__ nsize; int /*<<< orphan*/  name; void* node_crc; scalar_t__ mctime; scalar_t__ version; void* hdr_crc; scalar_t__ totlen; void* name_crc; int /*<<< orphan*/  nodetype; int /*<<< orphan*/  magic; } ;

/* Variables and functions */
 int /*<<< orphan*/  JFFS2_MAGIC_BITMASK ; 
 int /*<<< orphan*/  JFFS2_NODETYPE_DIRENT ; 
 scalar_t__ buf ; 
 void* FUNC0 (int /*<<< orphan*/ ,void*,int) ; 
 scalar_t__ erasesize ; 
 int /*<<< orphan*/  last_ino ; 
 int /*<<< orphan*/  last_version ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char const*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,int /*<<< orphan*/ ,int) ; 
 scalar_t__ ofs ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 scalar_t__ FUNC5 (char const*) ; 

__attribute__((used)) static int FUNC6(const char *name, const char type, int parent)
{
	struct jffs2_raw_dirent *de;

	if (ofs - erasesize < sizeof(struct jffs2_raw_dirent) + FUNC5(name))
		FUNC3(erasesize);

	FUNC4();
	last_ino++;
	FUNC2(buf + ofs, 0, sizeof(struct jffs2_raw_dirent));
	de = (struct jffs2_raw_dirent *) (buf + ofs);

	de->magic = JFFS2_MAGIC_BITMASK;
	de->nodetype = JFFS2_NODETYPE_DIRENT;
	de->type = type;
	de->name_crc = FUNC0(0, name, FUNC5(name));
	de->ino = last_ino++;
	de->pino = parent;
	de->totlen = sizeof(*de) + FUNC5(name);
	de->hdr_crc = FUNC0(0, (void *) de, sizeof(struct jffs2_unknown_node) - 4);
	de->version = last_version++;
	de->mctime = 0;
	de->nsize = FUNC5(name);
	de->node_crc = FUNC0(0, (void *) de, sizeof(*de) - 8);
	FUNC1(de->name, name, FUNC5(name));

	ofs += sizeof(struct jffs2_raw_dirent) + de->nsize;
	FUNC3(4);

	return de->ino;
}