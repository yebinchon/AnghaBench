#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
struct TYPE_11__ {int /*<<< orphan*/  origin_len; int /*<<< orphan*/  origin; struct TYPE_11__* next; } ;
typedef  TYPE_1__ zone_t ;
typedef  int /*<<< orphan*/  B ;
typedef  int /*<<< orphan*/  A ;

/* Variables and functions */
 TYPE_1__** FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * last_deleted_record ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,TYPE_1__*) ; 
 int FUNC6 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__**,int) ; 

__attribute__((used)) static void FUNC8 (zone_t *new_zones, zone_t *old_zones) {
  last_deleted_record = NULL;
  int na = FUNC6 (new_zones);
  int nb = FUNC6 (old_zones);
  int i = 0, j = 0;
  zone_t *z;
  zone_t **A = FUNC0 (sizeof (A[0]) * na);
  for (z = new_zones; z != NULL; z = z->next) {
    A[i++] = z;
  }
  zone_t **B = FUNC0 (sizeof (B[0]) * nb);
  for (z = old_zones; z != NULL; z = z->next) {
    B[j++] = z;
  }
  FUNC1 (i == na && j == nb);
  FUNC7 (A, na);
  FUNC7 (B, nb);
  i = j = 0;
  while (i < na && j < nb) {
    int c = FUNC2 (A[i]->origin, A[i]->origin_len, B[j]->origin, B[j]->origin_len);
    if (c < 0) {
      FUNC3 (A[i++]);
    } else if (!c) {
      FUNC5 (A[i], B[j]);
      i++;
      j++;
    } else {
      FUNC4 (B[j++]);
    }
  }
  while (i < na) {
    FUNC3 (A[i++]);
  }
  while (j < nb) {
    FUNC4 (B[j++]);
  }
}