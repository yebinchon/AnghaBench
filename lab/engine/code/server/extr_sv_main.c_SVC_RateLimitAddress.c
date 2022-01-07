
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int qboolean ;
typedef int netadr_t ;
typedef int leakyBucket_t ;


 int * SVC_BucketForAddress (int ,int,int) ;
 int SVC_RateLimit (int *,int,int) ;

qboolean SVC_RateLimitAddress( netadr_t from, int burst, int period ) {
 leakyBucket_t *bucket = SVC_BucketForAddress( from, burst, period );

 return SVC_RateLimit( bucket, burst, period );
}
