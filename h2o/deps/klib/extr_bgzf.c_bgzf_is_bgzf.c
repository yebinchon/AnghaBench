
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int _bgzf_file_t ;


 int _bgzf_close (int ) ;
 int _bgzf_open (char const*,char*) ;
 int _bgzf_read (int ,int *,int) ;
 int g_magic ;
 scalar_t__ memcmp (int ,int *,int) ;

int bgzf_is_bgzf(const char *fn)
{
 uint8_t buf[16];
 int n;
 _bgzf_file_t fp;
 if ((fp = _bgzf_open(fn, "r")) == 0) return 0;
 n = _bgzf_read(fp, buf, 16);
 _bgzf_close(fp);
 if (n != 16) return 0;
 return memcmp(g_magic, buf, 16) == 0? 1 : 0;
}
