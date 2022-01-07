
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int qboolean ;


 int UI_VERIFY_CDKEY ;
 int syscall (int ,char const*,char const*) ;

qboolean trap_VerifyCDKey( const char *key, const char *chksum) {
 return syscall( UI_VERIFY_CDKEY, key, chksum);
}
