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
struct TYPE_2__ {unsigned char rawsz; unsigned int hexsz; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,unsigned char) ; 
 int /*<<< orphan*/  FUNC1 (char*,char const*,unsigned int) ; 
 TYPE_1__* the_hash_algo ; 

__attribute__((used)) static void FUNC2(const char *hex_sha1,
		unsigned char fanout, char *path)
{
	unsigned int i = 0, j = 0;
	if (fanout >= the_hash_algo->rawsz)
		FUNC0("Too large fanout (%u)", fanout);
	while (fanout) {
		path[i++] = hex_sha1[j++];
		path[i++] = hex_sha1[j++];
		path[i++] = '/';
		fanout--;
	}
	FUNC1(path + i, hex_sha1 + j, the_hash_algo->hexsz - j);
	path[i + the_hash_algo->hexsz - j] = '\0';
}