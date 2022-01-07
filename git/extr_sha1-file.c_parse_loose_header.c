
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct object_info {unsigned long* sizep; } ;


 struct object_info OBJECT_INFO_INIT ;
 int parse_loose_header_extended (char const*,struct object_info*,int ) ;

int parse_loose_header(const char *hdr, unsigned long *sizep)
{
 struct object_info oi = OBJECT_INFO_INIT;

 oi.sizep = sizep;
 return parse_loose_header_extended(hdr, &oi, 0);
}
