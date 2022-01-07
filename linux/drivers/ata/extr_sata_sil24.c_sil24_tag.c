
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ata_tag_internal (int) ;
 scalar_t__ unlikely (int ) ;

__attribute__((used)) static int sil24_tag(int tag)
{
 if (unlikely(ata_tag_internal(tag)))
  return 0;
 return tag;
}
