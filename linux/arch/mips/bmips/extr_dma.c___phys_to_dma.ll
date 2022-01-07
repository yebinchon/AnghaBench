; ModuleID = '/home/carl/AnghaBench/linux/arch/mips/bmips/extr_dma.c___phys_to_dma.c'
source_filename = "/home/carl/AnghaBench/linux/arch/mips/bmips/extr_dma.c___phys_to_dma.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bmips_dma_range = type { i64, i64, i64 }
%struct.device = type { i32 }

@bmips_dma_ranges = common dso_local global %struct.bmips_dma_range* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @__phys_to_dma(%struct.device* %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.bmips_dma_range*, align 8
  store %struct.device* %0, %struct.device** %4, align 8
  store i64 %1, i64* %5, align 8
  %7 = load %struct.bmips_dma_range*, %struct.bmips_dma_range** @bmips_dma_ranges, align 8
  store %struct.bmips_dma_range* %7, %struct.bmips_dma_range** %6, align 8
  br label %8

8:                                                ; preds = %45, %2
  %9 = load %struct.bmips_dma_range*, %struct.bmips_dma_range** %6, align 8
  %10 = icmp ne %struct.bmips_dma_range* %9, null
  br i1 %10, label %11, label %16

11:                                               ; preds = %8
  %12 = load %struct.bmips_dma_range*, %struct.bmips_dma_range** %6, align 8
  %13 = getelementptr inbounds %struct.bmips_dma_range, %struct.bmips_dma_range* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br label %16

16:                                               ; preds = %11, %8
  %17 = phi i1 [ false, %8 ], [ %15, %11 ]
  br i1 %17, label %18, label %48

18:                                               ; preds = %16
  %19 = load i64, i64* %5, align 8
  %20 = load %struct.bmips_dma_range*, %struct.bmips_dma_range** %6, align 8
  %21 = getelementptr inbounds %struct.bmips_dma_range, %struct.bmips_dma_range* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = icmp sge i64 %19, %22
  br i1 %23, label %24, label %44

24:                                               ; preds = %18
  %25 = load i64, i64* %5, align 8
  %26 = load %struct.bmips_dma_range*, %struct.bmips_dma_range** %6, align 8
  %27 = getelementptr inbounds %struct.bmips_dma_range, %struct.bmips_dma_range* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = load %struct.bmips_dma_range*, %struct.bmips_dma_range** %6, align 8
  %30 = getelementptr inbounds %struct.bmips_dma_range, %struct.bmips_dma_range* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = add nsw i64 %28, %31
  %33 = icmp slt i64 %25, %32
  br i1 %33, label %34, label %44

34:                                               ; preds = %24
  %35 = load i64, i64* %5, align 8
  %36 = load %struct.bmips_dma_range*, %struct.bmips_dma_range** %6, align 8
  %37 = getelementptr inbounds %struct.bmips_dma_range, %struct.bmips_dma_range* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = sub nsw i64 %35, %38
  %40 = load %struct.bmips_dma_range*, %struct.bmips_dma_range** %6, align 8
  %41 = getelementptr inbounds %struct.bmips_dma_range, %struct.bmips_dma_range* %40, i32 0, i32 2
  %42 = load i64, i64* %41, align 8
  %43 = add nsw i64 %39, %42
  store i64 %43, i64* %3, align 8
  br label %50

44:                                               ; preds = %24, %18
  br label %45

45:                                               ; preds = %44
  %46 = load %struct.bmips_dma_range*, %struct.bmips_dma_range** %6, align 8
  %47 = getelementptr inbounds %struct.bmips_dma_range, %struct.bmips_dma_range* %46, i32 1
  store %struct.bmips_dma_range* %47, %struct.bmips_dma_range** %6, align 8
  br label %8

48:                                               ; preds = %16
  %49 = load i64, i64* %5, align 8
  store i64 %49, i64* %3, align 8
  br label %50

50:                                               ; preds = %48, %34
  %51 = load i64, i64* %3, align 8
  ret i64 %51
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
