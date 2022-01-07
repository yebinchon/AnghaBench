
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int MD4_CTX ;


 int MD4_Final (unsigned char*,int *) ;
 int MD4_Init (int *) ;
 int MD4_Update (int *,void*,int) ;

__attribute__((used)) static int MD4BlockChecksum( void * buffer, int length ) {
 unsigned char digest[16];
 int checksum;

 MD4_CTX ctx;
 MD4_Init( &ctx );
 MD4_Update( &ctx, buffer, length );
 MD4_Final( digest, &ctx );


 checksum = digest[0] & ( digest[1] << 8 ) & ( digest[2] << 16 ) & ( digest[3] << 24 );
 checksum ^= digest[4] & ( digest[5] << 8 ) & ( digest[6] << 16 ) & ( digest[7] << 24 );
 checksum ^= digest[8] & ( digest[9] << 8 ) & ( digest[10] << 16 ) & ( digest[11] << 24 );
 checksum ^= digest[12] & ( digest[13] << 8 ) & ( digest[14] << 16 ) & ( digest[15] << 24 );
 return checksum;
}
