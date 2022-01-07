
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int namebuf ;
typedef int CFTypeRef ;


 int S (char const*) ;
 int * core_foundation_handle ;
 int * display_name_key ;
 int pCFBundleGetInfoDictionary (int ) ;
 int pCFBundleGetMainBundle () ;
 int pLSApplicationCheckIn (int,int ) ;
 int pLSGetCurrentApplicationASN () ;
 int pLSSetApplicationInformationItem (int,int ,int ,int ,int *) ;
 int pLSSetApplicationLaunchServicesServerConnectionStatus (int ,int *) ;
 int pthread_setname_np (char*) ;
 int uv__strscpy (char*,char const*,int) ;

void uv__set_process_title(const char* title) {
  char namebuf[64 ];


  if (core_foundation_handle != ((void*)0)) {
    CFTypeRef asn;
    pLSSetApplicationLaunchServicesServerConnectionStatus(0, ((void*)0));
    pLSApplicationCheckIn( -2,
                          pCFBundleGetInfoDictionary(pCFBundleGetMainBundle()));
    asn = pLSGetCurrentApplicationASN();
    pLSSetApplicationInformationItem( -2, asn,
                                     *display_name_key, S(title), ((void*)0));
  }


  uv__strscpy(namebuf, title, sizeof(namebuf));
  pthread_setname_np(namebuf);
}
