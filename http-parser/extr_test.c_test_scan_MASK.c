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
struct message {int /*<<< orphan*/  type; int /*<<< orphan*/  raw; } ;
typedef  int /*<<< orphan*/  buf1 ;
struct TYPE_4__ {int /*<<< orphan*/  headers_complete_cb_called; } ;
struct TYPE_3__ {size_t nread; scalar_t__ upgrade; } ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  HTTP_BOTH ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 (int,struct message const*,struct message const*,struct message const*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC5 (int,int /*<<< orphan*/ ,struct message const*) ; 
 TYPE_2__* messages ; 
 int num_messages ; 
 size_t FUNC6 (char*,size_t) ; 
 TYPE_1__ parser ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (char*,size_t) ; 
 int /*<<< orphan*/  FUNC9 (char*,int) ; 
 int /*<<< orphan*/  FUNC10 (char*) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  stdout ; 
 int /*<<< orphan*/  FUNC11 (char*,int /*<<< orphan*/ ) ; 
 int FUNC12 (char*) ; 
 int /*<<< orphan*/  FUNC13 (char*,int,char*,size_t) ; 
 int /*<<< orphan*/  FUNC14 (char*,size_t,int,struct message const*,struct message const*,struct message const*) ; 

void
FUNC15 (const struct message *r1, const struct message *r2, const struct message *r3)
{
  char total[80*1024] = "\0";
  char buf1[80*1024] = "\0";
  char buf2[80*1024] = "\0";
  char buf3[80*1024] = "\0";

  FUNC11(total, r1->raw);
  FUNC11(total, r2->raw);
  FUNC11(total, r3->raw);

  size_t read;

  int total_len = FUNC12(total);

  int total_ops = 2 * (total_len - 1) * (total_len - 2) / 2;
  int ops = 0 ;

  size_t buf1_len, buf2_len, buf3_len;
  int message_count = FUNC2(3, r1, r2, r3);

  int i,j,type_both;
  for (type_both = 0; type_both < 2; type_both ++ ) {
    for (j = 2; j < total_len; j ++ ) {
      for (i = 1; i < j; i ++ ) {

        if (ops % 1000 == 0)  {
          FUNC9("\b\b\b\b%3.0f%%", 100 * (float)ops /(float)total_ops);
          FUNC3(stdout);
        }
        ops += 1;

        FUNC7(type_both ? HTTP_BOTH : r1->type);

        buf1_len = i;
        FUNC13(buf1, sizeof(buf1), total, buf1_len);
        buf1[buf1_len] = 0;

        buf2_len = j - i;
        FUNC13(buf2, sizeof(buf1), total+i, buf2_len);
        buf2[buf2_len] = 0;

        buf3_len = total_len - j;
        FUNC13(buf3, sizeof(buf1), total+j, buf3_len);
        buf3[buf3_len] = 0;

        FUNC1(num_messages == 0);
        messages[0].headers_complete_cb_called = FALSE;

        read = FUNC6(buf1, buf1_len);

        if (!messages[0].headers_complete_cb_called && parser.nread != read) {
          FUNC8(buf1, read);
          goto error;
        }

        if (parser.upgrade) goto test;

        if (read != buf1_len) {
          FUNC8(buf1, read);
          goto error;
        }

        read += FUNC6(buf2, buf2_len);

        if (parser.upgrade) goto test;

        if (read != buf1_len + buf2_len) {
          FUNC8(buf2, read);
          goto error;
        }

        read += FUNC6(buf3, buf3_len);

        if (parser.upgrade) goto test;

        if (read != buf1_len + buf2_len + buf3_len) {
          FUNC8(buf3, read);
          goto error;
        }

        FUNC6(NULL, 0);

test:
        if (parser.upgrade) {
          FUNC14(total, read, 3, r1, r2, r3);
        }

        if (message_count != num_messages) {
          FUNC4(stderr, "\n\nParser didn't see %d messages only %d\n",
            message_count, num_messages);
          goto error;
        }

        if (!FUNC5(0, 0, r1)) {
          FUNC4(stderr, "\n\nError matching messages[0] in test_scan.\n");
          goto error;
        }

        if (message_count > 1 && !FUNC5(1, 0, r2)) {
          FUNC4(stderr, "\n\nError matching messages[1] in test_scan.\n");
          goto error;
        }

        if (message_count > 2 && !FUNC5(2, 0, r3)) {
          FUNC4(stderr, "\n\nError matching messages[2] in test_scan.\n");
          goto error;
        }
      }
    }
  }
  FUNC10("\b\b\b\b100%");
  return;

 error:
  FUNC4(stderr, "i=%d  j=%d\n", i, j);
  FUNC4(stderr, "buf1 (%u) %s\n\n", (unsigned int)buf1_len, buf1);
  FUNC4(stderr, "buf2 (%u) %s\n\n", (unsigned int)buf2_len , buf2);
  FUNC4(stderr, "buf3 (%u) %s\n", (unsigned int)buf3_len, buf3);
  FUNC0();
}