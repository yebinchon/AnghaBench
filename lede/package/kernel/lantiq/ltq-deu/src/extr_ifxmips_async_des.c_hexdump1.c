
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DUMP_PREFIX_OFFSET ;
 int KERN_CONT ;
 int print_hex_dump (int ,char*,int ,int,int,unsigned char*,unsigned int,int) ;

void hexdump1(unsigned char *buf, unsigned int len)
{
        print_hex_dump(KERN_CONT, "", DUMP_PREFIX_OFFSET,
                        16, 1,
                        buf, len, 0);
}
