
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bufferevent_pair {scalar_t__ partner; } ;
struct bufferevent {int dummy; } ;


 int bufferevent_incref_and_lock_ (struct bufferevent*) ;
 struct bufferevent* downcast (scalar_t__) ;
 struct bufferevent_pair* upcast (struct bufferevent*) ;

__attribute__((used)) static inline void
incref_and_lock(struct bufferevent *b)
{
 struct bufferevent_pair *bevp;
 bufferevent_incref_and_lock_(b);
 bevp = upcast(b);
 if (bevp->partner)
  bufferevent_incref_and_lock_(downcast(bevp->partner));
}
