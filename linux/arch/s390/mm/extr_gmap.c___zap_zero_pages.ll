; ModuleID = '/home/carl/AnghaBench/linux/arch/s390/mm/extr_gmap.c___zap_zero_pages.c'
source_filename = "/home/carl/AnghaBench/linux/arch/s390/mm/extr_gmap.c___zap_zero_pages.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mm_walk = type { i32 }

@_PAGE_INVALID = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i64, i64, %struct.mm_walk*)* @__zap_zero_pages to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__zap_zero_pages(i32* %0, i64 %1, i64 %2, %struct.mm_walk* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.mm_walk*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  store i32* %0, i32** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  store %struct.mm_walk* %3, %struct.mm_walk** %8, align 8
  %12 = load i64, i64* %6, align 8
  store i64 %12, i64* %9, align 8
  br label %13

13:                                               ; preds = %42, %4
  %14 = load i64, i64* %9, align 8
  %15 = load i64, i64* %7, align 8
  %16 = icmp ne i64 %14, %15
  br i1 %16, label %17, label %46

17:                                               ; preds = %13
  %18 = load %struct.mm_walk*, %struct.mm_walk** %8, align 8
  %19 = getelementptr inbounds %struct.mm_walk, %struct.mm_walk* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i32*, i32** %5, align 8
  %22 = load i64, i64* %9, align 8
  %23 = call i32* @pte_offset_map_lock(i32 %20, i32* %21, i64 %22, i32** %11)
  store i32* %23, i32** %10, align 8
  %24 = load i32*, i32** %10, align 8
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @pte_pfn(i32 %25)
  %27 = call i64 @is_zero_pfn(i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %38

29:                                               ; preds = %17
  %30 = load %struct.mm_walk*, %struct.mm_walk** %8, align 8
  %31 = getelementptr inbounds %struct.mm_walk, %struct.mm_walk* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i64, i64* %9, align 8
  %34 = load i32*, i32** %10, align 8
  %35 = load i32, i32* @_PAGE_INVALID, align 4
  %36 = call i32 @__pte(i32 %35)
  %37 = call i32 @ptep_xchg_direct(i32 %32, i64 %33, i32* %34, i32 %36)
  br label %38

38:                                               ; preds = %29, %17
  %39 = load i32*, i32** %10, align 8
  %40 = load i32*, i32** %11, align 8
  %41 = call i32 @pte_unmap_unlock(i32* %39, i32* %40)
  br label %42

42:                                               ; preds = %38
  %43 = load i64, i64* @PAGE_SIZE, align 8
  %44 = load i64, i64* %9, align 8
  %45 = add i64 %44, %43
  store i64 %45, i64* %9, align 8
  br label %13

46:                                               ; preds = %13
  ret i32 0
}

declare dso_local i32* @pte_offset_map_lock(i32, i32*, i64, i32**) #1

declare dso_local i64 @is_zero_pfn(i32) #1

declare dso_local i32 @pte_pfn(i32) #1

declare dso_local i32 @ptep_xchg_direct(i32, i64, i32*, i32) #1

declare dso_local i32 @__pte(i32) #1

declare dso_local i32 @pte_unmap_unlock(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
