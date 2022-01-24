#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_24__   TYPE_2__ ;
typedef  struct TYPE_23__   TYPE_1__ ;

/* Type definitions */
struct TYPE_23__ {int brain_client; } ;
typedef  TYPE_1__ user_options_t ;
struct TYPE_24__ {TYPE_1__* user_options; } ;
typedef  TYPE_2__ hashcat_ctx_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC16 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC17 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC18 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC19 (TYPE_2__*) ; 

int FUNC20 (hashcat_ctx_t *hashcat_ctx)
{
  #ifdef WITH_BRAIN
  #if defined (_WIN)
  user_options_t *user_options = hashcat_ctx->user_options;

  if (user_options->brain_client == true)
  {
    WSACleanup();
  }
  #endif
  #endif

  FUNC3           (hashcat_ctx);
  FUNC4            (hashcat_ctx);
  FUNC6       (hashcat_ctx);
  FUNC7           (hashcat_ctx);
  FUNC8          (hashcat_ctx);
  FUNC9             (hashcat_ctx);
  FUNC10            (hashcat_ctx);
  FUNC2 (hashcat_ctx);
  FUNC1         (hashcat_ctx);
  FUNC11        (hashcat_ctx);
  FUNC12             (hashcat_ctx);
  FUNC13         (hashcat_ctx);
  FUNC14             (hashcat_ctx);
  FUNC15         (hashcat_ctx);
  FUNC17           (hashcat_ctx);
  FUNC18        (hashcat_ctx);
  FUNC19  (hashcat_ctx);
  FUNC16          (hashcat_ctx);
  FUNC5           (hashcat_ctx);

  return 0;
}