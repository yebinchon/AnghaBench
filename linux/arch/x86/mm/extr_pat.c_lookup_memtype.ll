; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/mm/extr_pat.c_lookup_memtype.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/mm/extr_pat.c_lookup_memtype.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 (i32, i64)* }
%struct.memtype = type { i32 }
%struct.page = type { i32 }

@_PAGE_CACHE_MODE_WB = common dso_local global i32 0, align 4
@x86_platform = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@PAGE_SIZE = common dso_local global i64 0, align 8
@PAGE_SHIFT = common dso_local global i32 0, align 4
@memtype_lock = common dso_local global i32 0, align 4
@_PAGE_CACHE_MODE_UC_MINUS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @lookup_memtype to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lookup_memtype(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.memtype*, align 8
  %6 = alloca %struct.page*, align 8
  store i32 %0, i32* %3, align 4
  %7 = load i32, i32* @_PAGE_CACHE_MODE_WB, align 4
  store i32 %7, i32* %4, align 4
  %8 = load i64 (i32, i64)*, i64 (i32, i64)** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @x86_platform, i32 0, i32 0), align 8
  %9 = load i32, i32* %3, align 4
  %10 = load i32, i32* %3, align 4
  %11 = sext i32 %10 to i64
  %12 = load i64, i64* @PAGE_SIZE, align 8
  %13 = add nsw i64 %11, %12
  %14 = call i64 %8(i32 %9, i64 %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %1
  %17 = load i32, i32* %4, align 4
  store i32 %17, i32* %2, align 4
  br label %48

18:                                               ; preds = %1
  %19 = load i32, i32* %3, align 4
  %20 = load i32, i32* %3, align 4
  %21 = sext i32 %20 to i64
  %22 = load i64, i64* @PAGE_SIZE, align 8
  %23 = add nsw i64 %21, %22
  %24 = call i64 @pat_pagerange_is_ram(i32 %19, i64 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %33

26:                                               ; preds = %18
  %27 = load i32, i32* %3, align 4
  %28 = load i32, i32* @PAGE_SHIFT, align 4
  %29 = ashr i32 %27, %28
  %30 = call %struct.page* @pfn_to_page(i32 %29)
  store %struct.page* %30, %struct.page** %6, align 8
  %31 = load %struct.page*, %struct.page** %6, align 8
  %32 = call i32 @get_page_memtype(%struct.page* %31)
  store i32 %32, i32* %2, align 4
  br label %48

33:                                               ; preds = %18
  %34 = call i32 @spin_lock(i32* @memtype_lock)
  %35 = load i32, i32* %3, align 4
  %36 = call %struct.memtype* @rbt_memtype_lookup(i32 %35)
  store %struct.memtype* %36, %struct.memtype** %5, align 8
  %37 = load %struct.memtype*, %struct.memtype** %5, align 8
  %38 = icmp ne %struct.memtype* %37, null
  br i1 %38, label %39, label %43

39:                                               ; preds = %33
  %40 = load %struct.memtype*, %struct.memtype** %5, align 8
  %41 = getelementptr inbounds %struct.memtype, %struct.memtype* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  store i32 %42, i32* %4, align 4
  br label %45

43:                                               ; preds = %33
  %44 = load i32, i32* @_PAGE_CACHE_MODE_UC_MINUS, align 4
  store i32 %44, i32* %4, align 4
  br label %45

45:                                               ; preds = %43, %39
  %46 = call i32 @spin_unlock(i32* @memtype_lock)
  %47 = load i32, i32* %4, align 4
  store i32 %47, i32* %2, align 4
  br label %48

48:                                               ; preds = %45, %26, %16
  %49 = load i32, i32* %2, align 4
  ret i32 %49
}

declare dso_local i64 @pat_pagerange_is_ram(i32, i64) #1

declare dso_local %struct.page* @pfn_to_page(i32) #1

declare dso_local i32 @get_page_memtype(%struct.page*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local %struct.memtype* @rbt_memtype_lookup(i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
