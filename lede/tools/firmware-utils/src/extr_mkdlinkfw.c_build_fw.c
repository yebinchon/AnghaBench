
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct stag_header {int dummy; } ;
struct sch2_header {int dummy; } ;
struct TYPE_5__ {scalar_t__ file_size; int file_name; } ;


 scalar_t__ ALL_HEADERS_SIZE ;
 int ERR (char*) ;
 int EXIT_FAILURE ;
 int EXIT_SUCCESS ;
 int SCH2_SIZE ;
 int STAG_SIZE ;
 int fill_sch2 (struct sch2_header*,char*,char*) ;
 int fill_stag (struct stag_header*,int) ;
 scalar_t__ firmware_size ;
 int free (char*) ;
 int get_file_stat (TYPE_1__*) ;
 TYPE_1__ kernel_info ;
 char* malloc (scalar_t__) ;
 int memset (char*,int,scalar_t__) ;
 int ofname ;
 int read_to_buf (TYPE_1__*,char*) ;
 TYPE_1__ rootfs_info ;
 int write_fw (int ,char*,int) ;

int build_fw(void)
{
 char *buf;
 char *kernel_ptr;
 char *rootfs_ptr;
 int ret = EXIT_FAILURE;
 int writelen;

 struct stag_header *stag_header_kernel;
 struct sch2_header *sch2_header_kernel;

 if (!kernel_info.file_name | !rootfs_info.file_name)
  goto out;

 ret = get_file_stat(&kernel_info);
 if (ret)
  goto out;
 ret = get_file_stat(&rootfs_info);
 if (ret)
  goto out;

 buf = malloc(firmware_size);
 if (!buf) {
  ERR("no memory for buffer\n");
  goto out;
 }

 if (rootfs_info.file_size + kernel_info.file_size + ALL_HEADERS_SIZE >
     firmware_size) {
  ERR("data is bigger than firmware_size!\n");
  goto out;
 }

 memset(buf, 0xff, firmware_size);

 stag_header_kernel = (struct stag_header *)buf;

 sch2_header_kernel =
     (struct sch2_header *)((char *)stag_header_kernel + STAG_SIZE);
 kernel_ptr = (char *)sch2_header_kernel + SCH2_SIZE;

 ret = read_to_buf(&kernel_info, kernel_ptr);
 if (ret)
  goto out_free_buf;

 rootfs_ptr = kernel_ptr + kernel_info.file_size;

 ret = read_to_buf(&rootfs_info, rootfs_ptr);
 if (ret)
  goto out_free_buf;

 writelen = rootfs_ptr + rootfs_info.file_size - buf;

 fill_sch2(sch2_header_kernel, kernel_ptr, rootfs_ptr);
 fill_stag(stag_header_kernel, kernel_info.file_size);

 ret = write_fw(ofname, buf, writelen);
 if (ret)
  goto out_free_buf;

 ret = EXIT_SUCCESS;

 out_free_buf:
 free(buf);
 out:
 return ret;
}
