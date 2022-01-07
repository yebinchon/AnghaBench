
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct pack_header {void* hdr_entries; void* hdr_version; void* hdr_signature; } ;
struct hashfile {int dummy; } ;
typedef int off_t ;
typedef int hdr ;


 int PACK_SIGNATURE ;
 int PACK_VERSION ;
 int hashwrite (struct hashfile*,struct pack_header*,int) ;
 void* htonl (int ) ;

off_t write_pack_header(struct hashfile *f, uint32_t nr_entries)
{
 struct pack_header hdr;

 hdr.hdr_signature = htonl(PACK_SIGNATURE);
 hdr.hdr_version = htonl(PACK_VERSION);
 hdr.hdr_entries = htonl(nr_entries);
 hashwrite(f, &hdr, sizeof(hdr));
 return sizeof(hdr);
}
