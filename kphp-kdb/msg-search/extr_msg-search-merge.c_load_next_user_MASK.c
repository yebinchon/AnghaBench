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
struct TYPE_6__ {scalar_t__ magic; scalar_t__ user_id; int hash_cnt; int list_cnt; } ;
typedef  TYPE_1__ user_header_t ;
typedef  int /*<<< orphan*/  pair_t ;
struct TYPE_7__ {scalar_t__ user_id; int hash_cnt; } ;

/* Variables and functions */
 int /*<<< orphan*/ * CurH ; 
 int* CurL ; 
 scalar_t__ FILE_BUFFER_SIZE ; 
 scalar_t__ MAIL_INDEX_BLOCK_MAGIC ; 
 unsigned int MAX_DATA ; 
 unsigned int MAX_HASHES ; 
 TYPE_2__ User ; 
 TYPE_1__* UserHdr ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ cur_userhdr_size ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/ * fd ; 
 char** fnames ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,char*,long long,...) ; 
 scalar_t__ ibuff ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,TYPE_1__*,int) ; 
 int FUNC4 (int /*<<< orphan*/ ,scalar_t__,scalar_t__) ; 
 scalar_t__ riptr ; 
 scalar_t__ rpos ; 
 int /*<<< orphan*/  stderr ; 
 scalar_t__ wiptr ; 

int FUNC5 (void) {
  int rb, watermark = sizeof(user_header_t);

  riptr += cur_userhdr_size;
  rpos += cur_userhdr_size;
  cur_userhdr_size = User.user_id = 0;
  FUNC0 (riptr <= wiptr);

  while (1) {
    if (riptr == wiptr) {
      riptr = wiptr = ibuff;
    }
    if (wiptr - riptr < watermark) {
      FUNC3 (ibuff, riptr, wiptr - riptr);
      wiptr -= riptr - ibuff;
      riptr = ibuff;
      rb = FUNC4 (fd[0], wiptr, ibuff + FILE_BUFFER_SIZE - wiptr);
      if (rb < 0) {
	FUNC2 (stderr, "fatal: error reading file %s at position %lld: %m\n", fnames[0], (long long) rpos);
	FUNC1();
	return -1;
      }
      wiptr += rb;
    }
    if (wiptr == riptr) {
      return 0; // EOF
    }
    if (wiptr - riptr < watermark) {
      FUNC2 (stderr, "error reading file %s at pos %lld: %ld bytes available, %d required\n",
	       fnames[0], (long long) rpos, (long) (wiptr - riptr), watermark);
      return 0;
    }

    UserHdr = (user_header_t *) riptr;

    FUNC0 (UserHdr->magic == MAIL_INDEX_BLOCK_MAGIC);
    FUNC0 (UserHdr->user_id > 0);
    FUNC0 ((unsigned) UserHdr->hash_cnt <= MAX_HASHES && (unsigned) UserHdr->list_cnt <= MAX_DATA);

    cur_userhdr_size = sizeof (user_header_t) + UserHdr->hash_cnt * 16 + UserHdr->list_cnt * 4;

    if (wiptr - riptr < cur_userhdr_size) {
      watermark = cur_userhdr_size;
      continue;
    }

    FUNC3 (&User, UserHdr, sizeof (user_header_t));
    CurH = (pair_t *) (riptr + sizeof (user_header_t));
    CurL = (int *) (riptr + sizeof (user_header_t) + User.hash_cnt * 16);

    return User.user_id;
  }

  return -1;
}