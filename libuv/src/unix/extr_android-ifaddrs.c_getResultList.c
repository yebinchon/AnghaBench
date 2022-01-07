
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct nlmsghdr {int dummy; } ;
typedef int pid_t ;
struct TYPE_5__ {struct TYPE_5__* m_next; } ;
typedef TYPE_1__ NetlinkList ;


 int freeResultList (TYPE_1__*) ;
 struct nlmsghdr* getNetlinkResponse (int,int ,int*,int*) ;
 scalar_t__ netlink_send (int,int) ;
 TYPE_1__* newListItem (struct nlmsghdr*,int) ;

__attribute__((used)) static NetlinkList *getResultList(int p_socket, int p_request, pid_t p_pid)
{
    int l_size;
    int l_done;
    NetlinkList *l_list;
    NetlinkList *l_end;

    if(netlink_send(p_socket, p_request) < 0)
    {
        return ((void*)0);
    }

    l_list = ((void*)0);
    l_end = ((void*)0);

    l_done = 0;
    while(!l_done)
    {
        NetlinkList *l_item;

        struct nlmsghdr *l_hdr = getNetlinkResponse(p_socket, p_pid, &l_size, &l_done);

        if(!l_hdr)
        {
            freeResultList(l_list);
            return ((void*)0);
        }

        l_item = newListItem(l_hdr, l_size);
        if (!l_item)
        {
            freeResultList(l_list);
            return ((void*)0);
        }
        if(!l_list)
        {
            l_list = l_item;
        }
        else
        {
            l_end->m_next = l_item;
        }
        l_end = l_item;
    }
    return l_list;
}
