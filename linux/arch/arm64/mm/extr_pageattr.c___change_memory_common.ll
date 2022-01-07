; ModuleID = '/home/carl/AnghaBench/linux/arch/arm64/mm/extr_pageattr.c___change_memory_common.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm64/mm/extr_pageattr.c___change_memory_common.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.page_change_data = type { i8*, i8* }

@init_mm = common dso_local global i32 0, align 4
@change_page_range = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, i64, i8*, i8*)* @__change_memory_common to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__change_memory_common(i64 %0, i64 %1, i8* %2, i8* %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.page_change_data, align 8
  %10 = alloca i32, align 4
  store i64 %0, i64* %5, align 8
  store i64 %1, i64* %6, align 8
  store i8* %2, i8** %7, align 8
  store i8* %3, i8** %8, align 8
  %11 = load i8*, i8** %7, align 8
  %12 = getelementptr inbounds %struct.page_change_data, %struct.page_change_data* %9, i32 0, i32 1
  store i8* %11, i8** %12, align 8
  %13 = load i8*, i8** %8, align 8
  %14 = getelementptr inbounds %struct.page_change_data, %struct.page_change_data* %9, i32 0, i32 0
  store i8* %13, i8** %14, align 8
  %15 = load i64, i64* %5, align 8
  %16 = load i64, i64* %6, align 8
  %17 = load i32, i32* @change_page_range, align 4
  %18 = call i32 @apply_to_page_range(i32* @init_mm, i64 %15, i64 %16, i32 %17, %struct.page_change_data* %9)
  store i32 %18, i32* %10, align 4
  %19 = load i64, i64* %5, align 8
  %20 = load i64, i64* %5, align 8
  %21 = load i64, i64* %6, align 8
  %22 = add i64 %20, %21
  %23 = call i32 @flush_tlb_kernel_range(i64 %19, i64 %22)
  %24 = load i32, i32* %10, align 4
  ret i32 %24
}

declare dso_local i32 @apply_to_page_range(i32*, i64, i64, i32, %struct.page_change_data*) #1

declare dso_local i32 @flush_tlb_kernel_range(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
