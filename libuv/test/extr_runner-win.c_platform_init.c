
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SEM_FAILCRITICALERRORS ;
 int SEM_NOGPFAULTERRORBOX ;
 int SEM_NOOPENFILEERRORBOX ;
 int SetErrorMode (int) ;
 int _CRTDBG_MODE_DEBUG ;
 int _CRT_ASSERT ;
 int _CRT_ERROR ;
 int _CrtSetReportMode (int ,int ) ;
 int _IONBF ;
 int _O_BINARY ;
 int _fmode ;
 int _set_fmode (int ) ;
 int _setmode (int,int ) ;
 int executable_path ;
 int setvbuf (int ,int *,int ,int ) ;
 int stderr ;
 int stdout ;
 int strcpy (int ,char*) ;

int platform_init(int argc, char **argv) {

  SetErrorMode(SEM_FAILCRITICALERRORS | SEM_NOGPFAULTERRORBOX |
      SEM_NOOPENFILEERRORBOX);

  _CrtSetReportMode(_CRT_ASSERT, _CRTDBG_MODE_DEBUG);
  _CrtSetReportMode(_CRT_ERROR, _CRTDBG_MODE_DEBUG);


  _setmode(0, _O_BINARY);
  _setmode(1, _O_BINARY);
  _setmode(2, _O_BINARY);




  _fmode = _O_BINARY;



  setvbuf(stdout, ((void*)0), _IONBF, 0);
  setvbuf(stderr, ((void*)0), _IONBF, 0);

  strcpy(executable_path, argv[0]);

  return 0;
}
