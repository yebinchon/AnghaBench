#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  CTime; int /*<<< orphan*/  MTime; int /*<<< orphan*/  Attribs; int /*<<< orphan*/  CRCs; int /*<<< orphan*/ * FileNames; int /*<<< orphan*/ * FileNameOffsets; int /*<<< orphan*/ * FileToFolder; int /*<<< orphan*/ * FolderToFile; int /*<<< orphan*/ * IsDirs; int /*<<< orphan*/ * UnpackPositions; scalar_t__ dataPos; scalar_t__ NumFiles; int /*<<< orphan*/  db; } ;
typedef  TYPE_1__ CSzArEx ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

void FUNC3(CSzArEx *p)
{
  FUNC0(&p->db);
  
  p->NumFiles = 0;
  p->dataPos = 0;
  
  p->UnpackPositions = NULL;
  p->IsDirs = NULL;
  
  p->FolderToFile = NULL;
  p->FileToFolder = NULL;
  
  p->FileNameOffsets = NULL;
  p->FileNames = NULL;
  
  FUNC1(&p->CRCs);
  FUNC1(&p->Attribs);
  // SzBitUi32s_Init(&p->Parents);
  FUNC2(&p->MTime);
  FUNC2(&p->CTime);
}