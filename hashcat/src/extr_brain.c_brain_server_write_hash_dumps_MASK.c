#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  size_t i64 ;
typedef  int /*<<< orphan*/  file ;
struct TYPE_5__ {size_t hash_cnt; TYPE_2__* hash_buf; } ;
typedef  TYPE_1__ brain_server_dbs_t ;
struct TYPE_6__ {int brain_session; int /*<<< orphan*/  mux_hg; } ;
typedef  TYPE_2__ brain_server_db_hash_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (char*,int,char*,char const*,int) ; 

bool FUNC5 (brain_server_dbs_t *brain_server_dbs, const char *path)
{
  for (i64 idx = 0; idx < brain_server_dbs->hash_cnt; idx++)
  {
    brain_server_db_hash_t *brain_server_db_hash = &brain_server_dbs->hash_buf[idx];

    FUNC1 (brain_server_db_hash->mux_hg);

    char file[100];

    FUNC3 (file, 0, sizeof (file));

    FUNC4 (file, sizeof (file), "%s/brain.%08x.ldmp", path, brain_server_db_hash->brain_session);

    FUNC0 (brain_server_db_hash, file);

    FUNC2 (brain_server_db_hash->mux_hg);
  }

  return true;
}