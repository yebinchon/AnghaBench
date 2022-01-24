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
struct gather_entry {int res_bytes; int* data; } ;
struct friends_gather_extra {int query_type; int num; int /*<<< orphan*/  raw; } ;
struct connection {int dummy; } ;

/* Variables and functions */
 int MAX_USERLIST_NUM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  compare ; 
 int /*<<< orphan*/  FUNC1 (int*,int,int,int /*<<< orphan*/ ) ; 
 int* resultlist ; 
 int /*<<< orphan*/  FUNC2 (struct connection*,char const*,int,int,int /*<<< orphan*/ ,int*,int) ; 

int FUNC3 (struct connection *c, const char *key, int key_len, void *E, struct gather_entry *data, int tot_num) {
  int i, j;
  struct friends_gather_extra* extra = E;
  if (extra->query_type == 1) {
    for (j = 0; j < extra->num; j++) {
      resultlist[j] = 0;
    }
    for (i = 0; i < tot_num; i++) {
      if (data[i].res_bytes == 4 * extra->num) {
      	for (j = 0; j < extra->num; j++) {
          resultlist[j] += data[i].data[j];
        }        
      }
    }
    FUNC2 (c, key, key_len, 0x7fffffff, -extra->raw, resultlist, extra->num); 
  } else if (extra->query_type == 2) {
    int res = 0;
    for (i = 0; i < tot_num; i++) {
      if (data[i].res_bytes >= 4) {
      	for (j = 0; j < data[i].data[0]; j++) {
          if (res < MAX_USERLIST_NUM) {
            resultlist[res++] = data[i].data[j + 1];
      	  }
        }        
      }
    }  	
    FUNC1 (resultlist, res, sizeof (int), compare);
    FUNC2 (c, key, key_len, res, -extra->raw, resultlist, res); 
  } else {
    FUNC0 (0);
  }
  return 1;
}