
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UInt32 ;


 int LZMA_RESULT_OK ;
 unsigned char* data ;

__attribute__((used)) static int read_byte(void *object, unsigned char **buffer, UInt32 *bufferSize)
{
 *bufferSize = 1;
 *buffer = data;
 ++data;
 return LZMA_RESULT_OK;
}
