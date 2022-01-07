
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned long SizeT ;


 int DBG (char*,...) ;
 unsigned long FLASH_BANK_SIZE ;
 int LZMA_RESULT_DATA_ERROR ;
 int LZMA_RESULT_OK ;
 unsigned char* flash_base ;
 unsigned long flash_max ;
 unsigned long flash_ofs ;
 unsigned long flash_ofs_mask ;

__attribute__((used)) static int lzma_read_byte(void *object, const unsigned char **buffer,
    SizeT *bufferSize)
{
 unsigned long len;

 if (flash_ofs >= flash_max)
  return LZMA_RESULT_DATA_ERROR;

 len = flash_max-flash_ofs;
 DBG("lzma_read_byte: ofs=%08X, len=%08X\n", flash_ofs, len);

 *buffer = flash_base+(flash_ofs & flash_ofs_mask);
 *bufferSize = len;
 flash_ofs += len;

 return LZMA_RESULT_OK;
}
