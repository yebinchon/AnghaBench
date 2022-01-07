
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct arm64_image_header {int magic; } ;


 int ARM64_IMAGE_MAGIC ;
 int EINVAL ;
 scalar_t__ memcmp (int *,int ,int) ;

__attribute__((used)) static int image_probe(const char *kernel_buf, unsigned long kernel_len)
{
 const struct arm64_image_header *h =
  (const struct arm64_image_header *)(kernel_buf);

 if (!h || (kernel_len < sizeof(*h)))
  return -EINVAL;

 if (memcmp(&h->magic, ARM64_IMAGE_MAGIC, sizeof(h->magic)))
  return -EINVAL;

 return 0;
}
