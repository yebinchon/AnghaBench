; ModuleID = '/home/carl/AnghaBench/linux/arch/s390/mm/extr_dump_pagetables.c_pt_dump_init.c'
source_filename = "/home/carl/AnghaBench/linux/arch/s390/mm/extr_dump_pagetables.c_pt_dump_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i64 }

@S390_lowcore = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4
@_REGION_ENTRY_TYPE_MASK = common dso_local global i32 0, align 4
@max_addr = common dso_local global i32 0, align 4
@MODULES_VADDR = common dso_local global i64 0, align 8
@address_markers = common dso_local global %struct.TYPE_3__* null, align 8
@MODULES_NR = common dso_local global i64 0, align 8
@vmemmap = common dso_local global i64 0, align 8
@VMEMMAP_NR = common dso_local global i64 0, align 8
@VMALLOC_START = common dso_local global i64 0, align 8
@VMALLOC_NR = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [19 x i8] c"kernel_page_tables\00", align 1
@ptdump_fops = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @pt_dump_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pt_dump_init() #0 {
  %1 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @S390_lowcore, i32 0, i32 0), align 4
  %2 = load i32, i32* @_REGION_ENTRY_TYPE_MASK, align 4
  %3 = and i32 %1, %2
  %4 = ashr i32 %3, 2
  store i32 %4, i32* @max_addr, align 4
  %5 = load i32, i32* @max_addr, align 4
  %6 = mul nsw i32 %5, 11
  %7 = add nsw i32 %6, 31
  %8 = zext i32 %7 to i64
  %9 = shl i64 1, %8
  %10 = trunc i64 %9 to i32
  store i32 %10, i32* @max_addr, align 4
  %11 = load i64, i64* @MODULES_VADDR, align 8
  %12 = load %struct.TYPE_3__*, %struct.TYPE_3__** @address_markers, align 8
  %13 = load i64, i64* @MODULES_NR, align 8
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i64 %13
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  store i64 %11, i64* %15, align 8
  %16 = load i64, i64* @vmemmap, align 8
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** @address_markers, align 8
  %18 = load i64, i64* @VMEMMAP_NR, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i64 %18
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  store i64 %16, i64* %20, align 8
  %21 = load i64, i64* @VMALLOC_START, align 8
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** @address_markers, align 8
  %23 = load i64, i64* @VMALLOC_NR, align 8
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i64 %23
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  store i64 %21, i64* %25, align 8
  %26 = call i32 @debugfs_create_file(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 256, i32* null, i32* null, i32* @ptdump_fops)
  ret i32 0
}

declare dso_local i32 @debugfs_create_file(i8*, i32, i32*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
