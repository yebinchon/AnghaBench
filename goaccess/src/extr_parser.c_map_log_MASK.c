#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_3__ ;
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
struct TYPE_15__ {scalar_t__ data_key; scalar_t__ root_key; void* root_nkey; int /*<<< orphan*/  uniq_nkey; void* data_nkey; } ;
struct TYPE_14__ {int /*<<< orphan*/  uniq_nkey; scalar_t__ uniq_key; } ;
struct TYPE_13__ {int (* key_data ) (TYPE_3__*,TYPE_2__*) ;scalar_t__ datamap; scalar_t__ rootmap; scalar_t__ visitor; } ;
typedef  TYPE_1__ GParse ;
typedef  int /*<<< orphan*/  GModule ;
typedef  TYPE_2__ GLogItem ;
typedef  TYPE_3__ GKeyData ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 scalar_t__ FUNC1 (TYPE_2__*) ; 
 void* FUNC2 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ) ; 
 char* FUNC4 (int /*<<< orphan*/ ,void*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*,TYPE_3__*,TYPE_1__ const*) ; 
 int FUNC7 (TYPE_3__*,TYPE_2__*) ; 

__attribute__((used)) static void
FUNC8 (GLogItem * logitem, const GParse * parse, GModule module)
{
  GKeyData kdata;
  char *uniq_key = NULL;

  FUNC5 (&kdata);
  if (parse->key_data (&kdata, logitem) == 1)
    return;

  /* each module requires a data key/value */
  if (parse->datamap && kdata.data_key)
    kdata.data_nkey = FUNC2 (kdata.data_key, module);

  /* each module contains a uniq visitor key/value */
  if (parse->visitor && logitem->uniq_key && FUNC1 (logitem)) {
    uniq_key = FUNC4 (logitem->uniq_nkey, kdata.data_nkey);
    /* unique key already exists? */
    kdata.uniq_nkey = FUNC3 (uniq_key, module);
    FUNC0 (uniq_key);
  }

  /* root keys are optional */
  if (parse->rootmap && kdata.root_key)
    kdata.root_nkey = FUNC2 (kdata.root_key, module);

  /* each module requires a root key/value */
  if (parse->datamap && kdata.data_key)
    FUNC6 (logitem, &kdata, parse);
}