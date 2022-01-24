#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_7__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {scalar_t__ server_id; scalar_t__ node_id; } ;
union cache_packed_local_copy_location {TYPE_1__ p; int /*<<< orphan*/  i; } ;
typedef  int /*<<< orphan*/  record ;
struct TYPE_9__ {double access_queries; int /*<<< orphan*/  files; int /*<<< orphan*/  files_bytes; int /*<<< orphan*/  id; } ;
typedef  TYPE_2__ cache_stat_server_t ;
struct TYPE_10__ {int pos; int size; int /*<<< orphan*/  buff; } ;
typedef  TYPE_3__ cache_buffer_t ;
struct TYPE_11__ {int /*<<< orphan*/  value; } ;

/* Variables and functions */
 TYPE_7__* access_success_counters ; 
 int /*<<< orphan*/  FUNC0 (TYPE_3__*,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*,char*,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (double,int /*<<< orphan*/ ) ; 
 size_t stats_counters ; 

int FUNC4 (cache_stat_server_t **A, int n, char *output, int olen) {
  int k, o = 0;
  for (k = 0; k < n; k++) {
    char record[2048];
    cache_buffer_t b;
    cache_stat_server_t *S = A[k];
    union cache_packed_local_copy_location u;
    u.i = S->id;
    FUNC0 (&b, record, sizeof (record));
    FUNC1 (&b, "%d\t%d\t%.6lf\t%lld\t%lld\n",
      (int) u.p.node_id, (int) u.p.server_id,
      FUNC3 (100.0 * S->access_queries, access_success_counters[stats_counters].value),
      S->files_bytes,
      S->files);
    if (b.pos >= b.size) {
      break;
    }
    if (o + b.pos > olen) {
      break;
    }
    FUNC2 (output + o, b.buff, b.pos);
    o += b.pos;
  }
  return o;
}