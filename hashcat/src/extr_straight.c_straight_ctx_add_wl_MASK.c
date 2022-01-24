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
struct TYPE_5__ {int dicts_avail; int dicts_cnt; char** dicts; } ;
typedef  TYPE_1__ straight_ctx_t ;
struct TYPE_6__ {TYPE_1__* straight_ctx; } ;
typedef  TYPE_2__ hashcat_ctx_t ;

/* Variables and functions */
 int INCR_DICTS ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,char*,char const*) ; 
 int FUNC1 (char const*) ; 
 scalar_t__ FUNC2 (char**,int,int) ; 
 char* FUNC3 (char const*) ; 

__attribute__((used)) static int FUNC4 (hashcat_ctx_t *hashcat_ctx, const char *dict)
{
  if (FUNC1 (dict) == true)
  {
    FUNC0 (hashcat_ctx, "%s: Byte Order Mark (BOM) was detected", dict);

    return -1;
  }

  straight_ctx_t *straight_ctx = hashcat_ctx->straight_ctx;

  if (straight_ctx->dicts_avail == straight_ctx->dicts_cnt)
  {
    straight_ctx->dicts = (char **) FUNC2 (straight_ctx->dicts, straight_ctx->dicts_avail * sizeof (char *), INCR_DICTS * sizeof (char *));

    straight_ctx->dicts_avail += INCR_DICTS;
  }

  straight_ctx->dicts[straight_ctx->dicts_cnt] = FUNC3 (dict);

  straight_ctx->dicts_cnt++;

  return 0;
}