
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int ssize_t ;
struct TYPE_5__ {unsigned int avail_out; unsigned char* next_in; void* next_out; int avail_in; } ;
struct TYPE_4__ {int done; TYPE_2__ zstream; int curpos; int mw; int p; } ;
typedef TYPE_1__ git_packfile_stream ;


 int GIT_EBUFS ;
 int GIT_ERROR_ZLIB ;
 int Z_OK ;
 int Z_STREAM_END ;
 int Z_SYNC_FLUSH ;
 int git_error_set (int ,char*) ;
 int git_mwindow_close (int *) ;
 int inflate (TYPE_2__*,int ) ;
 unsigned char* pack_window_open (int ,int *,int ,int *) ;

ssize_t git_packfile_stream_read(git_packfile_stream *obj, void *buffer, size_t len)
{
 unsigned char *in;
 size_t written;
 int st;

 if (obj->done)
  return 0;

 in = pack_window_open(obj->p, &obj->mw, obj->curpos, &obj->zstream.avail_in);
 if (in == ((void*)0))
  return GIT_EBUFS;

 obj->zstream.next_out = buffer;
 obj->zstream.avail_out = (unsigned int)len;
 obj->zstream.next_in = in;

 st = inflate(&obj->zstream, Z_SYNC_FLUSH);
 git_mwindow_close(&obj->mw);

 obj->curpos += obj->zstream.next_in - in;
 written = len - obj->zstream.avail_out;

 if (st != Z_OK && st != Z_STREAM_END) {
  git_error_set(GIT_ERROR_ZLIB, "error reading from the zlib stream");
  return -1;
 }

 if (st == Z_STREAM_END)
  obj->done = 1;



 if (!written && st != Z_STREAM_END)
  return GIT_EBUFS;

 return written;

}
