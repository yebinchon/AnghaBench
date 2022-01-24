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
struct item {char* str; int len; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int deleted_text_bytes ; 
 struct item* FUNC1 (long long,int) ; 
 int /*<<< orphan*/  FUNC2 (char*,char const*) ; 
 int /*<<< orphan*/  FUNC3 (char const*,int) ; 
 char* FUNC4 (int) ; 

__attribute__((used)) static int FUNC5 (const char *text, int len, long long item_id) {
  struct item *I = FUNC1 (item_id, 1);
  if (I == NULL) {
    return 0;
  }
  FUNC0 (I->str);
  int new_len = I->len + len + 1;
  char *s = FUNC4 (new_len + 1);
  FUNC0 (s);
  FUNC2 (s, text);
  s[len] = ' ';
  FUNC2 (s + len + 1, I->str);
  FUNC3 (I->str, I->len+1);
  deleted_text_bytes += I->len;
  I->len = new_len;
  I->str = s;
  return 1;
}