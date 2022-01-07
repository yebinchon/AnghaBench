
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct auh_header {int dummy; } ;
struct TYPE_4__ {scalar_t__ file_size; int file_name; } ;


 scalar_t__ AUH_SIZE ;
 int ERR (char*) ;
 int EXIT_FAILURE ;
 int EXIT_SUCCESS ;
 int family_member ;
 int fill_auh (struct auh_header*,scalar_t__) ;
 scalar_t__ firmware_size ;
 int free (char*) ;
 int get_file_stat (TYPE_1__*) ;
 TYPE_1__ image_info ;
 char* malloc (scalar_t__) ;
 int memset (char*,int,scalar_t__) ;
 int ofname ;
 int read_to_buf (TYPE_1__*,char*) ;
 int * rom_id ;
 int write_fw (int ,char*,int) ;

int wrap_fw(void)
{
 char *buf;
 char *image_ptr;
 int ret = EXIT_FAILURE;
 int writelen;

 struct auh_header *auh_header_kernel;

 if (!image_info.file_name)
  goto out;

 ret = get_file_stat(&image_info);
 if (ret)
  goto out;

 buf = malloc(firmware_size);
 if (!buf) {
  ERR("no memory for buffer\n");
  goto out;
 }

 if (image_info.file_size + AUH_SIZE >
     firmware_size) {
  ERR("data is bigger than firmware_size!\n");
  goto out;
 }
 if (!family_member) {
  ERR("No family_member!\n");
  goto out;
 }
 if (!(rom_id[0])) {
  ERR("No rom_id!\n");
  goto out;
 }
 memset(buf, 0xff, firmware_size);

 image_ptr = (char *)(buf + AUH_SIZE);

 ret = read_to_buf(&image_info, image_ptr);
 if (ret)
  goto out_free_buf;

 writelen = image_ptr + image_info.file_size - buf;

 auh_header_kernel = (struct auh_header *)buf;
 fill_auh(auh_header_kernel, writelen - AUH_SIZE);

 ret = write_fw(ofname, buf, writelen);
 if (ret)
  goto out_free_buf;

 ret = EXIT_SUCCESS;

 out_free_buf:
 free(buf);
 out:
 return ret;
}
