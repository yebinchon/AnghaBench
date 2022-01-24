#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int uint32_t ;
struct PNG_ChunkHeader {int /*<<< orphan*/  Type; int /*<<< orphan*/  Length; } ;
struct BufferedFile {int dummy; } ;
typedef  scalar_t__ int32_t ;
struct TYPE_2__ {int /*<<< orphan*/  (* Free ) (int /*<<< orphan*/ *) ;int /*<<< orphan*/ * (* Malloc ) (int) ;} ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 void* FUNC1 (struct BufferedFile*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct BufferedFile*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct BufferedFile*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (struct BufferedFile*,int) ; 
 scalar_t__ PNG_ChunkCRC_Size ; 
 int PNG_ChunkHeader_Size ; 
 int PNG_ChunkType_IDAT ; 
 int PNG_ZlibCheckValue_Size ; 
 int PNG_ZlibHeader_Size ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *,int*,int /*<<< orphan*/ *,int*) ; 
 scalar_t__ qtrue ; 
 TYPE_1__ ri ; 
 int /*<<< orphan*/ * FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC12 (int) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static uint32_t FUNC16(struct BufferedFile *BF, uint8_t **Buffer)
{
	uint8_t  *DecompressedData;
	uint32_t  DecompressedDataLength;

	uint8_t  *CompressedData;
	uint8_t  *CompressedDataPtr;
	uint32_t  CompressedDataLength;

	struct PNG_ChunkHeader *CH;

	uint32_t Length;
	uint32_t Type;

	int BytesToRewind;

	int32_t   puffResult;
	uint8_t  *puffDest;
	uint32_t  puffDestLen;
	uint8_t  *puffSrc;
	uint32_t  puffSrcLen;

	/*
	 *  input verification
	 */

	if(!(BF && Buffer))
	{
		return(-1);
	}

	/*
	 *  some zeroing
	 */

	DecompressedData = NULL;
	*Buffer = DecompressedData;

	CompressedData = NULL;
	CompressedDataLength = 0;

	BytesToRewind = 0;

	/*
	 *  Find the first IDAT chunk.
	 */

	if(!FUNC4(BF, PNG_ChunkType_IDAT))
	{
		return(-1);
	}

	/*
	 *  Count the size of the uncompressed data
	 */

	while(qtrue)
	{
		/*
		 *  Read chunk header
		 */

		CH = FUNC1(BF, PNG_ChunkHeader_Size);
		if(!CH)
		{
			/*
			 *  Rewind to the start of this adventure
			 *  and return unsuccessful
			 */

			FUNC2(BF, BytesToRewind);

			return(-1);
		}

		/*
		 *  Length and Type of chunk
		 */

		Length = FUNC0(CH->Length);
		Type   = FUNC0(CH->Type);

		/*
		 *  We have reached the end of the IDAT chunks
		 */

		if(!(Type == PNG_ChunkType_IDAT))
		{
			FUNC2(BF, PNG_ChunkHeader_Size); 

			break;
		}

		/*
		 *  Add chunk header to count.
		 */

		BytesToRewind += PNG_ChunkHeader_Size;

		/*
		 *  Skip to next chunk
		 */

		if(Length)
		{
			if(!FUNC3(BF, Length + PNG_ChunkCRC_Size))
			{
				FUNC2(BF, BytesToRewind);

				return(-1);
			}

			BytesToRewind += Length + PNG_ChunkCRC_Size;
			CompressedDataLength += Length;
		} 
	}

	FUNC2(BF, BytesToRewind);

	CompressedData = ri.Malloc(CompressedDataLength);
	if(!CompressedData)
	{
		return(-1);
	}

	CompressedDataPtr = CompressedData;

	/*
	 *  Collect the compressed Data
	 */

	while(qtrue)
	{
		/*
		 *  Read chunk header
		 */

		CH = FUNC1(BF, PNG_ChunkHeader_Size);
		if(!CH)
		{
			ri.Free(CompressedData); 

			return(-1);
		}

		/*
		 *  Length and Type of chunk
		 */

		Length = FUNC0(CH->Length);
		Type   = FUNC0(CH->Type);

		/*
		 *  We have reached the end of the IDAT chunks
		 */

		if(!(Type == PNG_ChunkType_IDAT))
		{
			FUNC2(BF, PNG_ChunkHeader_Size); 

			break;
		}

		/*
		 *  Copy the Data
		 */

		if(Length)
		{
			uint8_t *OrigCompressedData;

			OrigCompressedData = FUNC1(BF, Length);
			if(!OrigCompressedData)
			{
				ri.Free(CompressedData); 

				return(-1);
			}

			if(!FUNC3(BF, PNG_ChunkCRC_Size))
			{
				ri.Free(CompressedData); 

				return(-1);
			}

			FUNC5(CompressedDataPtr, OrigCompressedData, Length);
			CompressedDataPtr += Length;
		} 
	}

	/*
	 *  Let puff() calculate the decompressed data length.
	 */

	puffDest    = NULL;
	puffDestLen = 0;

	/*
	 *  The zlib header and checkvalue don't belong to the compressed data.
	 */

	puffSrc    = CompressedData + PNG_ZlibHeader_Size;
	puffSrcLen = CompressedDataLength - PNG_ZlibHeader_Size - PNG_ZlibCheckValue_Size;

	/*
	 *  first puff() to calculate the size of the uncompressed data
	 */

	puffResult = FUNC6(puffDest, &puffDestLen, puffSrc, &puffSrcLen);
	if(!((puffResult == 0) && (puffDestLen > 0)))
	{
		ri.Free(CompressedData);

		return(-1);
	}

	/*
	 *  Allocate the buffer for the uncompressed data.
	 */

	DecompressedData = ri.Malloc(puffDestLen);
	if(!DecompressedData)
	{
		ri.Free(CompressedData);

		return(-1);
	}

	/*
	 *  Set the input again in case something was changed by the last puff() .
	 */

	puffDest   = DecompressedData;
	puffSrc    = CompressedData + PNG_ZlibHeader_Size;
	puffSrcLen = CompressedDataLength - PNG_ZlibHeader_Size - PNG_ZlibCheckValue_Size;

	/*
	 *  decompression puff()
	 */

	puffResult = FUNC6(puffDest, &puffDestLen, puffSrc, &puffSrcLen);

	/*
	 *  The compressed data is not needed anymore.
	 */

	ri.Free(CompressedData);

	/*
	 *  Check if the last puff() was successful.
	 */

	if(!((puffResult == 0) && (puffDestLen > 0)))
	{
		ri.Free(DecompressedData);

		return(-1);
	}

	/*
	 *  Set the output of this function.
	 */

	DecompressedDataLength = puffDestLen;
	*Buffer = DecompressedData;

	return(DecompressedDataLength);
}