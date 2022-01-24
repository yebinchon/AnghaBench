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
struct sysinfo {int totalram; int freeram; int totalhigh; int freehigh; int sharedram; } ;
struct pglist_data {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int id; } ;
typedef  int ssize_t ;

/* Variables and functions */
 int HPAGE_PMD_NR ; 
 int FUNC0 (int) ; 
 struct pglist_data* FUNC1 (int) ; 
 int /*<<< orphan*/  NR_ACTIVE_ANON ; 
 int /*<<< orphan*/  NR_ACTIVE_FILE ; 
 int /*<<< orphan*/  NR_ANON_MAPPED ; 
 int /*<<< orphan*/  NR_ANON_THPS ; 
 int /*<<< orphan*/  NR_BOUNCE ; 
 int /*<<< orphan*/  NR_FILE_DIRTY ; 
 int /*<<< orphan*/  NR_FILE_MAPPED ; 
 int /*<<< orphan*/  NR_FILE_PAGES ; 
 int /*<<< orphan*/  NR_FILE_PMDMAPPED ; 
 int /*<<< orphan*/  NR_FILE_THPS ; 
 int /*<<< orphan*/  NR_INACTIVE_ANON ; 
 int /*<<< orphan*/  NR_INACTIVE_FILE ; 
 int /*<<< orphan*/  NR_KERNEL_MISC_RECLAIMABLE ; 
 int /*<<< orphan*/  NR_KERNEL_STACK_KB ; 
 int /*<<< orphan*/  NR_MLOCK ; 
 int /*<<< orphan*/  NR_PAGETABLE ; 
 int /*<<< orphan*/  NR_SHMEM_PMDMAPPED ; 
 int /*<<< orphan*/  NR_SHMEM_THPS ; 
 int /*<<< orphan*/  NR_SLAB_RECLAIMABLE ; 
 int /*<<< orphan*/  NR_SLAB_UNRECLAIMABLE ; 
 int /*<<< orphan*/  NR_UNEVICTABLE ; 
 int /*<<< orphan*/  NR_UNSTABLE_NFS ; 
 int /*<<< orphan*/  NR_WRITEBACK ; 
 int /*<<< orphan*/  NR_WRITEBACK_TEMP ; 
 scalar_t__ FUNC2 (int,char*) ; 
 int FUNC3 (struct pglist_data*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct sysinfo*,int) ; 
 int FUNC5 (char*,char*,int,int,int,int,int,int,int,int,...) ; 
 int FUNC6 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static ssize_t FUNC7(struct device *dev,
			struct device_attribute *attr, char *buf)
{
	int n;
	int nid = dev->id;
	struct pglist_data *pgdat = FUNC1(nid);
	struct sysinfo i;
	unsigned long sreclaimable, sunreclaimable;

	FUNC4(&i, nid);
	sreclaimable = FUNC3(pgdat, NR_SLAB_RECLAIMABLE);
	sunreclaimable = FUNC3(pgdat, NR_SLAB_UNRECLAIMABLE);
	n = FUNC5(buf,
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
		       nid, FUNC0(i.totalram),
		       nid, FUNC0(i.freeram),
		       nid, FUNC0(i.totalram - i.freeram),
		       nid, FUNC0(FUNC3(pgdat, NR_ACTIVE_ANON) +
				FUNC3(pgdat, NR_ACTIVE_FILE)),
		       nid, FUNC0(FUNC3(pgdat, NR_INACTIVE_ANON) +
				FUNC3(pgdat, NR_INACTIVE_FILE)),
		       nid, FUNC0(FUNC3(pgdat, NR_ACTIVE_ANON)),
		       nid, FUNC0(FUNC3(pgdat, NR_INACTIVE_ANON)),
		       nid, FUNC0(FUNC3(pgdat, NR_ACTIVE_FILE)),
		       nid, FUNC0(FUNC3(pgdat, NR_INACTIVE_FILE)),
		       nid, FUNC0(FUNC3(pgdat, NR_UNEVICTABLE)),
		       nid, FUNC0(FUNC6(nid, NR_MLOCK)));

#ifdef CONFIG_HIGHMEM
	n += sprintf(buf + n,
		       "Node %d HighTotal:      %8lu kB\n"
		       "Node %d HighFree:       %8lu kB\n"
		       "Node %d LowTotal:       %8lu kB\n"
		       "Node %d LowFree:        %8lu kB\n",
		       nid, K(i.totalhigh),
		       nid, K(i.freehigh),
		       nid, K(i.totalram - i.totalhigh),
		       nid, K(i.freeram - i.freehigh));
#endif
	n += FUNC5(buf + n,
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
#ifdef CONFIG_TRANSPARENT_HUGEPAGE
		       "Node %d AnonHugePages:  %8lu kB\n"
		       "Node %d ShmemHugePages: %8lu kB\n"
		       "Node %d ShmemPmdMapped: %8lu kB\n"
		       "Node %d FileHugePages: %8lu kB\n"
		       "Node %d FilePmdMapped: %8lu kB\n"
#endif
			,
		       nid, FUNC0(FUNC3(pgdat, NR_FILE_DIRTY)),
		       nid, FUNC0(FUNC3(pgdat, NR_WRITEBACK)),
		       nid, FUNC0(FUNC3(pgdat, NR_FILE_PAGES)),
		       nid, FUNC0(FUNC3(pgdat, NR_FILE_MAPPED)),
		       nid, FUNC0(FUNC3(pgdat, NR_ANON_MAPPED)),
		       nid, FUNC0(i.sharedram),
		       nid, FUNC6(nid, NR_KERNEL_STACK_KB),
		       nid, FUNC0(FUNC6(nid, NR_PAGETABLE)),
		       nid, FUNC0(FUNC3(pgdat, NR_UNSTABLE_NFS)),
		       nid, FUNC0(FUNC6(nid, NR_BOUNCE)),
		       nid, FUNC0(FUNC3(pgdat, NR_WRITEBACK_TEMP)),
		       nid, FUNC0(sreclaimable +
			      FUNC3(pgdat, NR_KERNEL_MISC_RECLAIMABLE)),
		       nid, FUNC0(sreclaimable + sunreclaimable),
		       nid, FUNC0(sreclaimable),
		       nid, FUNC0(sunreclaimable)
#ifdef CONFIG_TRANSPARENT_HUGEPAGE
		       ,
		       nid, K(node_page_state(pgdat, NR_ANON_THPS) *
				       HPAGE_PMD_NR),
		       nid, K(node_page_state(pgdat, NR_SHMEM_THPS) *
				       HPAGE_PMD_NR),
		       nid, K(node_page_state(pgdat, NR_SHMEM_PMDMAPPED) *
				       HPAGE_PMD_NR),
		       nid, K(node_page_state(pgdat, NR_FILE_THPS) *
				       HPAGE_PMD_NR),
		       nid, K(node_page_state(pgdat, NR_FILE_PMDMAPPED) *
				       HPAGE_PMD_NR)
#endif
		       );
	n += FUNC2(nid, buf + n);
	return n;
}