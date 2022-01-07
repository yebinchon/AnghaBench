
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct buffalo_tag3 {char* brand; char* product; char* platform; char* ver_major; char* ver_minor; char* language; char* region_code; char* hwv; char* hwv_val; void* base2; void* len1; void* total_len; void* region_mask; } ;
typedef int ssize_t ;


 int base2 ;
 char* brand ;
 int * fsize ;
 void* htonl (int ) ;
 char* hwver ;
 char* language ;
 char* major ;
 int memcpy (char*,char*,int) ;
 int memset (struct buffalo_tag3*,char,int) ;
 char* minor ;
 int num_regions ;
 char* platform ;
 char* product ;
 char* region_code ;
 int region_mask ;
 int strlen (char*) ;

__attribute__((used)) static void fixup_tag3(unsigned char *buf, ssize_t totlen)
{
 struct buffalo_tag3 *tag = (struct buffalo_tag3 *) buf;

 memset(tag, '\0', sizeof(*tag));

 memcpy(tag->brand, brand, strlen(brand));
 memcpy(tag->product, product, strlen(product));
 memcpy(tag->platform, platform, strlen(platform));
 memcpy(tag->ver_major, major, strlen(major));
 memcpy(tag->ver_minor, minor, strlen(minor));
 memcpy(tag->language, language, strlen(language));

 if (num_regions > 1) {
  tag->region_code[0] = 'M';
  tag->region_code[1] = '_';
  tag->region_mask = htonl(region_mask);
 } else {
  memcpy(tag->region_code, region_code, 2);
 }

 tag->total_len = htonl(totlen);
 tag->len1 = htonl(fsize[0]);
 tag->base2 = htonl(base2);

 if (hwver) {
  memcpy(tag->hwv, "hwv", 3);
  memcpy(tag->hwv_val, hwver, strlen(hwver));
 }
}
