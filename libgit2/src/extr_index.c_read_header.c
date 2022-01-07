
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct index_header {void* entry_count; void* version; void* signature; } ;


 void* INDEX_HEADER_SIG ;
 void* INDEX_VERSION_NUMBER_LB ;
 void* INDEX_VERSION_NUMBER_UB ;
 int index_error_invalid (char*) ;
 void* ntohl (void*) ;

__attribute__((used)) static int read_header(struct index_header *dest, const void *buffer)
{
 const struct index_header *source = buffer;

 dest->signature = ntohl(source->signature);
 if (dest->signature != INDEX_HEADER_SIG)
  return index_error_invalid("incorrect header signature");

 dest->version = ntohl(source->version);
 if (dest->version < INDEX_VERSION_NUMBER_LB ||
  dest->version > INDEX_VERSION_NUMBER_UB)
  return index_error_invalid("incorrect header version");

 dest->entry_count = ntohl(source->entry_count);
 return 0;
}
