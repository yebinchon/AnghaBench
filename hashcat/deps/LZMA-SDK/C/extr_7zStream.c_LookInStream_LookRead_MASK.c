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
typedef  int /*<<< orphan*/  SRes ;
typedef  int /*<<< orphan*/  ILookInStream ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/  const*,void const**,size_t*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/  const*,size_t) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SZ_OK ; 
 int /*<<< orphan*/  FUNC3 (void*,void const*,size_t) ; 

SRes FUNC4(const ILookInStream *stream, void *buf, size_t *size)
{
  const void *lookBuf;
  if (*size == 0)
    return SZ_OK;
  FUNC2(FUNC0(stream, &lookBuf, size));
  FUNC3(buf, lookBuf, *size);
  return FUNC1(stream, *size);
}