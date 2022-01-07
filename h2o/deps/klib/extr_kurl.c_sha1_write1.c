
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_4__ {int byteCount; } ;
typedef TYPE_1__ sha1nfo ;


 int sha1_add (TYPE_1__*,int ) ;

void sha1_write1(sha1nfo *s, uint8_t data)
{
 ++s->byteCount;
 sha1_add(s, data);
}
