#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct signature_check {char* gpg_status; char result; void* key; void* signer; void* fingerprint; void* primary_key_fingerprint; } ;
struct TYPE_3__ {char* check; int flags; char result; } ;

/* Variables and functions */
 int FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (void*) ; 
 int GPG_STATUS_EXCLUSIVE ; 
 int GPG_STATUS_FINGERPRINT ; 
 int GPG_STATUS_KEYID ; 
 int GPG_STATUS_UID ; 
 int /*<<< orphan*/  FUNC2 (void*) ; 
 TYPE_1__* sigcheck_gpg_status ; 
 scalar_t__ FUNC3 (char const*,char*,char const**) ; 
 char* FUNC4 (char const*,char) ; 
 void* FUNC5 (char const*,int) ; 

__attribute__((used)) static void FUNC6(struct signature_check *sigc)
{
	const char *buf = sigc->gpg_status;
	const char *line, *next;
	int i, j;
	int seen_exclusive_status = 0;

	/* Iterate over all lines */
	for (line = buf; *line; line = FUNC4(line+1, '\n')) {
		while (*line == '\n')
			line++;
		if (!*line)
			break;

		/* Skip lines that don't start with GNUPG status */
		if (!FUNC3(line, "[GNUPG:] ", &line))
			continue;

		/* Iterate over all search strings */
		for (i = 0; i < FUNC0(sigcheck_gpg_status); i++) {
			if (FUNC3(line, sigcheck_gpg_status[i].check, &line)) {
				if (sigcheck_gpg_status[i].flags & GPG_STATUS_EXCLUSIVE) {
					if (seen_exclusive_status++)
						goto found_duplicate_status;
				}

				if (sigcheck_gpg_status[i].result)
					sigc->result = sigcheck_gpg_status[i].result;
				/* Do we have key information? */
				if (sigcheck_gpg_status[i].flags & GPG_STATUS_KEYID) {
					next = FUNC4(line, ' ');
					FUNC2(sigc->key);
					sigc->key = FUNC5(line, next - line);
					/* Do we have signer information? */
					if (*next && (sigcheck_gpg_status[i].flags & GPG_STATUS_UID)) {
						line = next + 1;
						next = FUNC4(line, '\n');
						FUNC2(sigc->signer);
						sigc->signer = FUNC5(line, next - line);
					}
				}
				/* Do we have fingerprint? */
				if (sigcheck_gpg_status[i].flags & GPG_STATUS_FINGERPRINT) {
					next = FUNC4(line, ' ');
					FUNC2(sigc->fingerprint);
					sigc->fingerprint = FUNC5(line, next - line);

					/* Skip interim fields */
					for (j = 9; j > 0; j--) {
						if (!*next)
							break;
						line = next + 1;
						next = FUNC4(line, ' ');
					}

					next = FUNC4(line, '\n');
					FUNC2(sigc->primary_key_fingerprint);
					sigc->primary_key_fingerprint = FUNC5(line, next - line);
				}

				break;
			}
		}
	}
	return;

found_duplicate_status:
	/*
	 * GOODSIG, BADSIG etc. can occur only once for each signature.
	 * Therefore, if we had more than one then we're dealing with multiple
	 * signatures.  We don't support them currently, and they're rather
	 * hard to create, so something is likely fishy and we should reject
	 * them altogether.
	 */
	sigc->result = 'E';
	/* Clear partial data to avoid confusion */
	FUNC1(sigc->primary_key_fingerprint);
	FUNC1(sigc->fingerprint);
	FUNC1(sigc->signer);
	FUNC1(sigc->key);
}