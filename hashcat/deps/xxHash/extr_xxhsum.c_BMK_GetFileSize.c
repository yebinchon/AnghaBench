
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stat {int st_size; int st_mode; } ;
struct _stat64 {int dummy; } ;
typedef int U64 ;


 int S_ISREG (int ) ;
 int _stat64 (char const*,struct _stat64*) ;
 int stat (char const*,struct stat*) ;

__attribute__((used)) static U64 BMK_GetFileSize(const char* infilename)
{
    int r;




    struct stat statbuf;
    r = stat(infilename, &statbuf);

    if (r || !S_ISREG(statbuf.st_mode)) return 0;
    return (U64)statbuf.st_size;
}
