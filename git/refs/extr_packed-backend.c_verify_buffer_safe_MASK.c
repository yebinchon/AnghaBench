#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct snapshot {char* start; char* eof; TYPE_1__* refs; } ;
struct TYPE_4__ {int hexsz; } ;
struct TYPE_3__ {int /*<<< orphan*/  path; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char const*,int) ; 
 char* FUNC1 (char const*,char const*) ; 
 TYPE_2__* the_hash_algo ; 

__attribute__((used)) static void FUNC2(struct snapshot *snapshot)
{
	const char *start = snapshot->start;
	const char *eof = snapshot->eof;
	const char *last_line;

	if (start == eof)
		return;

	last_line = FUNC1(start, eof - 1);
	if (*(eof - 1) != '\n' || eof - last_line < the_hash_algo->hexsz + 2)
		FUNC0(snapshot->refs->path,
				 last_line, eof - last_line);
}