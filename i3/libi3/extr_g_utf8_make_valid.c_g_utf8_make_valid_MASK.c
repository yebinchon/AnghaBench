#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ gssize ;
typedef  int gsize ;
typedef  int /*<<< orphan*/  gchar ;
struct TYPE_7__ {int /*<<< orphan*/  const* str; } ;
typedef  TYPE_1__ GString ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,char*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,char) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int /*<<< orphan*/  const*,int) ; 
 int /*<<< orphan*/ * FUNC5 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC6 (int) ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/  const*,scalar_t__) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/  const*,int,int /*<<< orphan*/  const**) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/  const*) ; 

gchar *
FUNC10 (const gchar *str,
                   gssize       len)
{
  GString *string;
  const gchar *remainder, *invalid;
  gsize remaining_bytes, valid_bytes;

  FUNC1 (str != NULL, NULL);

  if (len < 0)
    len = FUNC9 (str);

  string = NULL;
  remainder = str;
  remaining_bytes = len;

  while (remaining_bytes != 0)
    {
      if (FUNC8 (remainder, remaining_bytes, &invalid))
	break;
      valid_bytes = invalid - remainder;

      if (string == NULL)
	string = FUNC6 (remaining_bytes);

      FUNC4 (string, remainder, valid_bytes);
      /* append U+FFFD REPLACEMENT CHARACTER */
      FUNC2 (string, "\357\277\275");

      remaining_bytes -= valid_bytes + 1;
      remainder = invalid + 1;
    }

  if (string == NULL)
    return FUNC7 (str, len);

  FUNC4 (string, remainder, remaining_bytes);
  FUNC3 (string, '\0');

  FUNC0 (FUNC8 (string->str, -1, NULL));

  return FUNC5 (string, FALSE);
}