; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/mm/ptdump/extr_hashpagetable.c_populate_markers.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/mm/ptdump/extr_hashpagetable.c_populate_markers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@PAGE_OFFSET = common dso_local global i32 0, align 4
@address_markers = common dso_local global %struct.TYPE_2__* null, align 8
@VMALLOC_START = common dso_local global i32 0, align 4
@VMALLOC_END = common dso_local global i32 0, align 4
@ISA_IO_BASE = common dso_local global i32 0, align 4
@ISA_IO_END = common dso_local global i32 0, align 4
@PHB_IO_BASE = common dso_local global i32 0, align 4
@PHB_IO_END = common dso_local global i32 0, align 4
@IOREMAP_BASE = common dso_local global i32 0, align 4
@IOREMAP_END = common dso_local global i32 0, align 4
@H_VMEMMAP_START = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @populate_markers to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @populate_markers() #0 {
  %1 = load i32, i32* @PAGE_OFFSET, align 4
  %2 = load %struct.TYPE_2__*, %struct.TYPE_2__** @address_markers, align 8
  %3 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %2, i64 0
  %4 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %3, i32 0, i32 0
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* @VMALLOC_START, align 4
  %6 = load %struct.TYPE_2__*, %struct.TYPE_2__** @address_markers, align 8
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i64 1
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  store i32 %5, i32* %8, align 4
  %9 = load i32, i32* @VMALLOC_END, align 4
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** @address_markers, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i64 2
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  store i32 %9, i32* %12, align 4
  %13 = load i32, i32* @ISA_IO_BASE, align 4
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** @address_markers, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i64 3
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  store i32 %13, i32* %16, align 4
  %17 = load i32, i32* @ISA_IO_END, align 4
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** @address_markers, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i64 4
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  store i32 %17, i32* %20, align 4
  %21 = load i32, i32* @PHB_IO_BASE, align 4
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** @address_markers, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i64 5
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  store i32 %21, i32* %24, align 4
  %25 = load i32, i32* @PHB_IO_END, align 4
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** @address_markers, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i64 6
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  store i32 %25, i32* %28, align 4
  %29 = load i32, i32* @IOREMAP_BASE, align 4
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** @address_markers, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i64 7
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  store i32 %29, i32* %32, align 4
  %33 = load i32, i32* @IOREMAP_END, align 4
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** @address_markers, align 8
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i64 8
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  store i32 %33, i32* %36, align 4
  %37 = load i32, i32* @H_VMEMMAP_START, align 4
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** @address_markers, align 8
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i64 9
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  store i32 %37, i32* %40, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
