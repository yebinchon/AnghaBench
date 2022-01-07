
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_3__ {void* ih_hcrc; void* ih_size; void* ih_dcrc; } ;
typedef TYPE_1__ image_header_t ;
typedef int Bytef ;


 int crc32 (int ,int *,int) ;
 void* htonl (int) ;

void
calc_crc(image_header_t *hdr, void *data, uint32_t len)
{



 hdr->ih_dcrc = htonl(crc32(0, (Bytef *)data, len));
 hdr->ih_size = htonl(len);



 hdr->ih_hcrc = 0;
 hdr->ih_hcrc = htonl(crc32(0, (Bytef *)hdr, sizeof(image_header_t)));
}
