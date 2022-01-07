
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct _errcode TYPE_1__ ;


typedef int errcode ;
struct _errcode {int bytes_provided; int bytes_available; char* msgid; } ;
typedef TYPE_1__ SSTS0200 ;
typedef int ILEpointer ;


 int RSLOBJ_TS_PGM ;
 int _PGMCALL (int *,void**,int ) ;
 int _RSLOBJ2 (int *,int ,char*,char*) ;
 int memset (TYPE_1__*,int ,int) ;

__attribute__((used)) static int get_ibmi_system_status(SSTS0200* rcvr) {

  unsigned int rcvrlen = sizeof(*rcvr);


  unsigned char format[] = {0xE2, 0xE2, 0xE3, 0xE2, 0xF0, 0xF2, 0xF0, 0xF0};


  unsigned char reset_status[] = {
    0x5C, 0xD5, 0xD6, 0x40, 0x40, 0x40, 0x40, 0x40, 0x40, 0x40
  };


  struct _errcode {
    int bytes_provided;
    int bytes_available;
    char msgid[7];
  } errcode;


  ILEpointer __attribute__((aligned(16))) qwcrssts_pointer;


  void* qwcrssts_argv[6];


  int rc = _RSLOBJ2(&qwcrssts_pointer, RSLOBJ_TS_PGM, "QWCRSSTS", "QSYS");

  if (rc != 0)
    return rc;


  memset(rcvr, 0, sizeof(*rcvr));


  memset(&errcode, 0, sizeof(errcode));
  errcode.bytes_provided = sizeof(errcode);


  qwcrssts_argv[0] = rcvr;
  qwcrssts_argv[1] = &rcvrlen;
  qwcrssts_argv[2] = &format;
  qwcrssts_argv[3] = &reset_status;
  qwcrssts_argv[4] = &errcode;
  qwcrssts_argv[5] = ((void*)0);


  rc = _PGMCALL(&qwcrssts_pointer, (void**)&qwcrssts_argv, 0);

  return rc;
}
