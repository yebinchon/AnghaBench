
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sysinfo {int totalram; int freeram; int totalhigh; int freehigh; int sharedram; } ;
struct pglist_data {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int id; } ;
typedef int ssize_t ;


 int HPAGE_PMD_NR ;
 int K (int) ;
 struct pglist_data* NODE_DATA (int) ;
 int NR_ACTIVE_ANON ;
 int NR_ACTIVE_FILE ;
 int NR_ANON_MAPPED ;
 int NR_ANON_THPS ;
 int NR_BOUNCE ;
 int NR_FILE_DIRTY ;
 int NR_FILE_MAPPED ;
 int NR_FILE_PAGES ;
 int NR_FILE_PMDMAPPED ;
 int NR_FILE_THPS ;
 int NR_INACTIVE_ANON ;
 int NR_INACTIVE_FILE ;
 int NR_KERNEL_MISC_RECLAIMABLE ;
 int NR_KERNEL_STACK_KB ;
 int NR_MLOCK ;
 int NR_PAGETABLE ;
 int NR_SHMEM_PMDMAPPED ;
 int NR_SHMEM_THPS ;
 int NR_SLAB_RECLAIMABLE ;
 int NR_SLAB_UNRECLAIMABLE ;
 int NR_UNEVICTABLE ;
 int NR_UNSTABLE_NFS ;
 int NR_WRITEBACK ;
 int NR_WRITEBACK_TEMP ;
 scalar_t__ hugetlb_report_node_meminfo (int,char*) ;
 int node_page_state (struct pglist_data*,int ) ;
 int si_meminfo_node (struct sysinfo*,int) ;
 int sprintf (char*,char*,int,int,int,int,int,int,int,int,...) ;
 int sum_zone_node_page_state (int,int ) ;

__attribute__((used)) static ssize_t node_read_meminfo(struct device *dev,
   struct device_attribute *attr, char *buf)
{
 int n;
 int nid = dev->id;
 struct pglist_data *pgdat = NODE_DATA(nid);
 struct sysinfo i;
 unsigned long sreclaimable, sunreclaimable;

 si_meminfo_node(&i, nid);
 sreclaimable = node_page_state(pgdat, NR_SLAB_RECLAIMABLE);
 sunreclaimable = node_page_state(pgdat, NR_SLAB_UNRECLAIMABLE);
 n = sprintf(buf,
         "Node %d MemTotal:       %8lu kB\n"
         "Node %d MemFree:        %8lu kB\n"
         "Node %d MemUsed:        %8lu kB\n"
         "Node %d Active:         %8lu kB\n"
         "Node %d Inactive:       %8lu kB\n"
         "Node %d Active(anon):   %8lu kB\n"
         "Node %d Inactive(anon): %8lu kB\n"
         "Node %d Active(file):   %8lu kB\n"
         "Node %d Inactive(file): %8lu kB\n"
         "Node %d Unevictable:    %8lu kB\n"
         "Node %d Mlocked:        %8lu kB\n",
         nid, K(i.totalram),
         nid, K(i.freeram),
         nid, K(i.totalram - i.freeram),
         nid, K(node_page_state(pgdat, NR_ACTIVE_ANON) +
    node_page_state(pgdat, NR_ACTIVE_FILE)),
         nid, K(node_page_state(pgdat, NR_INACTIVE_ANON) +
    node_page_state(pgdat, NR_INACTIVE_FILE)),
         nid, K(node_page_state(pgdat, NR_ACTIVE_ANON)),
         nid, K(node_page_state(pgdat, NR_INACTIVE_ANON)),
         nid, K(node_page_state(pgdat, NR_ACTIVE_FILE)),
         nid, K(node_page_state(pgdat, NR_INACTIVE_FILE)),
         nid, K(node_page_state(pgdat, NR_UNEVICTABLE)),
         nid, K(sum_zone_node_page_state(nid, NR_MLOCK)));
 n += sprintf(buf + n,
         "Node %d Dirty:          %8lu kB\n"
         "Node %d Writeback:      %8lu kB\n"
         "Node %d FilePages:      %8lu kB\n"
         "Node %d Mapped:         %8lu kB\n"
         "Node %d AnonPages:      %8lu kB\n"
         "Node %d Shmem:          %8lu kB\n"
         "Node %d KernelStack:    %8lu kB\n"
         "Node %d PageTables:     %8lu kB\n"
         "Node %d NFS_Unstable:   %8lu kB\n"
         "Node %d Bounce:         %8lu kB\n"
         "Node %d WritebackTmp:   %8lu kB\n"
         "Node %d KReclaimable:   %8lu kB\n"
         "Node %d Slab:           %8lu kB\n"
         "Node %d SReclaimable:   %8lu kB\n"
         "Node %d SUnreclaim:     %8lu kB\n"







   ,
         nid, K(node_page_state(pgdat, NR_FILE_DIRTY)),
         nid, K(node_page_state(pgdat, NR_WRITEBACK)),
         nid, K(node_page_state(pgdat, NR_FILE_PAGES)),
         nid, K(node_page_state(pgdat, NR_FILE_MAPPED)),
         nid, K(node_page_state(pgdat, NR_ANON_MAPPED)),
         nid, K(i.sharedram),
         nid, sum_zone_node_page_state(nid, NR_KERNEL_STACK_KB),
         nid, K(sum_zone_node_page_state(nid, NR_PAGETABLE)),
         nid, K(node_page_state(pgdat, NR_UNSTABLE_NFS)),
         nid, K(sum_zone_node_page_state(nid, NR_BOUNCE)),
         nid, K(node_page_state(pgdat, NR_WRITEBACK_TEMP)),
         nid, K(sreclaimable +
         node_page_state(pgdat, NR_KERNEL_MISC_RECLAIMABLE)),
         nid, K(sreclaimable + sunreclaimable),
         nid, K(sreclaimable),
         nid, K(sunreclaimable)
         );
 n += hugetlb_report_node_meminfo(nid, buf + n);
 return n;
}
