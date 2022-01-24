#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {int /*<<< orphan*/  pDataFlashDesc; TYPE_1__* pDevice; } ;
struct TYPE_8__ {int pages_size; int pages_number; int /*<<< orphan*/  cs; } ;
typedef  int /*<<< orphan*/  AT91S_DataFlashStatus ;
typedef  TYPE_2__* AT91PS_DataFlash ;

/* Variables and functions */
 int /*<<< orphan*/  AT91C_DATAFLASH_ERROR ; 
 int /*<<< orphan*/  AT91C_DATAFLASH_MEMORY_OVERFLOW ; 
 int /*<<< orphan*/  AT91C_DATAFLASH_OK ; 
 int /*<<< orphan*/  AT91C_DATAFLASH_TIMEOUT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 unsigned int FUNC1 (TYPE_2__*,int /*<<< orphan*/ ,unsigned char*,int /*<<< orphan*/ ,unsigned int) ; 
 unsigned int FUNC2 (TYPE_2__*,unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,unsigned char*,int,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 unsigned int FUNC5 (TYPE_2__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  DB_BUF1_PAGE_PGM ; 
 int /*<<< orphan*/  DB_BUF1_WRITE ; 

AT91S_DataFlashStatus FUNC6(
	AT91PS_DataFlash pDataFlash,
	unsigned char *src,
	int dest,
	int size )
{
	unsigned int length;
	unsigned int page;
	unsigned int status;

	FUNC4(pDataFlash->pDevice->cs);

	if ( (dest + size) > (pDataFlash->pDevice->pages_size * (pDataFlash->pDevice->pages_number)))
		return AT91C_DATAFLASH_MEMORY_OVERFLOW;

    	/* If destination does not fit a page start address */
	if ((dest % ((unsigned int)(pDataFlash->pDevice->pages_size)))  != 0 ) {
		length = pDataFlash->pDevice->pages_size - (dest % ((unsigned int)(pDataFlash->pDevice->pages_size)));

		if (size < length)
			length = size;

		if(!FUNC3(pDataFlash,src, dest, length))
			return AT91C_DATAFLASH_ERROR;

		FUNC0(pDataFlash->pDataFlashDesc, AT91C_DATAFLASH_TIMEOUT);

		/* Update size, source and destination pointers */
        	size -= length;
        	dest += length;
        	src += length;
	}

	while (( size - pDataFlash->pDevice->pages_size ) >= 0 ) 
	{
		/* program dataflash page */		
		page = (unsigned int)dest / (pDataFlash->pDevice->pages_size);

		status = FUNC1(pDataFlash, DB_BUF1_WRITE, src,
		                                    0, pDataFlash->pDevice->pages_size);
		FUNC0(pDataFlash->pDataFlashDesc, AT91C_DATAFLASH_TIMEOUT);
	
		status = FUNC2(pDataFlash, page);
		FUNC0(pDataFlash->pDataFlashDesc, AT91C_DATAFLASH_TIMEOUT);
		if (!status)
			return AT91C_DATAFLASH_ERROR;
		
		status = FUNC5 (pDataFlash, DB_BUF1_PAGE_PGM, dest);
		if(!status)
			return AT91C_DATAFLASH_ERROR;

		FUNC0(pDataFlash->pDataFlashDesc, AT91C_DATAFLASH_TIMEOUT);
	
		/* Update size, source and destination pointers */
	   	size -= pDataFlash->pDevice->pages_size ;
	   	dest += pDataFlash->pDevice->pages_size ;
	   	src  += pDataFlash->pDevice->pages_size ;
	}

	/* If still some bytes to read */
	if ( size > 0 ) {
		/* program dataflash page */
		if(!FUNC3(pDataFlash, src, dest, size) )
			return AT91C_DATAFLASH_ERROR;
		FUNC0(pDataFlash->pDataFlashDesc, AT91C_DATAFLASH_TIMEOUT);
	}
	return AT91C_DATAFLASH_OK;
}