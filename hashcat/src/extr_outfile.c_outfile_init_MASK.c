#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int /*<<< orphan*/  outfile_autohex; int /*<<< orphan*/  outfile_format; int /*<<< orphan*/  outfile; } ;
typedef  TYPE_2__ user_options_t ;
struct TYPE_6__ {int /*<<< orphan*/ * pfp; } ;
struct TYPE_8__ {int /*<<< orphan*/  outfile_autohex; int /*<<< orphan*/  outfile_format; int /*<<< orphan*/  filename; TYPE_1__ fp; } ;
typedef  TYPE_3__ outfile_ctx_t ;
struct TYPE_9__ {TYPE_2__* user_options; TYPE_3__* outfile_ctx; } ;
typedef  TYPE_4__ hashcat_ctx_t ;

/* Variables and functions */

int FUNC0 (hashcat_ctx_t *hashcat_ctx)
{
  outfile_ctx_t  *outfile_ctx  = hashcat_ctx->outfile_ctx;
  user_options_t *user_options = hashcat_ctx->user_options;

  outfile_ctx->fp.pfp           = NULL;
  outfile_ctx->filename         = user_options->outfile;
  outfile_ctx->outfile_format   = user_options->outfile_format;
  outfile_ctx->outfile_autohex  = user_options->outfile_autohex;

  return 0;
}