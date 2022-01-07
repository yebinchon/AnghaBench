
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int NLE_AF_NOSUPPORT ;
 int NLE_AGAIN ;
 int NLE_BAD_SOCK ;
 int NLE_BUSY ;
 int NLE_EXIST ;
 int NLE_FAILURE ;
 int NLE_INTR ;
 int NLE_INVAL ;
 int NLE_NOACCESS ;
 int NLE_NOADDR ;
 int NLE_NODEV ;
 int NLE_NOMEM ;
 int NLE_OBJ_NOTFOUND ;
 int NLE_OPNOTSUPP ;
 int NLE_PERM ;
 int NLE_PROTO_MISMATCH ;
 int NLE_RANGE ;
 int abs (int) ;

int nl_syserr2nlerr(int error)
{
 error = abs(error);

 switch (error) {
 case 144: return NLE_BAD_SOCK;
 case 148: return NLE_EXIST;
 case 142: return NLE_EXIST;
 case 147: return NLE_NOADDR;
 case 128:
 case 136: return NLE_OBJ_NOTFOUND;
 case 140: return NLE_INTR;
 case 145: return NLE_AGAIN;
 case 133: return NLE_BAD_SOCK;
 case 134: return NLE_INVAL;
 case 141: return NLE_INVAL;
 case 149: return NLE_NOACCESS;
 case 139: return NLE_INVAL;
 case 138: return NLE_NOMEM;
 case 135: return NLE_NOMEM;
 case 146: return NLE_AF_NOSUPPORT;
 case 130: return NLE_PROTO_MISMATCH;
 case 132: return NLE_OPNOTSUPP;
 case 131: return NLE_PERM;
 case 143: return NLE_BUSY;
 case 129: return NLE_RANGE;
 case 137: return NLE_NODEV;
 default: return NLE_FAILURE;
 }
}
