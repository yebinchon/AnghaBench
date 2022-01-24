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
typedef  int /*<<< orphan*/  u8 ;
struct TYPE_6__ {int token_cnt; int* len_min; int* len_max; int* sep; int /*<<< orphan*/ * len; int /*<<< orphan*/ * buf; void** attr; } ;
typedef  TYPE_1__ token_t ;
struct TYPE_7__ {int /*<<< orphan*/  dst_len; int /*<<< orphan*/  src_len; int /*<<< orphan*/  dst_char; int /*<<< orphan*/  src_char; } ;
typedef  TYPE_2__ keyboard_layout_mapping_t ;
typedef  int /*<<< orphan*/  HCFILE ;

/* Variables and functions */
 int /*<<< orphan*/  HCBUFSIZ_LARGE ; 
 scalar_t__ PARSER_OK ; 
 void* TOKEN_ATTR_VERIFY_LENGTH ; 
 size_t FUNC0 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ *,char const*,char*) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/  const*,int const,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__*,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  sort_by_src_len ; 

bool FUNC9 (const char *filename, keyboard_layout_mapping_t *keyboard_layout_mapping, int *keyboard_layout_mapping_cnt)
{
  HCFILE fp;

  if (FUNC3 (&fp, filename, "r") == false) return false;

  char *line_buf = (char *) FUNC5 (HCBUFSIZ_LARGE);

  int maps_cnt = 0;

  while (!FUNC2 (&fp))
  {
    const size_t line_len = FUNC0 (&fp, line_buf, HCBUFSIZ_LARGE);

    if (line_len == 0) continue;

    token_t token;

    token.token_cnt  = 2;

    token.len_min[0] = 1;
    token.len_max[0] = 4;
    token.sep[0]     = 0x09;
    token.attr[0]    = TOKEN_ATTR_VERIFY_LENGTH;

    token.len_min[1] = 0;
    token.len_max[1] = 4;
    token.sep[1]     = 0x09;
    token.attr[1]    = TOKEN_ATTR_VERIFY_LENGTH;

    if (FUNC6 ((const u8 *) line_buf, (const int) line_len, &token) != PARSER_OK)
    {
      FUNC1 (&fp);

      FUNC4 (line_buf);

      return false;
    }

    FUNC7 (&keyboard_layout_mapping[maps_cnt].src_char, token.buf[0], token.len[0]);
    FUNC7 (&keyboard_layout_mapping[maps_cnt].dst_char, token.buf[1], token.len[1]);

    keyboard_layout_mapping[maps_cnt].src_len = token.len[0];
    keyboard_layout_mapping[maps_cnt].dst_len = token.len[1];

    if (maps_cnt == 256)
    {
      FUNC1 (&fp);

      FUNC4 (line_buf);

      return false;
    }

    maps_cnt++;
  }

  *keyboard_layout_mapping_cnt = maps_cnt;

  FUNC1 (&fp);

  FUNC4 (line_buf);

  // we need to sort this by length to ensure the largest blocks come first in mapping

  FUNC8 (keyboard_layout_mapping, maps_cnt, sizeof (keyboard_layout_mapping_t), sort_by_src_len);

  return true;
}