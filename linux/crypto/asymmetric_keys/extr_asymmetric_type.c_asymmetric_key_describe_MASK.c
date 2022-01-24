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
struct seq_file {int dummy; } ;
struct key {char* description; } ;
struct asymmetric_key_subtype {int /*<<< orphan*/  (* describe ) (struct key const*,struct seq_file*) ;} ;
struct asymmetric_key_ids {struct asymmetric_key_id** id; } ;
struct asymmetric_key_id {int len; unsigned char* data; } ;

/* Variables and functions */
 struct asymmetric_key_ids* FUNC0 (struct key const*) ; 
 struct asymmetric_key_subtype* FUNC1 (struct key const*) ; 
 int /*<<< orphan*/  FUNC2 (struct seq_file*,char*,int,unsigned char const*) ; 
 int /*<<< orphan*/  FUNC3 (struct seq_file*,char) ; 
 int /*<<< orphan*/  FUNC4 (struct seq_file*,char*) ; 
 int /*<<< orphan*/  FUNC5 (struct key const*,struct seq_file*) ; 

__attribute__((used)) static void FUNC6(const struct key *key, struct seq_file *m)
{
	const struct asymmetric_key_subtype *subtype = FUNC1(key);
	const struct asymmetric_key_ids *kids = FUNC0(key);
	const struct asymmetric_key_id *kid;
	const unsigned char *p;
	int n;

	FUNC4(m, key->description);

	if (subtype) {
		FUNC4(m, ": ");
		subtype->describe(key, m);

		if (kids && kids->id[1]) {
			kid = kids->id[1];
			FUNC3(m, ' ');
			n = kid->len;
			p = kid->data;
			if (n > 4) {
				p += n - 4;
				n = 4;
			}
			FUNC2(m, "%*phN", n, p);
		}

		FUNC4(m, " [");
		/* put something here to indicate the key's capabilities */
		FUNC3(m, ']');
	}
}