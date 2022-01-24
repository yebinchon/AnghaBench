#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int offset; size_t size; char* buf; } ;
typedef  TYPE_1__ GJSON ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 size_t INIT_BUF_SIZE ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 char* FUNC2 (char*,size_t) ; 

__attribute__((used)) static void
FUNC3 (GJSON * json, int len)
{
  char *tmp = NULL;
  /* Maintain a null byte at the end of the buffer */
  size_t need = json->offset + len + 1, newlen = 0;

  if (need <= json->size)
    return;

  if (json->size == 0) {
    newlen = INIT_BUF_SIZE;
  } else {
    newlen = json->size;
    newlen += newlen / 2;       /* resize by 3/2 */
  }

  if (newlen < need)
    newlen = need;

  tmp = FUNC2 (json->buf, newlen);
  if (tmp == NULL) {
    FUNC1 (json);
    FUNC0 (("Unable to realloc JSON buffer.\n"));
  }
  json->buf = tmp;
  json->size = newlen;
}