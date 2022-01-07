
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;
struct jimage_header {scalar_t__ stag_magic; scalar_t__ sch2_magic; scalar_t__ stag_cmark; scalar_t__ stag_id; scalar_t__ sch2_version; } ;
typedef int ssize_t ;


 int EINVAL ;
 scalar_t__ SCH2_MAGIC ;
 scalar_t__ SCH2_VER ;
 scalar_t__ STAG_ID ;
 scalar_t__ STAG_MAGIC ;
 int pr_debug (char*,scalar_t__) ;

__attribute__((used)) static ssize_t jimage_verify_default(u_char *buf, size_t len)
{
 struct jimage_header *header = (struct jimage_header *)buf;


 if (header->stag_magic != STAG_MAGIC) {
  pr_debug("invalid jImage stag header magic: %04x\n",
    header->stag_magic);
  return -EINVAL;
 }
 if (header->sch2_magic != SCH2_MAGIC) {
  pr_debug("invalid jImage sch2 header magic: %04x\n",
    header->stag_magic);
  return -EINVAL;
 }
 if (header->stag_cmark != header->stag_id) {
  pr_debug("invalid jImage stag header cmark: %02x\n",
    header->stag_magic);
  return -EINVAL;
 }
 if (header->stag_id != STAG_ID) {
  pr_debug("invalid jImage stag header id: %02x\n",
    header->stag_magic);
  return -EINVAL;
 }
 if (header->sch2_version != SCH2_VER) {
  pr_debug("invalid jImage sch2 header version: %02x\n",
    header->stag_magic);
  return -EINVAL;
 }

 return 0;
}
