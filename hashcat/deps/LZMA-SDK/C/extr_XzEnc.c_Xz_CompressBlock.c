
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_38__ TYPE_8__ ;
typedef struct TYPE_37__ TYPE_7__ ;
typedef struct TYPE_36__ TYPE_6__ ;
typedef struct TYPE_35__ TYPE_5__ ;
typedef struct TYPE_34__ TYPE_4__ ;
typedef struct TYPE_33__ TYPE_3__ ;
typedef struct TYPE_32__ TYPE_2__ ;
typedef struct TYPE_31__ TYPE_26__ ;
typedef struct TYPE_30__ TYPE_23__ ;
typedef struct TYPE_29__ TYPE_1__ ;
typedef struct TYPE_28__ TYPE_19__ ;
typedef struct TYPE_27__ TYPE_13__ ;


typedef scalar_t__ UInt64 ;
struct TYPE_31__ {int Read; } ;
struct TYPE_28__ {TYPE_26__ p; TYPE_26__* realStream; } ;
struct TYPE_30__ {TYPE_26__ vt; TYPE_26__* inStream; } ;
struct TYPE_38__ {TYPE_19__ filter; TYPE_23__ sb; int lzma2; } ;
struct TYPE_37__ {size_t limit; size_t processed; int realStreamFinished; TYPE_26__ vt; int check; scalar_t__ const* data; int * realStream; } ;
struct TYPE_27__ {int Write; } ;
struct TYPE_36__ {size_t outBufLimit; scalar_t__ processed; TYPE_13__ vt; scalar_t__* outBuf; int * realStream; } ;
struct TYPE_35__ {size_t unpackSize; scalar_t__ packSize; TYPE_3__* filters; } ;
struct TYPE_34__ {size_t unpackSize; size_t headerSize; scalar_t__ totalSize; } ;
struct TYPE_33__ {scalar_t__ id; int propsSize; scalar_t__* props; } ;
struct TYPE_32__ {scalar_t__ id; int delta; int ip; scalar_t__ ipDefined; } ;
struct TYPE_29__ {size_t blockSize; scalar_t__ checkId; int lzma2Props; TYPE_2__ filterProps; } ;
typedef int SRes ;
typedef int ISzAllocPtr ;
typedef int ISeqOutStream ;
typedef int ISeqInStream ;
typedef int ICompressProgress ;
typedef int CXzStreamFlags ;
typedef TYPE_1__ CXzProps ;
typedef TYPE_2__ CXzFilterProps ;
typedef TYPE_3__ CXzFilter ;
typedef TYPE_4__ CXzEncBlockInfo ;
typedef TYPE_5__ CXzBlock ;
typedef TYPE_6__ CSeqSizeOutStream ;
typedef TYPE_7__ CSeqCheckInStream ;
typedef TYPE_8__ CLzma2WithFilters ;
typedef scalar_t__ Byte ;
typedef int BoolInt ;


 int False ;
 int Lzma2Enc_Encode2 (int ,TYPE_13__*,scalar_t__*,size_t*,TYPE_26__*,scalar_t__ const*,size_t,int *) ;
 int Lzma2Enc_SetProps (int ,int *) ;
 scalar_t__ Lzma2Enc_WriteProperties (int ) ;
 int Lzma2WithFilters_Create (TYPE_8__*,int ,int ) ;
 int RINOK (int ) ;
 int SZ_ERROR_FAIL ;
 int SZ_OK ;
 int SbEncInStream_Init (TYPE_23__*) ;
 int SeqCheckInStream_GetDigest (TYPE_7__*,scalar_t__*) ;
 int SeqCheckInStream_Init (TYPE_7__*,scalar_t__) ;
 int SeqCheckInStream_Read ;
 int SeqInFilter_Init (TYPE_19__*,TYPE_3__*,int ) ;
 int SeqSizeOutStream_Write ;
 int SetUi32 (scalar_t__*,int ) ;
 int WriteBytes (TYPE_13__*,scalar_t__*,scalar_t__) ;
 size_t XZ_BLOCK_HEADER_SIZE_MAX ;
 unsigned int XZ_GET_PAD_SIZE (scalar_t__) ;
 scalar_t__ XZ_ID_Delta ;
 scalar_t__ XZ_ID_LZMA2 ;
 scalar_t__ XZ_ID_Subblock ;
 int XzBlock_ClearFlags (TYPE_5__*) ;
 int XzBlock_SetHasPackSize (TYPE_5__*) ;
 int XzBlock_SetHasUnpackSize (TYPE_5__*) ;
 int XzBlock_SetNumFilters (TYPE_5__*,int) ;
 int XzBlock_WriteHeader (TYPE_5__*,TYPE_13__*) ;
 int XzCheck_Update (int *,scalar_t__ const*,size_t) ;
 scalar_t__ XzFlags_GetCheckSize (int ) ;

