#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct sockaddr_in6 {int /*<<< orphan*/  sin6_scope_id; } ;
struct sockaddr {scalar_t__ sa_family; } ;
struct rtattr {int rta_type; } ;
struct nlmsghdr {int dummy; } ;
struct in6_addr {int dummy; } ;
struct ifaddrs {char* ifa_name; struct sockaddr* ifa_netmask; struct sockaddr* ifa_addr; struct sockaddr* ifa_broadaddr; struct sockaddr* ifa_dstaddr; int /*<<< orphan*/  ifa_flags; } ;
struct ifaddrmsg {scalar_t__ ifa_family; unsigned int ifa_prefixlen; int /*<<< orphan*/  ifa_index; int /*<<< orphan*/  ifa_flags; } ;

/* Variables and functions */
 scalar_t__ AF_INET ; 
 scalar_t__ AF_INET6 ; 
 scalar_t__ AF_PACKET ; 
#define  IFA_ADDRESS 131 
#define  IFA_BROADCAST 130 
#define  IFA_LABEL 129 
#define  IFA_LOCAL 128 
 struct rtattr* FUNC0 (struct ifaddrmsg*) ; 
 int /*<<< orphan*/  FUNC1 (struct in6_addr*) ; 
 int /*<<< orphan*/  FUNC2 (struct in6_addr*) ; 
 size_t FUNC3 (size_t) ; 
 scalar_t__ FUNC4 (struct nlmsghdr*) ; 
 size_t FUNC5 (struct nlmsghdr*,int) ; 
 void* FUNC6 (struct rtattr*) ; 
 struct rtattr* FUNC7 (struct rtattr*,size_t) ; 
 scalar_t__ FUNC8 (struct rtattr*,size_t) ; 
 size_t FUNC9 (struct rtattr*) ; 
 int /*<<< orphan*/  FUNC10 (struct ifaddrs**,struct ifaddrs*) ; 
 size_t FUNC11 (scalar_t__,size_t) ; 
 struct ifaddrs* FUNC12 (int /*<<< orphan*/ ,struct ifaddrs**,int) ; 
 int /*<<< orphan*/  FUNC13 (scalar_t__,struct sockaddr*,unsigned char*,unsigned int) ; 
 int /*<<< orphan*/  FUNC14 (struct ifaddrs*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC15 (char*,void*,size_t) ; 
 struct ifaddrs* FUNC16 (int) ; 

__attribute__((used)) static int FUNC17(struct nlmsghdr *p_hdr, struct ifaddrs **p_resultList, int p_numLinks)
{
    struct ifaddrmsg *l_info = (struct ifaddrmsg *)FUNC4(p_hdr);
    struct ifaddrs *l_interface = FUNC12(l_info->ifa_index, p_resultList, p_numLinks);

    size_t l_nameSize = 0;
    size_t l_addrSize = 0;

    int l_addedNetmask = 0;

    size_t l_rtaSize = FUNC5(p_hdr, sizeof(struct ifaddrmsg));
    struct rtattr *l_rta;
    struct ifaddrs *l_entry;

    char *l_name;
    char *l_addr;

    for(l_rta = FUNC0(l_info); FUNC8(l_rta, l_rtaSize); l_rta = FUNC7(l_rta, l_rtaSize))
    {
        size_t l_rtaDataSize = FUNC9(l_rta);
        if(l_info->ifa_family == AF_PACKET)
        {
            continue;
        }

        switch(l_rta->rta_type)
        {
            case IFA_ADDRESS:
            case IFA_LOCAL:
                if((l_info->ifa_family == AF_INET || l_info->ifa_family == AF_INET6) && !l_addedNetmask)
                {
                    /* Make room for netmask */
                    l_addrSize += FUNC3(FUNC11(l_info->ifa_family, l_rtaDataSize));
                    l_addedNetmask = 1;
                }
		break;
            case IFA_BROADCAST:
                l_addrSize += FUNC3(FUNC11(l_info->ifa_family, l_rtaDataSize));
                break;
            case IFA_LABEL:
                l_nameSize += FUNC3(l_rtaDataSize + 1);
                break;
            default:
                break;
        }
    }

    l_entry = FUNC16(sizeof(struct ifaddrs) + l_nameSize + l_addrSize);
    if (l_entry == NULL)
    {
        return -1;
    }
    FUNC14(l_entry, 0, sizeof(struct ifaddrs));
    l_entry->ifa_name = (l_interface ? l_interface->ifa_name : "");

    l_name = ((char *)l_entry) + sizeof(struct ifaddrs);
    l_addr = l_name + l_nameSize;

    l_entry->ifa_flags = l_info->ifa_flags;
    if(l_interface)
    {
        l_entry->ifa_flags |= l_interface->ifa_flags;
    }

    l_rtaSize = FUNC5(p_hdr, sizeof(struct ifaddrmsg));
    for(l_rta = FUNC0(l_info); FUNC8(l_rta, l_rtaSize); l_rta = FUNC7(l_rta, l_rtaSize))
    {
        void *l_rtaData = FUNC6(l_rta);
        size_t l_rtaDataSize = FUNC9(l_rta);
        switch(l_rta->rta_type)
        {
            case IFA_ADDRESS:
            case IFA_BROADCAST:
            case IFA_LOCAL:
            {
                size_t l_addrLen = FUNC11(l_info->ifa_family, l_rtaDataSize);
                FUNC13(l_info->ifa_family, (struct sockaddr *)l_addr, l_rtaData, l_rtaDataSize);
                if(l_info->ifa_family == AF_INET6)
                {
                    if(FUNC1((struct in6_addr *)l_rtaData) || FUNC2((struct in6_addr *)l_rtaData))
                    {
                        ((struct sockaddr_in6 *)l_addr)->sin6_scope_id = l_info->ifa_index;
                    }
                }

                /* Apparently in a point-to-point network IFA_ADDRESS contains
                 * the dest address and IFA_LOCAL contains the local address
                 */
                if(l_rta->rta_type == IFA_ADDRESS)
                {
                    if(l_entry->ifa_addr)
                    {
                        l_entry->ifa_dstaddr = (struct sockaddr *)l_addr;
                    }
                    else
                    {
                        l_entry->ifa_addr = (struct sockaddr *)l_addr;
                    }
                }
                else if(l_rta->rta_type == IFA_LOCAL)
                {
                    if(l_entry->ifa_addr)
                    {
                        l_entry->ifa_dstaddr = l_entry->ifa_addr;
                    }
                    l_entry->ifa_addr = (struct sockaddr *)l_addr;
                }
                else
                {
                    l_entry->ifa_broadaddr = (struct sockaddr *)l_addr;
                }
                l_addr += FUNC3(l_addrLen);
                break;
            }
            case IFA_LABEL:
                FUNC15(l_name, l_rtaData, l_rtaDataSize);
                l_name[l_rtaDataSize] = '\0';
                l_entry->ifa_name = l_name;
                break;
            default:
                break;
        }
    }

    if(l_entry->ifa_addr && (l_entry->ifa_addr->sa_family == AF_INET || l_entry->ifa_addr->sa_family == AF_INET6))
    {
        unsigned l_maxPrefix = (l_entry->ifa_addr->sa_family == AF_INET ? 32 : 128);
        unsigned l_prefix = (l_info->ifa_prefixlen > l_maxPrefix ? l_maxPrefix : l_info->ifa_prefixlen);
        unsigned char l_mask[16] = {0};
        unsigned i;
        for(i=0; i<(l_prefix/8); ++i)
        {
            l_mask[i] = 0xff;
        }
        if(l_prefix % 8)
        {
            l_mask[i] = 0xff << (8 - (l_prefix % 8));
        }

        FUNC13(l_entry->ifa_addr->sa_family, (struct sockaddr *)l_addr, l_mask, l_maxPrefix / 8);
        l_entry->ifa_netmask = (struct sockaddr *)l_addr;
    }

    FUNC10(p_resultList, l_entry);
    return 0;
}