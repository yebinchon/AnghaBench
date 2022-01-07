
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_5__ {int * b; } ;
struct TYPE_6__ {int bufOffset; TYPE_1__ buf; } ;
typedef TYPE_2__ sha1nfo ;


 int BLOCK_LENGTH ;
 int sha1_hashBlock (TYPE_2__*) ;

__attribute__((used)) static inline void sha1_add(sha1nfo *s, uint8_t data)
{
 s->buf.b[s->bufOffset ^ 3] = data;
 if (++s->bufOffset == BLOCK_LENGTH) {
  sha1_hashBlock(s);
  s->bufOffset = 0;
 }
}
