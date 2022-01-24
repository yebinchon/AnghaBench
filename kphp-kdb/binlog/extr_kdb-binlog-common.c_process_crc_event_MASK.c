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
struct lev_generic {int dummy; } ;
struct lev_crc32 {long long pos; int /*<<< orphan*/  crc32; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  binlogname ; 
 int disable_crc32 ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,long long,int /*<<< orphan*/ ,long long,...) ; 
 int /*<<< orphan*/  log_crc32_complement ; 
 int FUNC2 () ; 
 long long log_headers_size ; 
 long long log_start_pos ; 
 int /*<<< orphan*/  FUNC3 (struct lev_generic*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  stderr ; 

__attribute__((used)) static void FUNC5 (struct lev_generic *E, int offset) {
  FUNC4 (0);
  if (!(disable_crc32 & 2)) {
    long long cur_pos = FUNC2() + offset;
    if (~log_crc32_complement != ((struct lev_crc32 *) E)->crc32) {
      FUNC1 (stderr, "crc mismatch at binlog position %lld, file %d offset %lld\n", cur_pos, binlogname, cur_pos - log_start_pos + log_headers_size);
      FUNC0 (~log_crc32_complement == ((struct lev_crc32 *) E)->crc32);
    }
    if (cur_pos != ((struct lev_crc32 *) E)->pos) {
      FUNC1 (stderr, "position at binlog position %lld, file %d offset %lld: expected position %lld\n", cur_pos, binlogname, cur_pos - log_start_pos + log_headers_size, ((struct lev_crc32 *) E)->pos);
      FUNC0 (cur_pos == ((struct lev_crc32 *) E)->pos);
    }
  }
  FUNC3 (E);
}