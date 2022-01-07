
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct transport {scalar_t__ progress; struct bundle_transport_data* data; } ;
struct ref {int dummy; } ;
struct bundle_transport_data {int fd; int header; int get_refs_from_bundle_called; } ;


 int BUNDLE_VERBOSE ;
 int get_refs_from_bundle (struct transport*,int ,int *) ;
 int the_repository ;
 int unbundle (int ,int *,int ,int ) ;

__attribute__((used)) static int fetch_refs_from_bundle(struct transport *transport,
          int nr_heads, struct ref **to_fetch)
{
 struct bundle_transport_data *data = transport->data;

 if (!data->get_refs_from_bundle_called)
  get_refs_from_bundle(transport, 0, ((void*)0));
 return unbundle(the_repository, &data->header, data->fd,
   transport->progress ? BUNDLE_VERBOSE : 0);
}
