#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  value; int /*<<< orphan*/  key; } ;
typedef  TYPE_1__ IjkAVDictionaryEntry ;
typedef  int /*<<< orphan*/  IjkAVDictionary ;
typedef  int /*<<< orphan*/  AVDictionary ;

/* Variables and functions */
 int /*<<< orphan*/  IJK_AV_DICT_IGNORE_SUFFIX ; 
 int FUNC0 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC1 (int /*<<< orphan*/ *,char*,TYPE_1__*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(AVDictionary **dst, IjkAVDictionary *src) {
    IjkAVDictionaryEntry *t = NULL;

    while ((t = FUNC1(src, "", t, IJK_AV_DICT_IGNORE_SUFFIX))) {
        int ret = FUNC0(dst, t->key, t->value, 0);
        if (ret < 0)
            return ret;
    }

    return 0;
}