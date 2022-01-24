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
struct kwsmatch {size_t* offset; int /*<<< orphan*/ * size; scalar_t__ index; } ;
struct kwset {int words; int /*<<< orphan*/  mind; int /*<<< orphan*/ * trans; } ;
typedef  scalar_t__ kwset_t ;

/* Variables and functions */
 size_t FUNC0 (scalar_t__,char const*,size_t) ; 
 size_t FUNC1 (scalar_t__,char const*,size_t,struct kwsmatch*) ; 

size_t
FUNC2 (kwset_t kws, char const *text, size_t size,
	 struct kwsmatch *kwsmatch)
{
  struct kwset const *kwset = (struct kwset *) kws;
  if (kwset->words == 1 && kwset->trans == NULL)
    {
      size_t ret = FUNC0 (kws, text, size);
      if (kwsmatch != NULL && ret != (size_t) -1)
	{
	  kwsmatch->index = 0;
	  kwsmatch->offset[0] = ret;
	  kwsmatch->size[0] = kwset->mind;
	}
      return ret;
    }
  else
    return FUNC1(kws, text, size, kwsmatch);
}