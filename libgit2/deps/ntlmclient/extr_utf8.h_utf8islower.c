
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ utf8_int32_t ;


 scalar_t__ utf8uprcodepoint (scalar_t__) ;

int utf8islower(utf8_int32_t chr) { return chr != utf8uprcodepoint(chr); }
