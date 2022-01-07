; ModuleID = '/home/carl/AnghaBench/linux/arch/arm/mm/extr_pageattr.c_change_memory_common.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm/mm/extr_pageattr.c_change_memory_common.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.page_change_data = type { i8*, i8* }

@PAGE_MASK = common dso_local global i64 0, align 8
@PAGE_SIZE = common dso_local global i32 0, align 4
@MODULES_VADDR = common dso_local global i32 0, align 4
@MODULES_END = common dso_local global i32 0, align 4
@VMALLOC_START = common dso_local global i32 0, align 4
@VMALLOC_END = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@init_mm = common dso_local global i32 0, align 4
@change_page_range = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, i32, i8*, i8*)* @change_memory_common to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @change_memory_common(i64 %0, i32 %1, i8* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.page_change_data, align 8
  store i64 %0, i64* %6, align 8
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store i8* %3, i8** %9, align 8
  %15 = load i64, i64* %6, align 8
  %16 = load i64, i64* @PAGE_MASK, align 8
  %17 = and i64 %15, %16
  store i64 %17, i64* %10, align 8
  %18 = load i64, i64* %6, align 8
  %19 = call i32 @PAGE_ALIGN(i64 %18)
  %20 = load i32, i32* %7, align 4
  %21 = load i32, i32* @PAGE_SIZE, align 4
  %22 = mul nsw i32 %20, %21
  %23 = add nsw i32 %19, %22
  %24 = sext i32 %23 to i64
  store i64 %24, i64* %11, align 8
  %25 = load i64, i64* %11, align 8
  %26 = load i64, i64* %10, align 8
  %27 = sub i64 %25, %26
  store i64 %27, i64* %12, align 8
  %28 = load i64, i64* %10, align 8
  %29 = load i64, i64* %6, align 8
  %30 = icmp ne i64 %28, %29
  %31 = zext i1 %30 to i32
  %32 = call i32 @WARN_ON_ONCE(i32 %31)
  %33 = load i64, i64* %12, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %36, label %35

35:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %66

36:                                               ; preds = %4
  %37 = load i64, i64* %10, align 8
  %38 = load i64, i64* %12, align 8
  %39 = load i32, i32* @MODULES_VADDR, align 4
  %40 = load i32, i32* @MODULES_END, align 4
  %41 = call i32 @in_range(i64 %37, i64 %38, i32 %39, i32 %40)
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %53, label %43

43:                                               ; preds = %36
  %44 = load i64, i64* %10, align 8
  %45 = load i64, i64* %12, align 8
  %46 = load i32, i32* @VMALLOC_START, align 4
  %47 = load i32, i32* @VMALLOC_END, align 4
  %48 = call i32 @in_range(i64 %44, i64 %45, i32 %46, i32 %47)
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %53, label %50

50:                                               ; preds = %43
  %51 = load i32, i32* @EINVAL, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %5, align 4
  br label %66

53:                                               ; preds = %43, %36
  %54 = load i8*, i8** %8, align 8
  %55 = getelementptr inbounds %struct.page_change_data, %struct.page_change_data* %14, i32 0, i32 1
  store i8* %54, i8** %55, align 8
  %56 = load i8*, i8** %9, align 8
  %57 = getelementptr inbounds %struct.page_change_data, %struct.page_change_data* %14, i32 0, i32 0
  store i8* %56, i8** %57, align 8
  %58 = load i64, i64* %10, align 8
  %59 = load i64, i64* %12, align 8
  %60 = load i32, i32* @change_page_range, align 4
  %61 = call i32 @apply_to_page_range(i32* @init_mm, i64 %58, i64 %59, i32 %60, %struct.page_change_data* %14)
  store i32 %61, i32* %13, align 4
  %62 = load i64, i64* %10, align 8
  %63 = load i64, i64* %11, align 8
  %64 = call i32 @flush_tlb_kernel_range(i64 %62, i64 %63)
  %65 = load i32, i32* %13, align 4
  store i32 %65, i32* %5, align 4
  br label %66

66:                                               ; preds = %53, %50, %35
  %67 = load i32, i32* %5, align 4
  ret i32 %67
}

declare dso_local i32 @PAGE_ALIGN(i64) #1

declare dso_local i32 @WARN_ON_ONCE(i32) #1

declare dso_local i32 @in_range(i64, i64, i32, i32) #1

declare dso_local i32 @apply_to_page_range(i32*, i64, i64, i32, %struct.page_change_data*) #1

declare dso_local i32 @flush_tlb_kernel_range(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
