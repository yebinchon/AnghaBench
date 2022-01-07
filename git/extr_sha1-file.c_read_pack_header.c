
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pack_header {scalar_t__ hdr_signature; int hdr_version; } ;


 int PACK_SIGNATURE ;
 int PH_ERROR_EOF ;
 int PH_ERROR_PACK_SIGNATURE ;
 int PH_ERROR_PROTOCOL ;
 scalar_t__ htonl (int ) ;
 int pack_version_ok (int ) ;
 int read_in_full (int,struct pack_header*,int) ;

int read_pack_header(int fd, struct pack_header *header)
{
 if (read_in_full(fd, header, sizeof(*header)) != sizeof(*header))

  return PH_ERROR_EOF;

 if (header->hdr_signature != htonl(PACK_SIGNATURE))

  return PH_ERROR_PACK_SIGNATURE;
 if (!pack_version_ok(header->hdr_version))

  return PH_ERROR_PROTOCOL;
 return 0;
}
