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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int) ; 
 int FUNC1 (int) ; 
 int FUNC2 (int) ; 
 int FUNC3 (int) ; 
 int FUNC4 (int) ; 
 int FUNC5 (int) ; 
 int FUNC6 (int) ; 
 int FUNC7 (int) ; 
 int FUNC8 (int) ; 
 int FUNC9 (int) ; 
 int FUNC10 (int) ; 
 int FUNC11 (int) ; 
 int FUNC12 (int) ; 
 int FUNC13 (int) ; 
 int FUNC14 (int) ; 
 int FUNC15 (int) ; 
 int FUNC16 (int) ; 
 int FUNC17 (int) ; 
 int FUNC18 (int) ; 
 int FUNC19 (int) ; 
 int FUNC20 (int) ; 
 int FUNC21 (int) ; 
 int FUNC22 (int) ; 
 int FUNC23 (int) ; 
 int FUNC24 (int) ; 
 int FUNC25 (int) ; 
 int FUNC26 (int) ; 
 int FUNC27 (int) ; 
 int FUNC28 (int) ; 
 int FUNC29 (int) ; 
 int FUNC30 (int) ; 
 int FUNC31 (int) ; 
 int FUNC32 (int) ; 
 int log_schema ; 
 int /*<<< orphan*/  stderr ; 

int FUNC33 (int schema) {
  int res = -1;
  switch (schema & (-1 << 16)) {
  case 0x6ba30000:
    res = FUNC30 (schema);
    break;
  case 0x3ae60000:
    res = FUNC27 (schema);
    break;
  case 0xbeef0000:
    res = FUNC24 (schema);
    break;  
  case 0x2bec0000:
    res = FUNC9 (schema);
    break;
  case 0x53c40000:
    res = FUNC19 (schema);
    break;
  case 0x6ef20000:
    res = FUNC14 (schema);
    break;
  case 0x2cb30000:
    res = FUNC31 (schema);
    break;
  case 0xf00d0000:
    res = FUNC18 (schema);
    break;
  case 0x4fad0000:
    res = FUNC12 (schema);
    break;
  case 0x3ad50000:
    res = FUNC2 (schema);
    break;
  case 0x7a9c0000:
    res = FUNC16 (schema);
    break;
  case 0x5f180000:
    res = FUNC21 (schema);
    break;
  case 0xafe60000:
    res = FUNC17 (schema);
    break;
  case 0x5fad0000:
    res = FUNC13 (schema);
    break;
  case 0x21090000:
    res = FUNC15 (schema);
    break;
  case 0x37450000:
    res = FUNC22 (schema);
    break;
  case 0xfa730000:
    res = FUNC26 (schema);
    break;
  case 0x65510000:
    res = FUNC20 (schema);
    break;
  case 0x723d0000:
    res = FUNC8 (schema);
    break;
  case 0x3ded0000:
    res = FUNC3 (schema);
    break;
  case 0x521e0000:
    res = FUNC32 (schema);
    break;
  case 0x144a0000:
    res = FUNC7 (schema);
    break;
  case 0x805a0000:
    res = FUNC28 (schema);
    break;
  case 0x1fec0000:
    res = FUNC29 (schema);
    break;
  case 0x91a70000:
    res = FUNC1 (schema);
    break;
  case 0x29790000:
    res = FUNC4 (schema);
    break;
  case 0xeda90000:
    res = FUNC5 (schema);
    break;
  case 0xedaa0000:
    res = FUNC6 (schema);
    break;
  case 0x8f6a0000:
    res = FUNC10 (schema);
    break;
  case 0xfa8f0000:
    res = FUNC11 (schema);
    break;
  case 0x8f0e0000:
    res = FUNC25 (schema);
    break;
  case 0xf9a90000:
    res = FUNC23 (schema);
    break;
  }
  if (res >= 0) {
    log_schema = schema;
  } else {
    FUNC0 (stderr, "unknown schema: %08x\n", schema);
  }
  return res;
}