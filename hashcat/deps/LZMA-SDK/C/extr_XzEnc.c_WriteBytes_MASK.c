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
typedef  int /*<<< orphan*/  ISeqOutStream ;

/* Variables and functions */
 size_t FUNC0 (int /*<<< orphan*/ *,void const*,size_t) ; 
 int /*<<< orphan*/  SZ_ERROR_WRITE ; 
 int /*<<< orphan*/  SZ_OK ; 

__attribute__((used)) static SRes FUNC1(ISeqOutStream *s, const void *buf, size_t size)
{
  return (FUNC0(s, buf, size) == size) ? SZ_OK : SZ_ERROR_WRITE;
}