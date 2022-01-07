; ModuleID = '/home/carl/AnghaBench/linux/arch/parisc/kernel/extr_pci-dma.c_map_pmd_uncached.c'
source_filename = "/home/carl/AnghaBench/linux/arch/parisc/kernel/extr_pci-dma.c_map_pmd_uncached.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PGDIR_MASK = common dso_local global i64 0, align 8
@PGDIR_SIZE = common dso_local global i64 0, align 8
@ENOMEM = common dso_local global i32 0, align 4
@PMD_SIZE = common dso_local global i64 0, align 8
@PMD_MASK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i64, i64, i64*)* @map_pmd_uncached to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @map_pmd_uncached(i32* %0, i64 %1, i64 %2, i64* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32*, align 8
  store i32* %0, i32** %6, align 8
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store i64* %3, i64** %9, align 8
  %13 = load i64, i64* %7, align 8
  store i64 %13, i64* %11, align 8
  %14 = load i64, i64* @PGDIR_MASK, align 8
  %15 = xor i64 %14, -1
  %16 = load i64, i64* %7, align 8
  %17 = and i64 %16, %15
  store i64 %17, i64* %7, align 8
  %18 = load i64, i64* %7, align 8
  %19 = load i64, i64* %8, align 8
  %20 = add i64 %18, %19
  store i64 %20, i64* %10, align 8
  %21 = load i64, i64* %10, align 8
  %22 = load i64, i64* @PGDIR_SIZE, align 8
  %23 = icmp ugt i64 %21, %22
  br i1 %23, label %24, label %26

24:                                               ; preds = %4
  %25 = load i64, i64* @PGDIR_SIZE, align 8
  store i64 %25, i64* %10, align 8
  br label %26

26:                                               ; preds = %24, %4
  br label %27

27:                                               ; preds = %59, %26
  %28 = load i32*, i32** %6, align 8
  %29 = load i64, i64* %7, align 8
  %30 = call i32* @pte_alloc_kernel(i32* %28, i64 %29)
  store i32* %30, i32** %12, align 8
  %31 = load i32*, i32** %12, align 8
  %32 = icmp ne i32* %31, null
  br i1 %32, label %36, label %33

33:                                               ; preds = %27
  %34 = load i32, i32* @ENOMEM, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %5, align 4
  br label %64

36:                                               ; preds = %27
  %37 = load i32*, i32** %12, align 8
  %38 = load i64, i64* %11, align 8
  %39 = load i64, i64* %10, align 8
  %40 = load i64, i64* %7, align 8
  %41 = sub i64 %39, %40
  %42 = load i64*, i64** %9, align 8
  %43 = call i64 @map_pte_uncached(i32* %37, i64 %38, i64 %41, i64* %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %48

45:                                               ; preds = %36
  %46 = load i32, i32* @ENOMEM, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %5, align 4
  br label %64

48:                                               ; preds = %36
  %49 = load i64, i64* %7, align 8
  %50 = load i64, i64* @PMD_SIZE, align 8
  %51 = add i64 %49, %50
  %52 = load i64, i64* @PMD_MASK, align 8
  %53 = and i64 %51, %52
  store i64 %53, i64* %7, align 8
  %54 = load i64, i64* @PMD_SIZE, align 8
  %55 = load i64, i64* %11, align 8
  %56 = add i64 %55, %54
  store i64 %56, i64* %11, align 8
  %57 = load i32*, i32** %6, align 8
  %58 = getelementptr inbounds i32, i32* %57, i32 1
  store i32* %58, i32** %6, align 8
  br label %59

59:                                               ; preds = %48
  %60 = load i64, i64* %7, align 8
  %61 = load i64, i64* %10, align 8
  %62 = icmp ult i64 %60, %61
  br i1 %62, label %27, label %63

63:                                               ; preds = %59
  store i32 0, i32* %5, align 4
  br label %64

64:                                               ; preds = %63, %45, %33
  %65 = load i32, i32* %5, align 4
  ret i32 %65
}

declare dso_local i32* @pte_alloc_kernel(i32*, i64) #1

declare dso_local i64 @map_pte_uncached(i32*, i64, i64, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
