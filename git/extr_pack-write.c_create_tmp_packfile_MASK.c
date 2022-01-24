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
struct strbuf {int dummy; } ;
struct hashfile {int dummy; } ;

/* Variables and functions */
 struct strbuf STRBUF_INIT ; 
 struct hashfile* FUNC0 (int,char*) ; 
 int FUNC1 (struct strbuf*,char*) ; 
 char* FUNC2 (struct strbuf*,int /*<<< orphan*/ *) ; 

struct hashfile *FUNC3(char **pack_tmp_name)
{
	struct strbuf tmpname = STRBUF_INIT;
	int fd;

	fd = FUNC1(&tmpname, "pack/tmp_pack_XXXXXX");
	*pack_tmp_name = FUNC2(&tmpname, NULL);
	return FUNC0(fd, *pack_tmp_name);
}