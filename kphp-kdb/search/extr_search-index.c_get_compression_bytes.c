
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {long long* compression_bytes; } ;


 TYPE_1__ Header ;

__attribute__((used)) static long long get_compression_bytes (int method) {
  return Header.compression_bytes[2*method] + Header.compression_bytes[2*method+1];
}
