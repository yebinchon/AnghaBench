; ModuleID = '/home/carl/AnghaBench/linux/arch/mips/jazz/extr_jazzdma.c_vdma_pgtbl_init.c'
source_filename = "/home/carl/AnghaBench/linux/arch/mips/jazz/extr_jazzdma.c_vdma_pgtbl_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i32 }

@VDMA_PGTBL_ENTRIES = common dso_local global i32 0, align 4
@pgtbl = common dso_local global %struct.TYPE_2__* null, align 8
@VDMA_PAGE_EMPTY = common dso_local global i32 0, align 4
@VDMA_PAGESIZE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @vdma_pgtbl_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vdma_pgtbl_init() #0 {
  %1 = alloca i64, align 8
  %2 = alloca i32, align 4
  store i64 0, i64* %1, align 8
  store i32 0, i32* %2, align 4
  br label %3

3:                                                ; preds = %23, %0
  %4 = load i32, i32* %2, align 4
  %5 = load i32, i32* @VDMA_PGTBL_ENTRIES, align 4
  %6 = icmp slt i32 %4, %5
  br i1 %6, label %7, label %26

7:                                                ; preds = %3
  %8 = load i64, i64* %1, align 8
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** @pgtbl, align 8
  %10 = load i32, i32* %2, align 4
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i64 %11
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  store i64 %8, i64* %13, align 8
  %14 = load i32, i32* @VDMA_PAGE_EMPTY, align 4
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** @pgtbl, align 8
  %16 = load i32, i32* %2, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i64 %17
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 1
  store i32 %14, i32* %19, align 8
  %20 = load i64, i64* @VDMA_PAGESIZE, align 8
  %21 = load i64, i64* %1, align 8
  %22 = add i64 %21, %20
  store i64 %22, i64* %1, align 8
  br label %23

23:                                               ; preds = %7
  %24 = load i32, i32* %2, align 4
  %25 = add nsw i32 %24, 1
  store i32 %25, i32* %2, align 4
  br label %3

26:                                               ; preds = %3
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
