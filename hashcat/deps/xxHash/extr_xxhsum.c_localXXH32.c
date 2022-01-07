
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int U32 ;


 int XXH32 (void const*,size_t,int ) ;

__attribute__((used)) static U32 localXXH32(const void* buffer, size_t bufferSize, U32 seed) { return XXH32(buffer, bufferSize, seed); }
