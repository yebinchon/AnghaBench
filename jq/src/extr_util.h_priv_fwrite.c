
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int HANDLE ;
typedef int FILE ;


 int WriteFile (int ,char const*,size_t,int *,int *) ;
 scalar_t__ _get_osfhandle (int ) ;
 int fileno (int *) ;
 int fwrite (char const*,int,size_t,int *) ;

__attribute__((used)) static void priv_fwrite(const char *s, size_t len, FILE *fout, int is_tty) {






  fwrite(s, 1, len, fout);

}
