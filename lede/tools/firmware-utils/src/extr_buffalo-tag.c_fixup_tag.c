
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct buffalo_tag {char* brand; char* product; char* platform; char* ver_major; char* ver_minor; char* language; char* region_code; char* hwv; char* hwv_val; void* crc; int flag; void* base2; void* base1; void* data_len; void* len; void* region_mask; } ;
typedef int ssize_t ;


 int base1 ;
 int base2 ;
 char* brand ;
 int buffalo_crc (unsigned char*,int ) ;
 int flag ;
 int * fsize ;
 void* htonl (int ) ;
 char* hwver ;
 char* language ;
 char* major ;
 int memcpy (char*,char*,int) ;
 int memset (struct buffalo_tag*,char,int) ;
 char* minor ;
 int num_regions ;
 char* platform ;
 char* product ;
 char* region_code ;
 int region_mask ;
 int skipcrc ;
 int strlen (char*) ;

__attribute__((used)) static void fixup_tag(unsigned char *buf, ssize_t buflen)
{
 struct buffalo_tag *tag = (struct buffalo_tag *) buf;

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

 tag->len = htonl(buflen);
 tag->data_len = htonl(fsize[0]);
 tag->base1 = htonl(base1);
 tag->base2 = htonl(base2);
 tag->flag = flag;

 if (hwver) {
  memcpy(tag->hwv, "hwv", 3);
  memcpy(tag->hwv_val, hwver, strlen(hwver));
 }

 if (!skipcrc)
  tag->crc = htonl(buffalo_crc(buf, buflen));
}
