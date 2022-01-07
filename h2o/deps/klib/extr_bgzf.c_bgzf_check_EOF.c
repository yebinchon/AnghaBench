
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef char uint8_t ;
typedef int off_t ;
typedef int _bgzf_file_t ;
struct TYPE_3__ {scalar_t__ fp; } ;
typedef TYPE_1__ BGZF ;


 int SEEK_END ;
 int SEEK_SET ;
 int _bgzf_read (scalar_t__,char*,int) ;
 scalar_t__ _bgzf_seek (scalar_t__,int,int ) ;
 int _bgzf_tell (int ) ;
 scalar_t__ memcmp (char*,char*,int) ;

int bgzf_check_EOF(BGZF *fp)
{
 static uint8_t magic[28] = "\037\213\010\4\0\0\0\0\0\377\6\0\102\103\2\0\033\0\3\0\0\0\0\0\0\0\0\0";
 uint8_t buf[28];
 off_t offset;
 offset = _bgzf_tell((_bgzf_file_t)fp->fp);
 if (_bgzf_seek(fp->fp, -28, SEEK_END) < 0) return 0;
 _bgzf_read(fp->fp, buf, 28);
 _bgzf_seek(fp->fp, offset, SEEK_SET);
 return (memcmp(magic, buf, 28) == 0)? 1 : 0;
}
