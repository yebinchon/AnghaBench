
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef void* uint32_t ;
typedef void* uint16_t ;
struct timeval {void* tv_usec; void* tv_sec; } ;
struct TYPE_3__ {void* orig_len; void* incl_len; void* ts_usec; void* ts_sec; } ;
typedef TYPE_1__ pcaprec_hdr_t ;
typedef int fhdr ;
typedef int FILE ;


 int fwrite (TYPE_1__*,int,int,int *) ;
 int gettimeofday (struct timeval*,int *) ;

void write_pcap_frame(FILE *o, uint32_t *sec, uint32_t *usec,
       uint16_t len, uint16_t olen)
{
 struct timeval tv;
 pcaprec_hdr_t fhdr;

 if (!sec || !usec)
 {
  gettimeofday(&tv, ((void*)0));
 }
 else
 {
  tv.tv_sec = *sec;
  tv.tv_usec = *usec;
 }

 fhdr.ts_sec = tv.tv_sec;
 fhdr.ts_usec = tv.tv_usec;
 fhdr.incl_len = len;
 fhdr.orig_len = olen;

 fwrite(&fhdr, 1, sizeof(fhdr), o);
}
