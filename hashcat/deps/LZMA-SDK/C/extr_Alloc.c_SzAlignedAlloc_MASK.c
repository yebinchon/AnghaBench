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
typedef  int /*<<< orphan*/  ISzAllocPtr ;

/* Variables and functions */
 size_t ADJUST_ALLOC_SIZE ; 
 int ALLOC_ALIGN_SIZE ; 
 void* FUNC0 (void*,int) ; 
 void* FUNC1 (size_t) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (void*) ; 
 int /*<<< orphan*/  FUNC4 (size_t,int) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (void**,int,size_t) ; 

__attribute__((used)) static void *FUNC8(ISzAllocPtr pp, size_t size)
{
  #ifndef USE_posix_memalign
  
  void *p;
  void *pAligned;
  size_t newSize;
  FUNC6(pp);

  /* also we can allocate additional dummy ALLOC_ALIGN_SIZE bytes after aligned
     block to prevent cache line sharing with another allocated blocks */

  newSize = size + ALLOC_ALIGN_SIZE * 1 + ADJUST_ALLOC_SIZE;
  if (newSize < size)
    return NULL;

  p = FUNC1(newSize);
  
  if (!p)
    return NULL;
  pAligned = FUNC0(p, ALLOC_ALIGN_SIZE);

  FUNC2(" size="); FUNC4(size, 8);
  FUNC2(" a_size="); FUNC4(newSize, 8);
  FUNC2(" ptr="); FUNC3(p);
  FUNC2(" a_ptr="); FUNC3(pAligned);
  FUNC5();

  ((void **)pAligned)[-1] = p;

  return pAligned;

  #else

  void *p;
  UNUSED_VAR(pp);
  if (posix_memalign(&p, ALLOC_ALIGN_SIZE, size))
    return NULL;

  Print(" posix_memalign="); PrintAddr(p);
  PrintLn();

  return p;

  #endif
}