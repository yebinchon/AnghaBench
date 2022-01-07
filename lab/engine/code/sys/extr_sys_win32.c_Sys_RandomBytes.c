
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int qboolean ;
typedef int byte ;
typedef int HCRYPTPROV ;
typedef int BYTE ;


 int CRYPT_VERIFYCONTEXT ;
 int CryptAcquireContext (int *,int *,int *,int ,int ) ;
 int CryptGenRandom (int ,int,int *) ;
 int CryptReleaseContext (int ,int ) ;
 int PROV_RSA_FULL ;
 int qfalse ;
 int qtrue ;

qboolean Sys_RandomBytes( byte *string, int len )
{
 HCRYPTPROV prov;

 if( !CryptAcquireContext( &prov, ((void*)0), ((void*)0),
  PROV_RSA_FULL, CRYPT_VERIFYCONTEXT ) ) {

  return qfalse;
 }

 if( !CryptGenRandom( prov, len, (BYTE *)string ) ) {
  CryptReleaseContext( prov, 0 );
  return qfalse;
 }
 CryptReleaseContext( prov, 0 );
 return qtrue;
}
