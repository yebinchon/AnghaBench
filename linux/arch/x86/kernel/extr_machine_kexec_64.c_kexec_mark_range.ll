; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kernel/extr_machine_kexec_64.c_kexec_mark_range.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kernel/extr_machine_kexec_64.c_kexec_mark_range.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.page = type { i32 }

@PAGE_SHIFT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, i64, i32)* @kexec_mark_range to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @kexec_mark_range(i64 %0, i64 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.page*, align 8
  %9 = alloca i32, align 4
  store i64 %0, i64* %5, align 8
  store i64 %1, i64* %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load i64, i64* %6, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %16

12:                                               ; preds = %3
  %13 = load i64, i64* %5, align 8
  %14 = load i64, i64* %6, align 8
  %15 = icmp ugt i64 %13, %14
  br i1 %15, label %16, label %17

16:                                               ; preds = %12, %3
  store i32 0, i32* %4, align 4
  br label %41

17:                                               ; preds = %12
  %18 = load i64, i64* %5, align 8
  %19 = load i64, i64* @PAGE_SHIFT, align 8
  %20 = lshr i64 %18, %19
  %21 = call %struct.page* @pfn_to_page(i64 %20)
  store %struct.page* %21, %struct.page** %8, align 8
  %22 = load i64, i64* %6, align 8
  %23 = load i64, i64* @PAGE_SHIFT, align 8
  %24 = lshr i64 %22, %23
  %25 = load i64, i64* %5, align 8
  %26 = load i64, i64* @PAGE_SHIFT, align 8
  %27 = lshr i64 %25, %26
  %28 = sub i64 %24, %27
  %29 = add i64 %28, 1
  %30 = trunc i64 %29 to i32
  store i32 %30, i32* %9, align 4
  %31 = load i32, i32* %7, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %37

33:                                               ; preds = %17
  %34 = load %struct.page*, %struct.page** %8, align 8
  %35 = load i32, i32* %9, align 4
  %36 = call i32 @set_pages_ro(%struct.page* %34, i32 %35)
  store i32 %36, i32* %4, align 4
  br label %41

37:                                               ; preds = %17
  %38 = load %struct.page*, %struct.page** %8, align 8
  %39 = load i32, i32* %9, align 4
  %40 = call i32 @set_pages_rw(%struct.page* %38, i32 %39)
  store i32 %40, i32* %4, align 4
  br label %41

41:                                               ; preds = %37, %33, %16
  %42 = load i32, i32* %4, align 4
  ret i32 %42
}

declare dso_local %struct.page* @pfn_to_page(i64) #1

declare dso_local i32 @set_pages_ro(%struct.page*, i32) #1

declare dso_local i32 @set_pages_rw(%struct.page*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
