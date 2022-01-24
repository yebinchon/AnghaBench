#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_24__   TYPE_7__ ;
typedef  struct TYPE_23__   TYPE_6__ ;
typedef  struct TYPE_22__   TYPE_5__ ;
typedef  struct TYPE_21__   TYPE_4__ ;
typedef  struct TYPE_20__   TYPE_3__ ;
typedef  struct TYPE_19__   TYPE_2__ ;
typedef  struct TYPE_18__   TYPE_1__ ;

/* Type definitions */
typedef  size_t u32 ;
struct TYPE_18__ {scalar_t__ dicts_pos; } ;
typedef  TYPE_1__ straight_ctx_t ;
struct TYPE_19__ {scalar_t__ words_cur; } ;
typedef  TYPE_2__ status_ctx_t ;
struct TYPE_20__ {size_t argc; scalar_t__ words_cur; scalar_t__ dicts_pos; scalar_t__ masks_pos; int /*<<< orphan*/ * argv; } ;
typedef  TYPE_3__ restore_data_t ;
struct TYPE_21__ {int enabled; char* new_restore_file; TYPE_3__* rd; } ;
typedef  TYPE_4__ restore_ctx_t ;
struct TYPE_22__ {scalar_t__ masks_pos; } ;
typedef  TYPE_5__ mask_ctx_t ;
struct TYPE_23__ {TYPE_1__* straight_ctx; TYPE_2__* status_ctx; TYPE_4__* restore_ctx; TYPE_5__* mask_ctx; } ;
typedef  TYPE_6__ hashcat_ctx_t ;
struct TYPE_24__ {int /*<<< orphan*/  pfp; } ;
typedef  TYPE_7__ HCFILE ;

/* Variables and functions */
 int /*<<< orphan*/  _IONBF ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC0 (TYPE_6__*,char*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_7__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_7__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_7__*) ; 
 int FUNC5 (TYPE_7__*,char*,char*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_7__*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (char,TYPE_7__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_3__*,int,int,TYPE_7__*) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC11 (hashcat_ctx_t *hashcat_ctx)
{
  const mask_ctx_t     *mask_ctx     = hashcat_ctx->mask_ctx;
  const restore_ctx_t  *restore_ctx  = hashcat_ctx->restore_ctx;
  const status_ctx_t   *status_ctx   = hashcat_ctx->status_ctx;
  const straight_ctx_t *straight_ctx = hashcat_ctx->straight_ctx;

  if (restore_ctx->enabled == false) return 0;

  restore_data_t *rd = restore_ctx->rd;

  rd->masks_pos = mask_ctx->masks_pos;
  rd->dicts_pos = straight_ctx->dicts_pos;
  rd->words_cur = status_ctx->words_cur;

  char *new_restore_file = restore_ctx->new_restore_file;

  HCFILE fp;

  if (FUNC5 (&fp, new_restore_file, "wb") == false)
  {
    FUNC0 (hashcat_ctx, "%s: %s", new_restore_file, FUNC10 (errno));

    return -1;
  }

  if (FUNC9 (fp.pfp, NULL, _IONBF, 0))
  {
    FUNC0 (hashcat_ctx, "setvbuf file '%s': %s", new_restore_file, FUNC10 (errno));

    FUNC2 (&fp);

    return -1;
  }

  FUNC8 (rd, sizeof (restore_data_t), 1, &fp);

  for (u32 i = 0; i < rd->argc; i++)
  {
    FUNC6 (&fp, "%s", rd->argv[i]);

    FUNC7 ('\n', &fp);
  }

  FUNC3 (&fp);

  FUNC1 (FUNC4 (&fp));

  FUNC2 (&fp);

  rd->masks_pos = 0;
  rd->dicts_pos = 0;
  rd->words_cur = 0;

  return 0;
}