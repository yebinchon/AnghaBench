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
struct TYPE_4__ {int /*<<< orphan*/  CodersData; int /*<<< orphan*/  CoderUnpackSizes; int /*<<< orphan*/  FoToMainUnpackSizeIndex; int /*<<< orphan*/  FoToCoderUnpackSizes; int /*<<< orphan*/  FoStartPackStreamIndex; int /*<<< orphan*/  FoCodersOffsets; int /*<<< orphan*/  FolderCRCs; int /*<<< orphan*/  PackPositions; } ;
typedef  int /*<<< orphan*/  ISzAllocPtr ;
typedef  TYPE_1__ CSzAr ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(CSzAr *p, ISzAllocPtr alloc)
{
  FUNC0(alloc, p->PackPositions);
  FUNC2(&p->FolderCRCs, alloc);
 
  FUNC0(alloc, p->FoCodersOffsets);
  FUNC0(alloc, p->FoStartPackStreamIndex);
  FUNC0(alloc, p->FoToCoderUnpackSizes);
  FUNC0(alloc, p->FoToMainUnpackSizeIndex);
  FUNC0(alloc, p->CoderUnpackSizes);
  
  FUNC0(alloc, p->CodersData);

  FUNC1(p);
}