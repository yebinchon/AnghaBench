#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int UInt64 ;
struct TYPE_5__ {size_t (* Write ) (TYPE_1__*,scalar_t__*,size_t) ;} ;
typedef  scalar_t__ SRes ;
typedef  TYPE_1__ ISeqOutStream ;
typedef  int /*<<< orphan*/  ISeqInStream ;
typedef  int /*<<< orphan*/  CLzmaEncProps ;
typedef  scalar_t__ CLzmaEncHandle ;
typedef  scalar_t__ Byte ;

/* Variables and functions */
 int LZMA_PROPS_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (scalar_t__,TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (scalar_t__,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (scalar_t__,scalar_t__*,size_t*) ; 
 scalar_t__ SZ_ERROR_MEM ; 
 scalar_t__ SZ_ERROR_WRITE ; 
 scalar_t__ SZ_OK ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 int /*<<< orphan*/  g_Alloc ; 
 size_t FUNC7 (TYPE_1__*,scalar_t__*,size_t) ; 

__attribute__((used)) static SRes FUNC8(ISeqOutStream *outStream, ISeqInStream *inStream, UInt64 fileSize, char *rs)
{
  CLzmaEncHandle enc;
  SRes res;
  CLzmaEncProps props;

  FUNC6(rs);

  enc = FUNC1(&g_Alloc);
  if (enc == 0)
    return SZ_ERROR_MEM;

  FUNC0(&props);
  res = FUNC4(enc, &props);

  if (res == SZ_OK)
  {
    Byte header[LZMA_PROPS_SIZE + 8];
    size_t headerSize = LZMA_PROPS_SIZE;
    int i;

    res = FUNC5(enc, header, &headerSize);
    for (i = 0; i < 8; i++)
      header[headerSize++] = (Byte)(fileSize >> (8 * i));
    if (outStream->Write(outStream, header, headerSize) != headerSize)
      res = SZ_ERROR_WRITE;
    else
    {
      if (res == SZ_OK)
        res = FUNC3(enc, outStream, inStream, NULL, &g_Alloc, &g_Alloc);
    }
  }
  FUNC2(enc, &g_Alloc, &g_Alloc);
  return res;
}