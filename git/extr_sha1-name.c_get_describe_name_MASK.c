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
struct repository {int dummy; } ;
struct object_id {int dummy; } ;

/* Variables and functions */
 unsigned int GET_OID_COMMIT ; 
 unsigned int GET_OID_QUIETLY ; 
 int FUNC0 (struct repository*,char const*,int,struct object_id*,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (char) ; 

__attribute__((used)) static int FUNC2(struct repository *r,
			     const char *name, int len,
			     struct object_id *oid)
{
	const char *cp;
	unsigned flags = GET_OID_QUIETLY | GET_OID_COMMIT;

	for (cp = name + len - 1; name + 2 <= cp; cp--) {
		char ch = *cp;
		if (!FUNC1(ch)) {
			/* We must be looking at g in "SOMETHING-g"
			 * for it to be describe output.
			 */
			if (ch == 'g' && cp[-1] == '-') {
				cp++;
				len -= cp - name;
				return FUNC0(r,
						     cp, len, oid, flags);
			}
		}
	}
	return -1;
}