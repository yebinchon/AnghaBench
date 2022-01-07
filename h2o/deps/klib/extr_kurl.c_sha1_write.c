
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int sha1nfo ;


 int sha1_write1 (int *,int ) ;

void sha1_write(sha1nfo *s, const char *data, size_t len)
{
 while (len--) sha1_write1(s, (uint8_t)*data++);
}
