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
 char* Q_hash_rating ; 
 char* FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int,char*,char*) ; 

char *FUNC2 (char *text) {
  FUNC1 (3, "parse_relevance_search_query_raw: %s\n", text);
  FUNC1 (4, "Q_hash_rating: %d\n", Q_hash_rating);
  text = FUNC0 (text);
  return 0;
}