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

/* Variables and functions */
 int /*<<< orphan*/  SEARCHX_EXTENSION ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (char const*,int) ; 
 int mct_get ; 
 scalar_t__ FUNC2 (int,char const*,int) ; 
 int /*<<< orphan*/  FUNC3 (char const*,char*,int) ; 

int FUNC4 (int type, const char *key, int key_len) {
  if (type != mct_get) {
    return 0;
  }

  int l =  FUNC1 (key, key_len);
  key += l;
  key_len -= l;

  FUNC0 (SEARCHX_EXTENSION);

  return (key_len >= 7 && !FUNC3 (key, "searchx", 7)) || (key_len >= 7 && !FUNC3 (key, "searchu", 7)) || FUNC2 (type, key, key_len);
}