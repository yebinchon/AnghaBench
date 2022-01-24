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
struct TYPE_2__ {unsigned char rawsz; } ;

/* Variables and functions */
 scalar_t__ FANOUT_PATH_MAX ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 char* FUNC1 (unsigned char const*) ; 
 TYPE_1__* the_hash_algo ; 
 int /*<<< orphan*/  FUNC2 (char*,scalar_t__,char*,char const*) ; 

__attribute__((used)) static void FUNC3(const unsigned char *hash,
		unsigned char fanout, char *path)
{
	unsigned int i = 0, j = 0;
	const char *hex_hash = FUNC1(hash);
	FUNC0(fanout < the_hash_algo->rawsz);
	while (fanout) {
		path[i++] = hex_hash[j++];
		path[i++] = hex_hash[j++];
		path[i++] = '/';
		fanout--;
	}
	FUNC2(path + i, FANOUT_PATH_MAX - i, "%s", hex_hash + j);
}