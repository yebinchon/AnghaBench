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
typedef  int /*<<< orphan*/  ll ;

/* Variables and functions */
 int MAX_WORDS ; 
 int /*<<< orphan*/  FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__*) ; 
 int /*<<< orphan*/  FUNC2 (unsigned char*,scalar_t__*) ; 
 scalar_t__ binlog_readed ; 
 char* buf_debug ; 
 int /*<<< orphan*/  cmp_ll ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__*) ; 
 int FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,...) ; 
 int FUNC6 (scalar_t__) ; 
 int FUNC7 (scalar_t__) ; 
 scalar_t__ FUNC8 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 (scalar_t__*,char*) ; 
 int /*<<< orphan*/  FUNC10 (scalar_t__*,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  stderr ; 
 int FUNC11 (char*) ; 
 scalar_t__* v ; 
 int verbosity ; 
 scalar_t__* words ; 
 int words_len ; 

int FUNC12 (char *s) {
  if (verbosity > 2 && binlog_readed) {
    FUNC5 (stderr, "in get words\n");
  }

  words_len = 0;
  int i;

  if (FUNC11 (s) + 1 > MAX_WORDS) {
    s[MAX_WORDS - 1] = 0;
  }

  for (i = FUNC11 (s); i > 0 && s[i - 1] != '\t'; i--) ;

  FUNC2 ((unsigned char *)(s + i), v);
  s = NULL;

  if (verbosity > 1 && binlog_readed) {
    FUNC9 (v, buf_debug);
    FUNC5 (stderr, "bayes_get_words: %s\n", buf_debug);
  }

  int result = FUNC4();

  int cur_mixed_lang = 0;
  for (i = 0; v[i] && v[i + 1] && cur_mixed_lang < 25; i++) {
    if ((FUNC7 (v[i]) + FUNC7 (v[i + 1]) == 1)) {
      if (!FUNC3 (&v[i]) && !FUNC3 (&v[i + 1])) {
        FUNC0 (0, cur_mixed_lang++);
        while (FUNC7 (v[i + 1]) != 2) {
          i++;
        }
      }
    }
  }

  int cur_mixed_case = 0;
  for (i = 0; v[i] && v[i + 1] && cur_mixed_case < 25; i++) {
//    if (get_type_case (v[i]) == 0 && get_type_case (v[i + 1]) == 1 && ((i != 0 && is_letter (v[i - 1])) || is_letter (v[i + 2]))) {
    if (FUNC6 (v[i]) == 0 && FUNC6 (v[i + 1]) == 1 && FUNC6 (v[i + 2]) == 1) {
      FUNC0 (1, cur_mixed_case++);
    }
  }

  int cur_len = -words_len;
  int j = 0, t;
  while (v[j]) {
    while (v[j] && !FUNC8 (v[j])) {
      j++;
    }
    if (v[j]) {
      i = j;
      while (v[i] && FUNC8 (v[i])) {
        i++;
      }

      if (v[i]) {
        t = i + 1;
        v[i] = 0;
      } else {
        t = i;
      }

      if (i - j > 2) {
        FUNC1 (&v[j]);
      }
      j = t;
    }
  }

  cur_len += words_len;
  if (cur_len >= 11) {
    cur_len = (cur_len - 11)/ 4 + 11;
  }

  if (cur_len > 25) {
    cur_len = 25;
  }

  FUNC0 (2, cur_len);

  FUNC10 (words, words_len, sizeof (ll), cmp_ll);
  j = 1;
  for (i = 1; i < words_len; i++)
    if (words[i] != words[i - 1])
      words[j++] = words[i];
  words_len = j;

  words[words_len] = 0;

  if (verbosity > 2 && binlog_readed) {
    FUNC5 (stderr, "go out get words\n");
  }

  return result;
}