
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fuzzer_stream {size_t endp; size_t readp; } ;
typedef int git_smart_subtransport_stream ;


 int memcpy (char*,size_t,size_t) ;

__attribute__((used)) static int fuzzer_stream_read(git_smart_subtransport_stream *stream,
 char *buffer,
 size_t buf_size,
 size_t *bytes_read)
{
 struct fuzzer_stream *fs = (struct fuzzer_stream *) stream;
 size_t avail = fs->endp - fs->readp;

 *bytes_read = (buf_size > avail) ? avail : buf_size;
 memcpy(buffer, fs->readp, *bytes_read);
 fs->readp += *bytes_read;

 return 0;
}
