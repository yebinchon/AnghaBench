
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct image_partition_entry {scalar_t__* data; } ;


 struct image_partition_entry alloc_image_partition (char*,size_t) ;
 int htonl (int) ;
 int memcpy (int*,char const*,int) ;
 int strlen (char const*) ;

__attribute__((used)) static struct image_partition_entry make_soft_version_from_string(const char *soft_ver) {

 uint32_t ver_len = strlen(soft_ver) + 1;

 size_t partition_len = 2*sizeof(uint32_t) + ver_len + 1;
 struct image_partition_entry entry = alloc_image_partition("soft-version", partition_len);

 uint32_t *len = (uint32_t *)entry.data;
 len[0] = htonl(ver_len);
 len[1] = 0;
 memcpy(&len[2], soft_ver, ver_len);

 entry.data[partition_len - 1] = 0;

 return entry;
}
