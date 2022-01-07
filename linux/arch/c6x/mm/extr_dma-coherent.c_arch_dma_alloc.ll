; ModuleID = '/home/carl/AnghaBench/linux/arch/c6x/mm/extr_dma-coherent.c_arch_dma_alloc.c'
source_filename = "/home/carl/AnghaBench/linux/arch/c6x/mm/extr_dma-coherent.c_arch_dma_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }

@dma_size = common dso_local global i32 0, align 4
@PAGE_SHIFT = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @arch_dma_alloc(%struct.device* %0, i64 %1, i32* %2, i32 %3, i64 %4) #0 {
  %6 = alloca i8*, align 8
  %7 = alloca %struct.device*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %7, align 8
  store i64 %1, i64* %8, align 8
  store i32* %2, i32** %9, align 8
  store i32 %3, i32* %10, align 4
  store i64 %4, i64* %11, align 8
  %15 = load i32, i32* @dma_size, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %5
  %18 = load i64, i64* %8, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %21, label %20

20:                                               ; preds = %17, %5
  store i8* null, i8** %6, align 8
  br label %47

21:                                               ; preds = %17
  %22 = load i64, i64* %8, align 8
  %23 = sub i64 %22, 1
  %24 = load i64, i64* @PAGE_SHIFT, align 8
  %25 = lshr i64 %23, %24
  %26 = add i64 %25, 1
  %27 = call i32 @get_count_order(i64 %26)
  store i32 %27, i32* %14, align 4
  %28 = load i32, i32* %14, align 4
  %29 = call i32 @__alloc_dma_pages(i32 %28)
  store i32 %29, i32* %13, align 4
  %30 = load i32*, i32** %9, align 8
  %31 = icmp ne i32* %30, null
  br i1 %31, label %32, label %35

32:                                               ; preds = %21
  %33 = load i32, i32* %13, align 4
  %34 = load i32*, i32** %9, align 8
  store i32 %33, i32* %34, align 4
  br label %35

35:                                               ; preds = %32, %21
  %36 = load i32, i32* %13, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %39, label %38

38:                                               ; preds = %35
  store i8* null, i8** %6, align 8
  br label %47

39:                                               ; preds = %35
  %40 = load i32, i32* %13, align 4
  %41 = call i8* @phys_to_virt(i32 %40)
  store i8* %41, i8** %12, align 8
  %42 = load i8*, i8** %12, align 8
  %43 = load i32, i32* %14, align 4
  %44 = shl i32 1, %43
  %45 = call i32 @memset(i8* %42, i32 0, i32 %44)
  %46 = load i8*, i8** %12, align 8
  store i8* %46, i8** %6, align 8
  br label %47

47:                                               ; preds = %39, %38, %20
  %48 = load i8*, i8** %6, align 8
  ret i8* %48
}

declare dso_local i32 @get_count_order(i64) #1

declare dso_local i32 @__alloc_dma_pages(i32) #1

declare dso_local i8* @phys_to_virt(i32) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
