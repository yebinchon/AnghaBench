; ModuleID = '/home/carl/AnghaBench/linux/drivers/base/extr_node.c_node_read_meminfo.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/base/extr_node.c_node_read_meminfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.pglist_data = type { i32 }
%struct.sysinfo = type { i32, i32, i32, i32, i32 }

@NR_SLAB_RECLAIMABLE = common dso_local global i32 0, align 4
@NR_SLAB_UNRECLAIMABLE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [353 x i8] c"Node %d MemTotal:       %8lu kB\0ANode %d MemFree:        %8lu kB\0ANode %d MemUsed:        %8lu kB\0ANode %d Active:         %8lu kB\0ANode %d Inactive:       %8lu kB\0ANode %d Active(anon):   %8lu kB\0ANode %d Inactive(anon): %8lu kB\0ANode %d Active(file):   %8lu kB\0ANode %d Inactive(file): %8lu kB\0ANode %d Unevictable:    %8lu kB\0ANode %d Mlocked:        %8lu kB\0A\00", align 1
@NR_ACTIVE_ANON = common dso_local global i32 0, align 4
@NR_ACTIVE_FILE = common dso_local global i32 0, align 4
@NR_INACTIVE_ANON = common dso_local global i32 0, align 4
@NR_INACTIVE_FILE = common dso_local global i32 0, align 4
@NR_UNEVICTABLE = common dso_local global i32 0, align 4
@NR_MLOCK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [481 x i8] c"Node %d Dirty:          %8lu kB\0ANode %d Writeback:      %8lu kB\0ANode %d FilePages:      %8lu kB\0ANode %d Mapped:         %8lu kB\0ANode %d AnonPages:      %8lu kB\0ANode %d Shmem:          %8lu kB\0ANode %d KernelStack:    %8lu kB\0ANode %d PageTables:     %8lu kB\0ANode %d NFS_Unstable:   %8lu kB\0ANode %d Bounce:         %8lu kB\0ANode %d WritebackTmp:   %8lu kB\0ANode %d KReclaimable:   %8lu kB\0ANode %d Slab:           %8lu kB\0ANode %d SReclaimable:   %8lu kB\0ANode %d SUnreclaim:     %8lu kB\0A\00", align 1
@NR_FILE_DIRTY = common dso_local global i32 0, align 4
@NR_WRITEBACK = common dso_local global i32 0, align 4
@NR_FILE_PAGES = common dso_local global i32 0, align 4
@NR_FILE_MAPPED = common dso_local global i32 0, align 4
@NR_ANON_MAPPED = common dso_local global i32 0, align 4
@NR_KERNEL_STACK_KB = common dso_local global i32 0, align 4
@NR_PAGETABLE = common dso_local global i32 0, align 4
@NR_UNSTABLE_NFS = common dso_local global i32 0, align 4
@NR_BOUNCE = common dso_local global i32 0, align 4
@NR_WRITEBACK_TEMP = common dso_local global i32 0, align 4
@NR_KERNEL_MISC_RECLAIMABLE = common dso_local global i32 0, align 4
@HPAGE_PMD_NR = common dso_local global i32 0, align 4
@NR_ANON_THPS = common dso_local global i32 0, align 4
@NR_FILE_PMDMAPPED = common dso_local global i32 0, align 4
@NR_FILE_THPS = common dso_local global i32 0, align 4
@NR_SHMEM_PMDMAPPED = common dso_local global i32 0, align 4
@NR_SHMEM_THPS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*)* @node_read_meminfo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @node_read_meminfo(%struct.device* %0, %struct.device_attribute* %1, i8* %2) #0 {
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.device_attribute*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.pglist_data*, align 8
  %10 = alloca %struct.sysinfo, align 4
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %5, align 8
  store i8* %2, i8** %6, align 8
  %13 = load %struct.device*, %struct.device** %4, align 8
  %14 = getelementptr inbounds %struct.device, %struct.device* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  store i32 %15, i32* %8, align 4
  %16 = load i32, i32* %8, align 4
  %17 = call %struct.pglist_data* @NODE_DATA(i32 %16)
  store %struct.pglist_data* %17, %struct.pglist_data** %9, align 8
  %18 = load i32, i32* %8, align 4
  %19 = call i32 @si_meminfo_node(%struct.sysinfo* %10, i32 %18)
  %20 = load %struct.pglist_data*, %struct.pglist_data** %9, align 8
  %21 = load i32, i32* @NR_SLAB_RECLAIMABLE, align 4
  %22 = call i32 @node_page_state(%struct.pglist_data* %20, i32 %21)
  %23 = sext i32 %22 to i64
  store i64 %23, i64* %11, align 8
  %24 = load %struct.pglist_data*, %struct.pglist_data** %9, align 8
  %25 = load i32, i32* @NR_SLAB_UNRECLAIMABLE, align 4
  %26 = call i32 @node_page_state(%struct.pglist_data* %24, i32 %25)
  %27 = sext i32 %26 to i64
  store i64 %27, i64* %12, align 8
  %28 = load i8*, i8** %6, align 8
  %29 = load i32, i32* %8, align 4
  %30 = getelementptr inbounds %struct.sysinfo, %struct.sysinfo* %10, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @K(i32 %31)
  %33 = load i32, i32* %8, align 4
  %34 = getelementptr inbounds %struct.sysinfo, %struct.sysinfo* %10, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @K(i32 %35)
  %37 = load i32, i32* %8, align 4
  %38 = getelementptr inbounds %struct.sysinfo, %struct.sysinfo* %10, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = getelementptr inbounds %struct.sysinfo, %struct.sysinfo* %10, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = sub nsw i32 %39, %41
  %43 = call i32 @K(i32 %42)
  %44 = load i32, i32* %8, align 4
  %45 = load %struct.pglist_data*, %struct.pglist_data** %9, align 8
  %46 = load i32, i32* @NR_ACTIVE_ANON, align 4
  %47 = call i32 @node_page_state(%struct.pglist_data* %45, i32 %46)
  %48 = load %struct.pglist_data*, %struct.pglist_data** %9, align 8
  %49 = load i32, i32* @NR_ACTIVE_FILE, align 4
  %50 = call i32 @node_page_state(%struct.pglist_data* %48, i32 %49)
  %51 = add nsw i32 %47, %50
  %52 = call i32 @K(i32 %51)
  %53 = load i32, i32* %8, align 4
  %54 = load %struct.pglist_data*, %struct.pglist_data** %9, align 8
  %55 = load i32, i32* @NR_INACTIVE_ANON, align 4
  %56 = call i32 @node_page_state(%struct.pglist_data* %54, i32 %55)
  %57 = load %struct.pglist_data*, %struct.pglist_data** %9, align 8
  %58 = load i32, i32* @NR_INACTIVE_FILE, align 4
  %59 = call i32 @node_page_state(%struct.pglist_data* %57, i32 %58)
  %60 = add nsw i32 %56, %59
  %61 = call i32 @K(i32 %60)
  %62 = load i32, i32* %8, align 4
  %63 = load %struct.pglist_data*, %struct.pglist_data** %9, align 8
  %64 = load i32, i32* @NR_ACTIVE_ANON, align 4
  %65 = call i32 @node_page_state(%struct.pglist_data* %63, i32 %64)
  %66 = call i32 @K(i32 %65)
  %67 = load i32, i32* %8, align 4
  %68 = load %struct.pglist_data*, %struct.pglist_data** %9, align 8
  %69 = load i32, i32* @NR_INACTIVE_ANON, align 4
  %70 = call i32 @node_page_state(%struct.pglist_data* %68, i32 %69)
  %71 = call i32 @K(i32 %70)
  %72 = load i32, i32* %8, align 4
  %73 = load %struct.pglist_data*, %struct.pglist_data** %9, align 8
  %74 = load i32, i32* @NR_ACTIVE_FILE, align 4
  %75 = call i32 @node_page_state(%struct.pglist_data* %73, i32 %74)
  %76 = call i32 @K(i32 %75)
  %77 = load i32, i32* %8, align 4
  %78 = load %struct.pglist_data*, %struct.pglist_data** %9, align 8
  %79 = load i32, i32* @NR_INACTIVE_FILE, align 4
  %80 = call i32 @node_page_state(%struct.pglist_data* %78, i32 %79)
  %81 = call i32 @K(i32 %80)
  %82 = load i32, i32* %8, align 4
  %83 = load %struct.pglist_data*, %struct.pglist_data** %9, align 8
  %84 = load i32, i32* @NR_UNEVICTABLE, align 4
  %85 = call i32 @node_page_state(%struct.pglist_data* %83, i32 %84)
  %86 = call i32 @K(i32 %85)
  %87 = load i32, i32* %8, align 4
  %88 = load i32, i32* %8, align 4
  %89 = load i32, i32* @NR_MLOCK, align 4
  %90 = call i32 @sum_zone_node_page_state(i32 %88, i32 %89)
  %91 = call i32 @K(i32 %90)
  %92 = call i32 (i8*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, ...) @sprintf(i8* %28, i8* getelementptr inbounds ([353 x i8], [353 x i8]* @.str, i64 0, i64 0), i32 %29, i32 %32, i32 %33, i32 %36, i32 %37, i32 %43, i32 %44, i32 %52, i32 %53, i32 %61, i32 %62, i32 %66, i32 %67, i32 %71, i32 %72, i32 %76, i32 %77, i32 %81, i32 %82, i32 %86, i32 %87, i32 %91)
  store i32 %92, i32* %7, align 4
  %93 = load i8*, i8** %6, align 8
  %94 = load i32, i32* %7, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds i8, i8* %93, i64 %95
  %97 = load i32, i32* %8, align 4
  %98 = load %struct.pglist_data*, %struct.pglist_data** %9, align 8
  %99 = load i32, i32* @NR_FILE_DIRTY, align 4
  %100 = call i32 @node_page_state(%struct.pglist_data* %98, i32 %99)
  %101 = call i32 @K(i32 %100)
  %102 = load i32, i32* %8, align 4
  %103 = load %struct.pglist_data*, %struct.pglist_data** %9, align 8
  %104 = load i32, i32* @NR_WRITEBACK, align 4
  %105 = call i32 @node_page_state(%struct.pglist_data* %103, i32 %104)
  %106 = call i32 @K(i32 %105)
  %107 = load i32, i32* %8, align 4
  %108 = load %struct.pglist_data*, %struct.pglist_data** %9, align 8
  %109 = load i32, i32* @NR_FILE_PAGES, align 4
  %110 = call i32 @node_page_state(%struct.pglist_data* %108, i32 %109)
  %111 = call i32 @K(i32 %110)
  %112 = load i32, i32* %8, align 4
  %113 = load %struct.pglist_data*, %struct.pglist_data** %9, align 8
  %114 = load i32, i32* @NR_FILE_MAPPED, align 4
  %115 = call i32 @node_page_state(%struct.pglist_data* %113, i32 %114)
  %116 = call i32 @K(i32 %115)
  %117 = load i32, i32* %8, align 4
  %118 = load %struct.pglist_data*, %struct.pglist_data** %9, align 8
  %119 = load i32, i32* @NR_ANON_MAPPED, align 4
  %120 = call i32 @node_page_state(%struct.pglist_data* %118, i32 %119)
  %121 = call i32 @K(i32 %120)
  %122 = load i32, i32* %8, align 4
  %123 = getelementptr inbounds %struct.sysinfo, %struct.sysinfo* %10, i32 0, i32 4
  %124 = load i32, i32* %123, align 4
  %125 = call i32 @K(i32 %124)
  %126 = load i32, i32* %8, align 4
  %127 = load i32, i32* %8, align 4
  %128 = load i32, i32* @NR_KERNEL_STACK_KB, align 4
  %129 = call i32 @sum_zone_node_page_state(i32 %127, i32 %128)
  %130 = load i32, i32* %8, align 4
  %131 = load i32, i32* %8, align 4
  %132 = load i32, i32* @NR_PAGETABLE, align 4
  %133 = call i32 @sum_zone_node_page_state(i32 %131, i32 %132)
  %134 = call i32 @K(i32 %133)
  %135 = load i32, i32* %8, align 4
  %136 = load %struct.pglist_data*, %struct.pglist_data** %9, align 8
  %137 = load i32, i32* @NR_UNSTABLE_NFS, align 4
  %138 = call i32 @node_page_state(%struct.pglist_data* %136, i32 %137)
  %139 = call i32 @K(i32 %138)
  %140 = load i32, i32* %8, align 4
  %141 = load i32, i32* %8, align 4
  %142 = load i32, i32* @NR_BOUNCE, align 4
  %143 = call i32 @sum_zone_node_page_state(i32 %141, i32 %142)
  %144 = call i32 @K(i32 %143)
  %145 = load i32, i32* %8, align 4
  %146 = load %struct.pglist_data*, %struct.pglist_data** %9, align 8
  %147 = load i32, i32* @NR_WRITEBACK_TEMP, align 4
  %148 = call i32 @node_page_state(%struct.pglist_data* %146, i32 %147)
  %149 = call i32 @K(i32 %148)
  %150 = load i32, i32* %8, align 4
  %151 = load i64, i64* %11, align 8
  %152 = load %struct.pglist_data*, %struct.pglist_data** %9, align 8
  %153 = load i32, i32* @NR_KERNEL_MISC_RECLAIMABLE, align 4
  %154 = call i32 @node_page_state(%struct.pglist_data* %152, i32 %153)
  %155 = sext i32 %154 to i64
  %156 = add i64 %151, %155
  %157 = trunc i64 %156 to i32
  %158 = call i32 @K(i32 %157)
  %159 = load i32, i32* %8, align 4
  %160 = load i64, i64* %11, align 8
  %161 = load i64, i64* %12, align 8
  %162 = add i64 %160, %161
  %163 = trunc i64 %162 to i32
  %164 = call i32 @K(i32 %163)
  %165 = load i32, i32* %8, align 4
  %166 = load i64, i64* %11, align 8
  %167 = trunc i64 %166 to i32
  %168 = call i32 @K(i32 %167)
  %169 = load i32, i32* %8, align 4
  %170 = load i64, i64* %12, align 8
  %171 = trunc i64 %170 to i32
  %172 = call i32 @K(i32 %171)
  %173 = call i32 (i8*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, ...) @sprintf(i8* %96, i8* getelementptr inbounds ([481 x i8], [481 x i8]* @.str.1, i64 0, i64 0), i32 %97, i32 %101, i32 %102, i32 %106, i32 %107, i32 %111, i32 %112, i32 %116, i32 %117, i32 %121, i32 %122, i32 %125, i32 %126, i32 %129, i32 %130, i32 %134, i32 %135, i32 %139, i32 %140, i32 %144, i32 %145, i32 %149, i32 %150, i32 %158, i32 %159, i32 %164, i32 %165, i32 %168, i32 %169, i32 %172)
  %174 = load i32, i32* %7, align 4
  %175 = add nsw i32 %174, %173
  store i32 %175, i32* %7, align 4
  %176 = load i32, i32* %8, align 4
  %177 = load i8*, i8** %6, align 8
  %178 = load i32, i32* %7, align 4
  %179 = sext i32 %178 to i64
  %180 = getelementptr inbounds i8, i8* %177, i64 %179
  %181 = call i64 @hugetlb_report_node_meminfo(i32 %176, i8* %180)
  %182 = load i32, i32* %7, align 4
  %183 = sext i32 %182 to i64
  %184 = add nsw i64 %183, %181
  %185 = trunc i64 %184 to i32
  store i32 %185, i32* %7, align 4
  %186 = load i32, i32* %7, align 4
  ret i32 %186
}

declare dso_local %struct.pglist_data* @NODE_DATA(i32) #1

declare dso_local i32 @si_meminfo_node(%struct.sysinfo*, i32) #1

declare dso_local i32 @node_page_state(%struct.pglist_data*, i32) #1

declare dso_local i32 @sprintf(i8*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, ...) #1

declare dso_local i32 @K(i32) #1

declare dso_local i32 @sum_zone_node_page_state(i32, i32) #1

declare dso_local i64 @hugetlb_report_node_meminfo(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
