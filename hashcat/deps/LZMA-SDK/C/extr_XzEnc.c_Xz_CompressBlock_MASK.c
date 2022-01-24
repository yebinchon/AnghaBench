#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_38__   TYPE_8__ ;
typedef  struct TYPE_37__   TYPE_7__ ;
typedef  struct TYPE_36__   TYPE_6__ ;
typedef  struct TYPE_35__   TYPE_5__ ;
typedef  struct TYPE_34__   TYPE_4__ ;
typedef  struct TYPE_33__   TYPE_3__ ;
typedef  struct TYPE_32__   TYPE_2__ ;
typedef  struct TYPE_31__   TYPE_26__ ;
typedef  struct TYPE_30__   TYPE_23__ ;
typedef  struct TYPE_29__   TYPE_1__ ;
typedef  struct TYPE_28__   TYPE_19__ ;
typedef  struct TYPE_27__   TYPE_13__ ;

/* Type definitions */
typedef  scalar_t__ UInt64 ;
struct TYPE_31__ {int /*<<< orphan*/  Read; } ;
struct TYPE_28__ {TYPE_26__ p; TYPE_26__* realStream; } ;
struct TYPE_30__ {TYPE_26__ vt; TYPE_26__* inStream; } ;
struct TYPE_38__ {TYPE_19__ filter; TYPE_23__ sb; int /*<<< orphan*/  lzma2; } ;
struct TYPE_37__ {size_t limit; size_t processed; int realStreamFinished; TYPE_26__ vt; int /*<<< orphan*/  check; scalar_t__ const* data; int /*<<< orphan*/ * realStream; } ;
struct TYPE_27__ {int /*<<< orphan*/  Write; } ;
struct TYPE_36__ {size_t outBufLimit; scalar_t__ processed; TYPE_13__ vt; scalar_t__* outBuf; int /*<<< orphan*/ * realStream; } ;
struct TYPE_35__ {size_t unpackSize; scalar_t__ packSize; TYPE_3__* filters; } ;
struct TYPE_34__ {size_t unpackSize; size_t headerSize; scalar_t__ totalSize; } ;
struct TYPE_33__ {scalar_t__ id; int propsSize; scalar_t__* props; } ;
struct TYPE_32__ {scalar_t__ id; int delta; int /*<<< orphan*/  ip; scalar_t__ ipDefined; } ;
struct TYPE_29__ {size_t blockSize; scalar_t__ checkId; int /*<<< orphan*/  lzma2Props; TYPE_2__ filterProps; } ;
typedef  int /*<<< orphan*/  SRes ;
typedef  int /*<<< orphan*/  ISzAllocPtr ;
typedef  int /*<<< orphan*/  ISeqOutStream ;
typedef  int /*<<< orphan*/  ISeqInStream ;
typedef  int /*<<< orphan*/  ICompressProgress ;
typedef  int /*<<< orphan*/  CXzStreamFlags ;
typedef  TYPE_1__ CXzProps ;
typedef  TYPE_2__ CXzFilterProps ;
typedef  TYPE_3__ CXzFilter ;
typedef  TYPE_4__ CXzEncBlockInfo ;
typedef  TYPE_5__ CXzBlock ;
typedef  TYPE_6__ CSeqSizeOutStream ;
typedef  TYPE_7__ CSeqCheckInStream ;
typedef  TYPE_8__ CLzma2WithFilters ;
typedef  scalar_t__ Byte ;
typedef  int BoolInt ;

