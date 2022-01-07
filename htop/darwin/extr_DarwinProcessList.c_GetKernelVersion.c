
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int version_ ;
struct kern {int version; } ;
typedef int str ;


 int memcpy (int ,short*,int) ;
 int sscanf (char*,char*,short*,short*,short*) ;
 int sysctlbyname (char*,char*,size_t*,int *,int ) ;

void GetKernelVersion(struct kern *k) {
   static short int version_[3] = {0};
   if (!version_[0]) {

      version_[0] = version_[1] = version_[2] = -1;
      char str[256] = {0};
      size_t size = sizeof(str);
      int ret = sysctlbyname("kern.osrelease", str, &size, ((void*)0), 0);
      if (ret == 0) sscanf(str, "%hd.%hd.%hd", &version_[0], &version_[1], &version_[2]);
    }
    memcpy(k->version, version_, sizeof(version_));
}
