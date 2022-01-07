
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u_int32_t ;
struct TYPE_3__ {long pad; int crc; int version; int magic; } ;
typedef TYPE_1__ header_t ;


 int MAGIC_LENGTH ;
 int crc32 (long,unsigned char*,int) ;
 int htonl (int ) ;
 int memcpy (int ,char const*,int ) ;
 int memset (TYPE_1__*,int ,int) ;
 int strncpy (int ,char const*,int) ;

__attribute__((used)) static void write_header(void* mem, const char *magic, const char* version)
{
 header_t* header = mem;
 memset(header, 0, sizeof(header_t));

 memcpy(header->magic, magic, MAGIC_LENGTH);
 strncpy(header->version, version, sizeof(header->version));
 header->crc = htonl(crc32(0L, (unsigned char *)header,
    sizeof(header_t) - 2 * sizeof(u_int32_t)));
 header->pad = 0L;
}