/* Variables and functions */
 int False ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,TYPE_13__*,scalar_t__*,size_t*,TYPE_26__*,scalar_t__ const*,size_t,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_8__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SZ_ERROR_FAIL ; 
 int /*<<< orphan*/  SZ_OK ; 
 int /*<<< orphan*/  FUNC5 (TYPE_23__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_7__*,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_7__*,scalar_t__) ; 
 int /*<<< orphan*/  SeqCheckInStream_Read ; 
 int /*<<< orphan*/  FUNC8 (TYPE_19__*,TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SeqSizeOutStream_Write ; 
 int /*<<< orphan*/  FUNC9 (scalar_t__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_13__*,scalar_t__*,scalar_t__) ; 
 size_t XZ_BLOCK_HEADER_SIZE_MAX ; 
 unsigned int FUNC11 (scalar_t__) ; 
 scalar_t__ XZ_ID_Delta ; 
 scalar_t__ XZ_ID_LZMA2 ; 
 scalar_t__ XZ_ID_Subblock ; 
 int /*<<< orphan*/  FUNC12 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_5__*,int) ; 
 int /*<<< orphan*/  FUNC16 (TYPE_5__*,TYPE_13__*) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *,scalar_t__ const*,size_t) ; 
 scalar_t__ FUNC18 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static SRes FUNC19(
    CLzma2WithFilters *lzmaf,
    
    ISeqOutStream *outStream,
    Byte *outBufHeader,
    Byte *outBufData, size_t outBufDataLimit,

    ISeqInStream *inStream,
    // UInt64 expectedSize,
    const Byte *inBuf, // used if (!inStream)
    size_t inBufSize,  // used if (!inStream), it's block size, props->blockSize is ignored

    const CXzProps *props,
    ICompressProgress *progress,
    int *inStreamFinished,  /* only for inStream version */
    CXzEncBlockInfo *blockSizes,
    ISzAllocPtr alloc,
    ISzAllocPtr allocBig)
{
  CSeqCheckInStream checkInStream;
  CSeqSizeOutStream seqSizeOutStream;
  CXzBlock block;
  unsigned filterIndex = 0;
  CXzFilter *filter = NULL;
  const CXzFilterProps *fp = &props->filterProps;
  if (fp->id == 0)
    fp = NULL;
  
  *inStreamFinished = False;
  
  FUNC4(FUNC3(lzmaf, alloc, allocBig));
  
  FUNC4(FUNC1(lzmaf->lzma2, &props->lzma2Props));
  
  FUNC12(&block);
  FUNC15(&block, 1 + (fp ? 1 : 0));
  
  if (fp)
  {
    filter = &block.filters[filterIndex++];
    filter->id = fp->id;
    filter->propsSize = 0;
    
    if (fp->id == XZ_ID_Delta)
    {
      filter->props[0] = (Byte)(fp->delta - 1);
      filter->propsSize = 1;
    }
    else if (fp->ipDefined)
    {
      FUNC9(filter->props, fp->ip);
      filter->propsSize = 4;
    }
  }
  
  {
    CXzFilter *f = &block.filters[filterIndex++];
    f->id = XZ_ID_LZMA2;
    f->propsSize = 1;
    f->props[0] = FUNC2(lzmaf->lzma2);
  }
  
  seqSizeOutStream.vt.Write = SeqSizeOutStream_Write;
  seqSizeOutStream.realStream = outStream;
  seqSizeOutStream.outBuf = outBufData;
  seqSizeOutStream.outBufLimit = outBufDataLimit;
  seqSizeOutStream.processed = 0;
    
  /*
  if (expectedSize != (UInt64)(Int64)-1)
  {
    block.unpackSize = expectedSize;
    if (props->blockSize != (UInt64)(Int64)-1)
      if (expectedSize > props->blockSize)
        block.unpackSize = props->blockSize;
    XzBlock_SetHasUnpackSize(&block);
  }
  */

  if (outStream)
  {
    FUNC4(FUNC16(&block, &seqSizeOutStream.vt));
  }
  
  checkInStream.vt.Read = SeqCheckInStream_Read;
  FUNC7(&checkInStream, props->checkId);
  
  checkInStream.realStream = inStream;
  checkInStream.data = inBuf;
  checkInStream.limit = props->blockSize;
  if (!inStream)
    checkInStream.limit = inBufSize;

  if (fp)
  {
    #ifdef USE_SUBBLOCK
    if (fp->id == XZ_ID_Subblock)
    {
      lzmaf->sb.inStream = &checkInStream.vt;
      RINOK(SbEncInStream_Init(&lzmaf->sb));
    }
    else
    #endif
    {
      lzmaf->filter.realStream = &checkInStream.vt;
      FUNC4(FUNC8(&lzmaf->filter, filter, alloc));
    }
  }

  {
    SRes res;
    Byte *outBuf = NULL;
    size_t outSize = 0;
    BoolInt useStream = (fp || inStream);
    // useStream = True;
    
    if (!useStream)
    {
      FUNC17(&checkInStream.check, inBuf, inBufSize);
      checkInStream.processed = inBufSize;
    }
    
    if (!outStream)
    {
      outBuf = seqSizeOutStream.outBuf; //  + (size_t)seqSizeOutStream.processed;
      outSize = seqSizeOutStream.outBufLimit; // - (size_t)seqSizeOutStream.processed;
    }
    
    res = FUNC0(lzmaf->lzma2,
        outBuf ? NULL : &seqSizeOutStream.vt,
        outBuf,
        outBuf ? &outSize : NULL,
      
        useStream ?
          (fp ?
            (
            #ifdef USE_SUBBLOCK
            (fp->id == XZ_ID_Subblock) ? &lzmaf->sb.vt:
            #endif
            &lzmaf->filter.p) :
            &checkInStream.vt) : NULL,
      
        useStream ? NULL : inBuf,
        useStream ? 0 : inBufSize,
        
        progress);
    
    if (outBuf)
      seqSizeOutStream.processed += outSize;
    
    FUNC4(res);
    blockSizes->unpackSize = checkInStream.processed;
  }
  {
    Byte buf[4 + 64];
    unsigned padSize = FUNC11(seqSizeOutStream.processed);
    UInt64 packSize = seqSizeOutStream.processed;
    
    buf[0] = 0;
    buf[1] = 0;
    buf[2] = 0;
    buf[3] = 0;
    
    FUNC6(&checkInStream, buf + 4);
    FUNC4(FUNC10(&seqSizeOutStream.vt, buf + (4 - padSize), padSize + FUNC18((CXzStreamFlags)props->checkId)));
    
    blockSizes->totalSize = seqSizeOutStream.processed - padSize;
    
    if (!outStream)
    {
      seqSizeOutStream.outBuf = outBufHeader;
      seqSizeOutStream.outBufLimit = XZ_BLOCK_HEADER_SIZE_MAX;
      seqSizeOutStream.processed = 0;
      
      block.unpackSize = blockSizes->unpackSize;
      FUNC14(&block);
      
      block.packSize = packSize;
      FUNC13(&block);
      
      FUNC4(FUNC16(&block, &seqSizeOutStream.vt));
      
      blockSizes->headerSize = (size_t)seqSizeOutStream.processed;
      blockSizes->totalSize += seqSizeOutStream.processed;
    }
  }
  
  if (inStream)
    *inStreamFinished = checkInStream.realStreamFinished;
  else
  {
    *inStreamFinished = False;
    if (checkInStream.processed != inBufSize)
      return SZ_ERROR_FAIL;
  }

  return SZ_OK;
}