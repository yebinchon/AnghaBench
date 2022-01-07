
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int va_list ;
typedef int errbuf ;


 scalar_t__ errno ;
 int fprintf (int ,char*) ;
 int fputc (char,int ) ;
 int fputs (char*,int ) ;
 int stderr ;
 int strerror_r (scalar_t__,char*,int) ;
 int vfprintf (int ,char const*,int ) ;

__attribute__((used)) static void warnvf(const char *fmt, va_list args)
{
    char errbuf[256];

    if (errno != 0) {
        strerror_r(errno, errbuf, sizeof(errbuf));
    } else {
        errbuf[0] = '\0';
    }

    fprintf(stderr, "[openssl-privsep] ");
    vfprintf(stderr, fmt, args);
    if (errbuf[0] != '\0')
        fputs(errbuf, stderr);
    fputc('\n', stderr);
}
