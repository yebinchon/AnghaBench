#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {int /*<<< orphan*/  new_pathw; } ;
struct TYPE_10__ {TYPE_2__ info; } ;
struct TYPE_8__ {int /*<<< orphan*/  pathw; } ;
struct TYPE_11__ {TYPE_3__ fs; TYPE_1__ file; } ;
typedef  TYPE_4__ uv_fs_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  MOVEFILE_REPLACE_EXISTING ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_4__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_4__*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(uv_fs_t* req) {
  if (!FUNC1(req->file.pathw, req->fs.info.new_pathw, MOVEFILE_REPLACE_EXISTING)) {
    FUNC3(req, FUNC0());
    return;
  }

  FUNC2(req, 0);
}