
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int printf (char*) ;

void do_help()
{
    printf("Usage : miniunz [-e] [-x] [-v] [-l] [-o] [-p password] file.zip [file_to_extr.] [-d extractdir]\n\n" "  -e  Extract without pathname (junk paths)\n" "  -x  Extract with pathname\n" "  -v  list files\n" "  -l  list files\n" "  -d  directory to extract into\n" "  -o  overwrite files without prompting\n" "  -p  extract crypted file using password\n\n");







}
