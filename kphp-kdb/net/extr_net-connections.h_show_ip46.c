
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* show_ip (unsigned int) ;
 char* show_ipv6 (unsigned char const*) ;

__attribute__((used)) static inline char *show_ip46 (unsigned ip, const unsigned char ipv6[16]) { return ip ? show_ip (ip) : show_ipv6 (ipv6); }
