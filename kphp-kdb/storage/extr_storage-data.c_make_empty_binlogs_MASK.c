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
struct lev_start {int extra_bytes; int split_mod; int split_min; int split_max; int /*<<< orphan*/ * str; int /*<<< orphan*/  schema_id; int /*<<< orphan*/  type; } ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  LEV_START ; 
 scalar_t__ LEV_STORAGE_START_SIZE ; 
 int /*<<< orphan*/  STORAGE_SCHEMA_V1 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (char*,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct lev_start*) ; 
 scalar_t__ FUNC3 (struct lev_start*,int,scalar_t__,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*) ; 
 struct lev_start* FUNC5 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,...) ; 
 int /*<<< orphan*/  FUNC7 (char*,char*,...) ; 
 int /*<<< orphan*/  FUNC8 (char*,char*) ; 
 scalar_t__ FUNC9 (char*) ; 

int FUNC10 (int N, char *prefix, int md5_mode, int cs_id) {
  char name[32];
  char value_buff[65536];
  FUNC7 (name, "%d", N - 1);
  FUNC7 (name, "%%s%%0%dd", (int) FUNC9 (name));
  int i;
  long long volume_id = cs_id * 1000;
  for (i = 0; i < N; i++) {
    FUNC7 (value_buff, name, prefix, i);
    FUNC8 (value_buff, ".bin");
    struct lev_start *E = FUNC5 (LEV_STORAGE_START_SIZE);
    E->type = LEV_START;
    E->schema_id = STORAGE_SCHEMA_V1;
    E->extra_bytes = 12;
    E->split_mod = N;
    E->split_min = i;
    E->split_max = i+1;
    FUNC6 (E->str, &volume_id, 8);
    FUNC6 (&E->str[8], &md5_mode, 4);
    FILE *b = FUNC1 (value_buff, "wb");
    if (b == NULL) {
      FUNC4 ("fopen (%s, \"wb\") failed\n", value_buff);
      return -2;
    }
    if (FUNC3 (E, 1, LEV_STORAGE_START_SIZE, b) != LEV_STORAGE_START_SIZE) {
      FUNC4 ("writing to %s failed\n", value_buff);
      return -3;
    }
    FUNC2 (E);
    FUNC0 (b);
    volume_id++;
  }
  return 0;
}