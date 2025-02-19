
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct image_partition_entry {char* name; scalar_t__ size; int data; } ;
struct flash_partition_entry {char* name; scalar_t__ size; } ;


 int assert (char*) ;
 int error (int,int ,char*,...) ;
 int memcpy (int *,int ,scalar_t__) ;
 size_t snprintf (char*,size_t,char*,char*,unsigned int,unsigned int) ;
 int strcmp (char*,char*) ;

__attribute__((used)) static void put_partitions(uint8_t *buffer, const struct flash_partition_entry *flash_parts, const struct image_partition_entry *parts) {
 size_t i, j;
 char *image_pt = (char *)buffer, *end = image_pt + 0x800;

 size_t base = 0x800;
 for (i = 0; parts[i].name; i++) {
  for (j = 0; flash_parts[j].name; j++) {
   if (!strcmp(flash_parts[j].name, parts[i].name)) {
    if (parts[i].size > flash_parts[j].size)
     error(1, 0, "%s partition too big (more than %u bytes)", flash_parts[j].name, (unsigned)flash_parts[j].size);
    break;
   }
  }

  assert(flash_parts[j].name);

  memcpy(buffer + base, parts[i].data, parts[i].size);

  size_t len = end-image_pt;
  size_t w = snprintf(image_pt, len, "fwup-ptn %s base 0x%05x size 0x%05x\t\r\n", parts[i].name, (unsigned)base, (unsigned)parts[i].size);

  if (w > len-1)
   error(1, 0, "image partition table overflow?");

  image_pt += w;

  base += parts[i].size;
 }
}