__attribute__((used)) static SRes Xz_CompressBlock(
    CLzma2WithFilters *lzmaf,

    ISeqOutStream *outStream,
    Byte *outBufHeader,
    Byte *outBufData, size_t outBufDataLimit,

    ISeqInStream *inStream,

    const Byte *inBuf,
    size_t inBufSize,

    const CXzProps *props,
    ICompressProgress *progress,
    int *inStreamFinished,
    CXzEncBlockInfo *blockSizes,
    ISzAllocPtr alloc,
    ISzAllocPtr allocBig)
{
  CSeqCheckInStream checkInStream;
  CSeqSizeOutStream seqSizeOutStream;
  CXzBlock block;
  unsigned filterIndex = 0;
  CXzFilter *filter = ((void*)0);
  const CXzFilterProps *fp = &props->filterProps;
  if (fp->id == 0)
    fp = ((void*)0);

  *inStreamFinished = False;

  RINOK(Lzma2WithFilters_Create(lzmaf, alloc, allocBig));

  RINOK(Lzma2Enc_SetProps(lzmaf->lzma2, &props->lzma2Props));

  XzBlock_ClearFlags(&block);
  XzBlock_SetNumFilters(&block, 1 + (fp ? 1 : 0));

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
      SetUi32(filter->props, fp->ip);
      filter->propsSize = 4;
    }
  }

  {
    CXzFilter *f = &block.filters[filterIndex++];
    f->id = XZ_ID_LZMA2;
    f->propsSize = 1;
    f->props[0] = Lzma2Enc_WriteProperties(lzmaf->lzma2);
  }

  seqSizeOutStream.vt.Write = SeqSizeOutStream_Write;
  seqSizeOutStream.realStream = outStream;
  seqSizeOutStream.outBuf = outBufData;
  seqSizeOutStream.outBufLimit = outBufDataLimit;
  seqSizeOutStream.processed = 0;
  if (outStream)
  {
    RINOK(XzBlock_WriteHeader(&block, &seqSizeOutStream.vt));
  }

  checkInStream.vt.Read = SeqCheckInStream_Read;
  SeqCheckInStream_Init(&checkInStream, props->checkId);

  checkInStream.realStream = inStream;
  checkInStream.data = inBuf;
  checkInStream.limit = props->blockSize;
  if (!inStream)
    checkInStream.limit = inBufSize;

  if (fp)
  {
    {
      lzmaf->filter.realStream = &checkInStream.vt;
      RINOK(SeqInFilter_Init(&lzmaf->filter, filter, alloc));
    }
  }

  {
    SRes res;
    Byte *outBuf = ((void*)0);
    size_t outSize = 0;
    BoolInt useStream = (fp || inStream);


    if (!useStream)
    {
      XzCheck_Update(&checkInStream.check, inBuf, inBufSize);
      checkInStream.processed = inBufSize;
    }

    if (!outStream)
    {
      outBuf = seqSizeOutStream.outBuf;
      outSize = seqSizeOutStream.outBufLimit;
    }

    res = Lzma2Enc_Encode2(lzmaf->lzma2,
        outBuf ? ((void*)0) : &seqSizeOutStream.vt,
        outBuf,
        outBuf ? &outSize : ((void*)0),

        useStream ?
          (fp ?
            (



            &lzmaf->filter.p) :
            &checkInStream.vt) : ((void*)0),

        useStream ? ((void*)0) : inBuf,
        useStream ? 0 : inBufSize,

        progress);

    if (outBuf)
      seqSizeOutStream.processed += outSize;

    RINOK(res);
    blockSizes->unpackSize = checkInStream.processed;
  }
  {
    Byte buf[4 + 64];
    unsigned padSize = XZ_GET_PAD_SIZE(seqSizeOutStream.processed);
    UInt64 packSize = seqSizeOutStream.processed;

    buf[0] = 0;
    buf[1] = 0;
    buf[2] = 0;
    buf[3] = 0;

    SeqCheckInStream_GetDigest(&checkInStream, buf + 4);
    RINOK(WriteBytes(&seqSizeOutStream.vt, buf + (4 - padSize), padSize + XzFlags_GetCheckSize((CXzStreamFlags)props->checkId)));

    blockSizes->totalSize = seqSizeOutStream.processed - padSize;

    if (!outStream)
    {
      seqSizeOutStream.outBuf = outBufHeader;
      seqSizeOutStream.outBufLimit = XZ_BLOCK_HEADER_SIZE_MAX;
      seqSizeOutStream.processed = 0;

      block.unpackSize = blockSizes->unpackSize;
      XzBlock_SetHasUnpackSize(&block);

      block.packSize = packSize;
      XzBlock_SetHasPackSize(&block);

      RINOK(XzBlock_WriteHeader(&block, &seqSizeOutStream.vt));

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
