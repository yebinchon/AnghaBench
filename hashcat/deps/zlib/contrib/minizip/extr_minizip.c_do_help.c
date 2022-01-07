
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int printf (char*) ;

void do_help()
{
    printf("Usage : minizip [-o] [-a] [-0 to -9] [-p password] [-j] file.zip [files_to_add]\n\n" "  -o  Overwrite existing file.zip\n" "  -a  Append to existing file.zip\n" "  -0  Store only\n" "  -1  Compress faster\n" "  -9  Compress better\n\n" "  -j  exclude path. store only the file name.\n\n");






}
