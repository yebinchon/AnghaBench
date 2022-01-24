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
struct TYPE_4__ {int /*<<< orphan*/  db; int /*<<< orphan*/  CTime; int /*<<< orphan*/  MTime; int /*<<< orphan*/  Attribs; int /*<<< orphan*/  CRCs; int /*<<< orphan*/  FileNames; int /*<<< orphan*/  FileNameOffsets; int /*<<< orphan*/  FileToFolder; int /*<<< orphan*/  FolderToFile; int /*<<< orphan*/  IsDirs; int /*<<< orphan*/  UnpackPositions; } ;
typedef  int /*<<< orphan*/  ISzAllocPtr ;
typedef  TYPE_1__ CSzArEx ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

void FUNC5(CSzArEx *p, ISzAllocPtr alloc)
{
  FUNC0(alloc, p->UnpackPositions);
  FUNC0(alloc, p->IsDirs);

  FUNC0(alloc, p->FolderToFile);
  FUNC0(alloc, p->FileToFolder);

  FUNC0(alloc, p->FileNameOffsets);
  FUNC0(alloc, p->FileNames);

  FUNC3(&p->CRCs, alloc);
  FUNC3(&p->Attribs, alloc);
  // SzBitUi32s_Free(&p->Parents, alloc);
  FUNC4(&p->MTime, alloc);
  FUNC4(&p->CTime, alloc);
  
  FUNC2(&p->db, alloc);
  FUNC1(p);
}