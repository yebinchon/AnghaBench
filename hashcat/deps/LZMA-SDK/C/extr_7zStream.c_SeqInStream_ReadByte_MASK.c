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
typedef  int /*<<< orphan*/  ISeqInStream ;
typedef  int /*<<< orphan*/  Byte ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/  const*,int /*<<< orphan*/ *,size_t*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SZ_ERROR_INPUT_EOF ; 
 int /*<<< orphan*/  SZ_OK ; 

SRes FUNC2(const ISeqInStream *stream, Byte *buf)
{
  size_t processed = 1;
  FUNC1(FUNC0(stream, buf, &processed));
  return (processed == 1) ? SZ_OK : SZ_ERROR_INPUT_EOF;
}