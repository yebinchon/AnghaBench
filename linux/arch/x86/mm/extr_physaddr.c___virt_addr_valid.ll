; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/mm/extr_physaddr.c___virt_addr_valid.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/mm/extr_physaddr.c___virt_addr_valid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PAGE_OFFSET = common dso_local global i64 0, align 8
@__vmalloc_start_set = common dso_local global i64 0, align 8
@FIXADDR_START = common dso_local global i64 0, align 8
@PAGE_SHIFT = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @__virt_addr_valid(i64 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  %4 = load i64, i64* %3, align 8
  %5 = load i64, i64* @PAGE_OFFSET, align 8
  %6 = icmp ult i64 %4, %5
  br i1 %6, label %7, label %8

7:                                                ; preds = %1
  store i32 0, i32* %2, align 4
  br label %29

8:                                                ; preds = %1
  %9 = load i64, i64* @__vmalloc_start_set, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %17

11:                                               ; preds = %8
  %12 = load i64, i64* %3, align 8
  %13 = inttoptr i64 %12 to i8*
  %14 = call i64 @is_vmalloc_addr(i8* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %11
  store i32 0, i32* %2, align 4
  br label %29

17:                                               ; preds = %11, %8
  %18 = load i64, i64* %3, align 8
  %19 = load i64, i64* @FIXADDR_START, align 8
  %20 = icmp uge i64 %18, %19
  br i1 %20, label %21, label %22

21:                                               ; preds = %17
  store i32 0, i32* %2, align 4
  br label %29

22:                                               ; preds = %17
  %23 = load i64, i64* %3, align 8
  %24 = load i64, i64* @PAGE_OFFSET, align 8
  %25 = sub i64 %23, %24
  %26 = load i64, i64* @PAGE_SHIFT, align 8
  %27 = lshr i64 %25, %26
  %28 = call i32 @pfn_valid(i64 %27)
  store i32 %28, i32* %2, align 4
  br label %29

29:                                               ; preds = %22, %21, %16, %7
  %30 = load i32, i32* %2, align 4
  ret i32 %30
}

declare dso_local i64 @is_vmalloc_addr(i8*) #1

declare dso_local i32 @pfn_valid(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
