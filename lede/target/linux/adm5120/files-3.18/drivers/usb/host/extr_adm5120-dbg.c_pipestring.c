
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* ed_typestring (int ) ;
 int usb_pipetype (int) ;

__attribute__((used)) static inline char *pipestring(int pipe)
{
 return ed_typestring(usb_pipetype(pipe));
}
