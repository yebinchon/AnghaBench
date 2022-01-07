; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/mm/extr_pageattr.c_split_large_page.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/mm/extr_pageattr.c_split_large_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cpa_data = type { i32 }
%struct.page = type { i32 }

@cpa_lock = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cpa_data*, i32*, i64)* @split_large_page to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @split_large_page(%struct.cpa_data* %0, i32* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.cpa_data*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.page*, align 8
  store %struct.cpa_data* %0, %struct.cpa_data** %5, align 8
  store i32* %1, i32** %6, align 8
  store i64 %2, i64* %7, align 8
  %9 = call i32 (...) @debug_pagealloc_enabled()
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %13, label %11

11:                                               ; preds = %3
  %12 = call i32 @spin_unlock(i32* @cpa_lock)
  br label %13

13:                                               ; preds = %11, %3
  %14 = load i32, i32* @GFP_KERNEL, align 4
  %15 = call %struct.page* @alloc_pages(i32 %14, i32 0)
  store %struct.page* %15, %struct.page** %8, align 8
  %16 = call i32 (...) @debug_pagealloc_enabled()
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %20, label %18

18:                                               ; preds = %13
  %19 = call i32 @spin_lock(i32* @cpa_lock)
  br label %20

20:                                               ; preds = %18, %13
  %21 = load %struct.page*, %struct.page** %8, align 8
  %22 = icmp ne %struct.page* %21, null
  br i1 %22, label %26, label %23

23:                                               ; preds = %20
  %24 = load i32, i32* @ENOMEM, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %4, align 4
  br label %37

26:                                               ; preds = %20
  %27 = load %struct.cpa_data*, %struct.cpa_data** %5, align 8
  %28 = load i32*, i32** %6, align 8
  %29 = load i64, i64* %7, align 8
  %30 = load %struct.page*, %struct.page** %8, align 8
  %31 = call i64 @__split_large_page(%struct.cpa_data* %27, i32* %28, i64 %29, %struct.page* %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %26
  %34 = load %struct.page*, %struct.page** %8, align 8
  %35 = call i32 @__free_page(%struct.page* %34)
  br label %36

36:                                               ; preds = %33, %26
  store i32 0, i32* %4, align 4
  br label %37

37:                                               ; preds = %36, %23
  %38 = load i32, i32* %4, align 4
  ret i32 %38
}

declare dso_local i32 @debug_pagealloc_enabled(...) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local %struct.page* @alloc_pages(i32, i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i64 @__split_large_page(%struct.cpa_data*, i32*, i64, %struct.page*) #1

declare dso_local i32 @__free_page(%struct.page*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
