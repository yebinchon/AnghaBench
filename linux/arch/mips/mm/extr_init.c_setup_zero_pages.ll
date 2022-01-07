; ModuleID = '/home/carl/AnghaBench/linux/arch/mips/mm/extr_init.c_setup_zero_pages.c'
source_filename = "/home/carl/AnghaBench/linux/arch/mips/mm/extr_init.c_setup_zero_pages.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.page = type { i32 }

@cpu_has_vce = common dso_local global i64 0, align 8
@GFP_KERNEL = common dso_local global i32 0, align 4
@__GFP_ZERO = common dso_local global i32 0, align 4
@empty_zero_page = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [34 x i8] c"Oh boy, that early out of memory?\00", align 1
@PAGE_SIZE = common dso_local global i32 0, align 4
@PAGE_MASK = common dso_local global i32 0, align 4
@zero_page_mask = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @setup_zero_pages() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca %struct.page*, align 8
  %4 = load i64, i64* @cpu_has_vce, align 8
  %5 = icmp ne i64 %4, 0
  br i1 %5, label %6, label %7

6:                                                ; preds = %0
  store i32 3, i32* %1, align 4
  br label %8

7:                                                ; preds = %0
  store i32 0, i32* %1, align 4
  br label %8

8:                                                ; preds = %7, %6
  %9 = load i32, i32* @GFP_KERNEL, align 4
  %10 = load i32, i32* @__GFP_ZERO, align 4
  %11 = or i32 %9, %10
  %12 = load i32, i32* %1, align 4
  %13 = call i64 @__get_free_pages(i32 %11, i32 %12)
  store i64 %13, i64* @empty_zero_page, align 8
  %14 = load i64, i64* @empty_zero_page, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %18, label %16

16:                                               ; preds = %8
  %17 = call i32 @panic(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  br label %18

18:                                               ; preds = %16, %8
  %19 = load i64, i64* @empty_zero_page, align 8
  %20 = inttoptr i64 %19 to i8*
  %21 = call %struct.page* @virt_to_page(i8* %20)
  store %struct.page* %21, %struct.page** %3, align 8
  %22 = load %struct.page*, %struct.page** %3, align 8
  %23 = load i32, i32* %1, align 4
  %24 = call i32 @split_page(%struct.page* %22, i32 %23)
  store i32 0, i32* %2, align 4
  br label %25

25:                                               ; preds = %33, %18
  %26 = load i32, i32* %2, align 4
  %27 = load i32, i32* %1, align 4
  %28 = shl i32 1, %27
  %29 = icmp ult i32 %26, %28
  br i1 %29, label %30, label %38

30:                                               ; preds = %25
  %31 = load %struct.page*, %struct.page** %3, align 8
  %32 = call i32 @mark_page_reserved(%struct.page* %31)
  br label %33

33:                                               ; preds = %30
  %34 = load i32, i32* %2, align 4
  %35 = add i32 %34, 1
  store i32 %35, i32* %2, align 4
  %36 = load %struct.page*, %struct.page** %3, align 8
  %37 = getelementptr inbounds %struct.page, %struct.page* %36, i32 1
  store %struct.page* %37, %struct.page** %3, align 8
  br label %25

38:                                               ; preds = %25
  %39 = load i32, i32* @PAGE_SIZE, align 4
  %40 = load i32, i32* %1, align 4
  %41 = shl i32 %39, %40
  %42 = sub i32 %41, 1
  %43 = load i32, i32* @PAGE_MASK, align 4
  %44 = and i32 %42, %43
  store i32 %44, i32* @zero_page_mask, align 4
  ret void
}

declare dso_local i64 @__get_free_pages(i32, i32) #1

declare dso_local i32 @panic(i8*) #1

declare dso_local %struct.page* @virt_to_page(i8*) #1

declare dso_local i32 @split_page(%struct.page*, i32) #1

declare dso_local i32 @mark_page_reserved(%struct.page*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
