
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef double* vec3_t ;


 int AAS_ValueForBSPEpairKey (int,char*,char*,int) ;
 int MAX_EPAIRKEY ;
 int VectorClear (double*) ;
 int qfalse ;
 int qtrue ;
 int sscanf (char*,char*,double*,double*,double*) ;

int AAS_VectorForBSPEpairKey(int ent, char *key, vec3_t v)
{
 char buf[MAX_EPAIRKEY];
 double v1, v2, v3;

 VectorClear(v);
 if (!AAS_ValueForBSPEpairKey(ent, key, buf, MAX_EPAIRKEY)) return qfalse;

 v1 = v2 = v3 = 0;
 sscanf(buf, "%lf %lf %lf", &v1, &v2, &v3);
 v[0] = v1;
 v[1] = v2;
 v[2] = v3;
 return qtrue;
}
