; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/mm/ptdump/extr_ptdump.c_populate_markers.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/mm/ptdump/extr_ptdump.c_populate_markers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@PAGE_OFFSET = common dso_local global i32 0, align 4
@address_markers = common dso_local global %struct.TYPE_2__* null, align 8
@VMALLOC_START = common dso_local global i32 0, align 4
@VMALLOC_END = common dso_local global i32 0, align 4
@ioremap_bot = common dso_local global i32 0, align 4
@IOREMAP_TOP = common dso_local global i32 0, align 4
@FIXADDR_START = common dso_local global i32 0, align 4
@FIXADDR_TOP = common dso_local global i32 0, align 4
@H_VMEMMAP_START = common dso_local global i32 0, align 4
@IOREMAP_BASE = common dso_local global i32 0, align 4
@IOREMAP_END = common dso_local global i32 0, align 4
@ISA_IO_BASE = common dso_local global i32 0, align 4
@ISA_IO_END = common dso_local global i32 0, align 4
@KASAN_SHADOW_END = common dso_local global i32 0, align 4
@KASAN_SHADOW_START = common dso_local global i32 0, align 4
@LAST_PKMAP = common dso_local global i32 0, align 4
@PHB_IO_BASE = common dso_local global i32 0, align 4
@PHB_IO_END = common dso_local global i32 0, align 4
@PKMAP_BASE = common dso_local global i32 0, align 4
@VMEMMAP_BASE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @populate_markers to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @populate_markers() #0 {
  %1 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  %2 = load i32, i32* @PAGE_OFFSET, align 4
  %3 = load %struct.TYPE_2__*, %struct.TYPE_2__** @address_markers, align 8
  %4 = load i32, i32* %1, align 4
  %5 = add nsw i32 %4, 1
  store i32 %5, i32* %1, align 4
  %6 = sext i32 %4 to i64
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %3, i64 %6
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  store i32 %2, i32* %8, align 4
  %9 = load i32, i32* @VMALLOC_START, align 4
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** @address_markers, align 8
  %11 = load i32, i32* %1, align 4
  %12 = add nsw i32 %11, 1
  store i32 %12, i32* %1, align 4
  %13 = sext i32 %11 to i64
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i64 %13
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  store i32 %9, i32* %15, align 4
  %16 = load i32, i32* @VMALLOC_END, align 4
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** @address_markers, align 8
  %18 = load i32, i32* %1, align 4
  %19 = add nsw i32 %18, 1
  store i32 %19, i32* %1, align 4
  %20 = sext i32 %18 to i64
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i64 %20
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  store i32 %16, i32* %22, align 4
  %23 = load i32, i32* @ioremap_bot, align 4
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** @address_markers, align 8
  %25 = load i32, i32* %1, align 4
  %26 = add nsw i32 %25, 1
  store i32 %26, i32* %1, align 4
  %27 = sext i32 %25 to i64
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i64 %27
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  store i32 %23, i32* %29, align 4
  %30 = load i32, i32* @IOREMAP_TOP, align 4
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** @address_markers, align 8
  %32 = load i32, i32* %1, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %1, align 4
  %34 = sext i32 %32 to i64
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i64 %34
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  store i32 %30, i32* %36, align 4
  %37 = load i32, i32* @FIXADDR_START, align 4
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** @address_markers, align 8
  %39 = load i32, i32* %1, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %1, align 4
  %41 = sext i32 %39 to i64
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i64 %41
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  store i32 %37, i32* %43, align 4
  %44 = load i32, i32* @FIXADDR_TOP, align 4
  %45 = load %struct.TYPE_2__*, %struct.TYPE_2__** @address_markers, align 8
  %46 = load i32, i32* %1, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %1, align 4
  %48 = sext i32 %46 to i64
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i64 %48
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 0
  store i32 %44, i32* %50, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
