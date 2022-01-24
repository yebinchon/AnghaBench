#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ UInt64 ;
typedef  int /*<<< orphan*/  UInt32 ;
struct TYPE_10__ {int /*<<< orphan*/  NumTotalSubStreams; int /*<<< orphan*/  sdNumSubStreams; int /*<<< orphan*/  sdCRCs; int /*<<< orphan*/  sdSizes; } ;
struct TYPE_9__ {int /*<<< orphan*/  NumFolders; } ;
typedef  int /*<<< orphan*/  SRes ;
typedef  int /*<<< orphan*/  ISzAllocPtr ;
typedef  int /*<<< orphan*/  CSzData ;
typedef  TYPE_1__ CSzAr ;
typedef  TYPE_2__ CSubStreamInfo ;
typedef  int /*<<< orphan*/  CBuf ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int /*<<< orphan*/ *,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/  const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SZ_ERROR_UNSUPPORTED ; 
 int /*<<< orphan*/  SZ_OK ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 scalar_t__ k7zIdEnd ; 
 scalar_t__ k7zIdPackInfo ; 
 scalar_t__ k7zIdSubStreamsInfo ; 
 scalar_t__ k7zIdUnpackInfo ; 

__attribute__((used)) static SRes FUNC7(CSzAr *p,
    CSzData *sd,
    UInt32 numFoldersMax, const CBuf *tempBufs, UInt32 numTempBufs,
    UInt64 *dataOffset,
    CSubStreamInfo *ssi,
    ISzAllocPtr alloc)
{
  UInt64 type;

  FUNC6(&ssi->sdSizes);
  FUNC6(&ssi->sdCRCs);
  FUNC6(&ssi->sdNumSubStreams);

  *dataOffset = 0;
  FUNC0(FUNC1(sd, &type));
  if (type == k7zIdPackInfo)
  {
    FUNC0(FUNC2(sd, dataOffset));
    FUNC0(FUNC3(p, sd, alloc));
    FUNC0(FUNC1(sd, &type));
  }
  if (type == k7zIdUnpackInfo)
  {
    FUNC0(FUNC5(p, sd, numFoldersMax, tempBufs, numTempBufs, alloc));
    FUNC0(FUNC1(sd, &type));
  }
  if (type == k7zIdSubStreamsInfo)
  {
    FUNC0(FUNC4(p, sd, ssi));
    FUNC0(FUNC1(sd, &type));
  }
  else
  {
    ssi->NumTotalSubStreams = p->NumFolders;
    // ssi->NumSubDigests = 0;
  }

  return (type == k7zIdEnd ? SZ_OK : SZ_ERROR_UNSUPPORTED);
}