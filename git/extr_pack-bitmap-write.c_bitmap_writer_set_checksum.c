
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int pack_checksum; } ;


 int hashcpy (int ,unsigned char*) ;
 TYPE_1__ writer ;

void bitmap_writer_set_checksum(unsigned char *sha1)
{
 hashcpy(writer.pack_checksum, sha1);
}
