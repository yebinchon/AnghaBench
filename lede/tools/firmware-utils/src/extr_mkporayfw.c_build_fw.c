
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint16_t ;
struct fw_header {int dummy; } ;
struct TYPE_2__ {int fw_max_len; } ;


 int ERR (char*) ;
 int EXIT_FAILURE ;
 int EXIT_SUCCESS ;
 int checksum_fw (int*,int) ;
 int fill_header (int*) ;
 int firmware_info ;
 int firmware_len ;
 int free (int*) ;
 TYPE_1__* layout ;
 scalar_t__ malloc (int) ;
 int memset (int*,int,int) ;
 int read_to_buf (int *,int*) ;
 int write_fw (int*,int) ;
 int xor_fw (int*,int) ;

__attribute__((used)) static int build_fw(void)
{
 int buflen;
 uint8_t *buf, *p;
 int ret = EXIT_FAILURE;
 int writelen = 0;
 uint16_t checksum;

 buflen = layout->fw_max_len;

 buf = (uint8_t *) malloc(buflen);
 if (!buf) {
  ERR("no memory for buffer\n");
  goto out;
 }

 memset(buf, 0xff, buflen);
 p = buf + sizeof (struct fw_header);
 ret = read_to_buf(&firmware_info, p);
 if (ret) {
  goto out_free_buf;
 }
 writelen = sizeof (struct fw_header) + firmware_len + 2;


 fill_header(buf);


 checksum = checksum_fw(buf + sizeof (struct fw_header), firmware_len);


 buf[writelen - 1] = checksum >> 8;
 buf[writelen - 2] = checksum & 0xff;


 xor_fw(buf + sizeof (struct fw_header), firmware_len + 2);


 ret = write_fw(buf, writelen);
 if (ret) {
  goto out_free_buf;
 }
 ret = EXIT_SUCCESS;

 out_free_buf:
 free(buf);
 out:
 return ret;
}
