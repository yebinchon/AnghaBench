
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fwimage_header {scalar_t__ version; } ;



__attribute__((used)) static int
validate_metadata(struct fwimage_header *hdr, int data_len)
{
  if (hdr->version != 0)
   return 1;
  return 0;
}
