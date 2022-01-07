
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int errbuf ;


 int AVUNERROR (int) ;
 int AV_LOG_ERROR ;
 int av_log (int *,int ,char*,char const*,char const*) ;
 scalar_t__ av_strerror (int,char*,int) ;
 char* strerror (int ) ;

void print_error(const char *filename, int err)
{
    char errbuf[128];
    const char *errbuf_ptr = errbuf;

    if (av_strerror(err, errbuf, sizeof(errbuf)) < 0)
        errbuf_ptr = strerror(AVUNERROR(err));
    av_log(((void*)0), AV_LOG_ERROR, "%s: %s\n", filename, errbuf_ptr);
}
