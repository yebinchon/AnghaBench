
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int hex2chr (char const*) ;

__attribute__((used)) static int packet_length(const char *linelen)
{
 int val = hex2chr(linelen);
 return (val < 0) ? val : (val << 8) | hex2chr(linelen + 2);
}
