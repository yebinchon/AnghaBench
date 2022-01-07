
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int A ;
 int B ;



 int ead_set_key (int ) ;
 int prepare_password () ;
 int skey ;
 int state ;
 int t_serverclose (int *) ;
 int t_servergenexp (int *) ;
 int t_servergetkey (int *,int *) ;
 int * t_serveropenraw (int *,int ) ;
 int tce ;
 int tpe ;
 int * ts ;

__attribute__((used)) static void
set_state(int nstate)
{
 if (state == nstate)
  return;

 if (nstate < state) {
  if ((nstate < 130) &&
   (state >= 130)) {
   t_serverclose(ts);
   ts = ((void*)0);
  }
  goto done;
 }

 switch(state) {
 case 128:
  if (!prepare_password())
   goto error;
  ts = t_serveropenraw(&tpe, tce);
  if (!ts)
   goto error;
  break;
 case 130:
  B = t_servergenexp(ts);
  break;
 case 129:
  skey = t_servergetkey(ts, &A);
  if (!skey)
   goto error;

  ead_set_key(skey);
  break;
 }
done:
 state = nstate;
error:
 return;
}
