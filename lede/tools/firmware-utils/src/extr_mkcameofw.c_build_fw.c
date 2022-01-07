
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint32_t ;
struct img_header {int header_len; int region; int version; int signature; int model; void* kernel_size; void* image_size; void* checksum; } ;
struct TYPE_4__ {int write_size; } ;


 int ERR (char*) ;
 int EXIT_FAILURE ;
 int EXIT_SUCCESS ;
 int combined ;
 int free (char*) ;
 int get_csum (unsigned char*,int) ;
 void* htonl (int) ;
 TYPE_1__ kernel_info ;
 int kernel_size ;
 char* malloc (int) ;
 int memset (char*,int ,int) ;
 int model ;
 int read_to_buf (TYPE_1__*,char*) ;
 int region ;
 TYPE_1__ rootfs_info ;
 int signature ;
 int strncpy (int ,int ,int) ;
 int version ;
 int write_fw (char*,int) ;

__attribute__((used)) static int build_fw(void)
{
 int buflen;
 char *buf;
 char *p;
 uint32_t csum;
 struct img_header *hdr;
 int ret = EXIT_FAILURE;

 buflen = sizeof(struct img_header) +
   kernel_info.write_size + rootfs_info.write_size;

 buf = malloc(buflen);
 if (!buf) {
  ERR("no memory for buffer\n");
  goto out;
 }

 memset(buf, 0, buflen);

 p = buf + sizeof(struct img_header);


 ret = read_to_buf(&kernel_info, p);
 if (ret)
  goto out_free_buf;

 if (!combined) {
  p += kernel_info.write_size;


  ret = read_to_buf(&rootfs_info, p);
  if (ret)
   goto out_free_buf;
 }

 csum = get_csum((unsigned char *)(buf + sizeof(struct img_header)),
   buflen - sizeof(struct img_header));


 hdr = (struct img_header *) buf;

 hdr->checksum = htonl(csum);
 hdr->image_size = htonl(buflen - sizeof(struct img_header));
 if (!combined)
  hdr->kernel_size = htonl(kernel_info.write_size);
 else
  hdr->kernel_size = htonl(kernel_size);
 hdr->header_len = sizeof(struct img_header);
 strncpy(hdr->model, model, sizeof(hdr->model));
 strncpy(hdr->signature, signature, sizeof(hdr->signature));
 strncpy(hdr->version, version, sizeof(hdr->version));
 strncpy(hdr->region, region, sizeof(hdr->region));

 ret = write_fw(buf, buflen);
 if (ret)
  goto out_free_buf;

 ret = EXIT_SUCCESS;

out_free_buf:
 free(buf);
out:
 return ret;
}
