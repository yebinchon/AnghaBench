; ModuleID = '/home/carl/AnghaBench/linux/arch/sh/kernel/extr_dma-coherent.c_arch_dma_free.c'
source_filename = "/home/carl/AnghaBench/linux/arch/sh/kernel/extr_dma-coherent.c_arch_dma_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i64 }

@PAGE_SHIFT = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @arch_dma_free(%struct.device* %0, i64 %1, i8* %2, i64 %3, i64 %4) #0 {
  %6 = alloca %struct.device*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %6, align 8
  store i64 %1, i64* %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  store i64 %4, i64* %10, align 8
  %14 = load i64, i64* %7, align 8
  %15 = call i32 @get_order(i64 %14)
  store i32 %15, i32* %11, align 4
  %16 = load i64, i64* %9, align 8
  %17 = load i64, i64* @PAGE_SHIFT, align 8
  %18 = lshr i64 %16, %17
  store i64 %18, i64* %12, align 8
  %19 = load %struct.device*, %struct.device** %6, align 8
  %20 = icmp ne %struct.device* %19, null
  %21 = xor i1 %20, true
  %22 = zext i1 %21 to i32
  %23 = call i32 @WARN_ON(i32 %22)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %31, label %25

25:                                               ; preds = %5
  %26 = load %struct.device*, %struct.device** %6, align 8
  %27 = getelementptr inbounds %struct.device, %struct.device* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* %12, align 8
  %30 = add i64 %29, %28
  store i64 %30, i64* %12, align 8
  br label %31

31:                                               ; preds = %25, %5
  store i32 0, i32* %13, align 4
  br label %32

32:                                               ; preds = %44, %31
  %33 = load i32, i32* %13, align 4
  %34 = load i32, i32* %11, align 4
  %35 = shl i32 1, %34
  %36 = icmp slt i32 %33, %35
  br i1 %36, label %37, label %47

37:                                               ; preds = %32
  %38 = load i64, i64* %12, align 8
  %39 = load i32, i32* %13, align 4
  %40 = sext i32 %39 to i64
  %41 = add i64 %38, %40
  %42 = call i32 @pfn_to_page(i64 %41)
  %43 = call i32 @__free_pages(i32 %42, i32 0)
  br label %44

44:                                               ; preds = %37
  %45 = load i32, i32* %13, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %13, align 4
  br label %32

47:                                               ; preds = %32
  %48 = load i8*, i8** %8, align 8
  %49 = call i32 @iounmap(i8* %48)
  ret void
}

declare dso_local i32 @get_order(i64) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @__free_pages(i32, i32) #1

declare dso_local i32 @pfn_to_page(i64) #1

declare dso_local i32 @iounmap(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
