; ModuleID = '/home/carl/AnghaBench/linux/arch/s390/kernel/extr_suspend.c_pfn_is_nosave.c'
source_filename = "/home/carl/AnghaBench/linux/arch/s390/kernel/extr_suspend.c_pfn_is_nosave.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@__nosave_begin = common dso_local global i32 0, align 4
@__nosave_end = common dso_local global i32 0, align 4
@__end_rodata = common dso_local global i32* null, align 8
@_stext = common dso_local global i32* null, align 8
@LC_PAGES = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pfn_is_nosave(i64 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  %8 = call i32 @__pa(i32* @__nosave_begin)
  %9 = call i32 @PFN_DOWN(i32 %8)
  %10 = sext i32 %9 to i64
  store i64 %10, i64* %4, align 8
  %11 = call i32 @__pa(i32* @__nosave_end)
  %12 = call i32 @PFN_DOWN(i32 %11)
  %13 = sext i32 %12 to i64
  store i64 %13, i64* %5, align 8
  %14 = load i32*, i32** @__end_rodata, align 8
  %15 = call i32 @__pa(i32* %14)
  %16 = call i32 @PFN_DOWN(i32 %15)
  %17 = sub nsw i32 %16, 1
  %18 = sext i32 %17 to i64
  store i64 %18, i64* %6, align 8
  %19 = load i32*, i32** @_stext, align 8
  %20 = call i32 @__pa(i32* %19)
  %21 = call i32 @PFN_DOWN(i32 %20)
  %22 = sext i32 %21 to i64
  store i64 %22, i64* %7, align 8
  %23 = load i64, i64* %3, align 8
  %24 = load i64, i64* @LC_PAGES, align 8
  %25 = icmp ule i64 %23, %24
  br i1 %25, label %26, label %27

26:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %52

27:                                               ; preds = %1
  %28 = load i64, i64* %3, align 8
  %29 = load i64, i64* %4, align 8
  %30 = icmp uge i64 %28, %29
  br i1 %30, label %31, label %36

31:                                               ; preds = %27
  %32 = load i64, i64* %3, align 8
  %33 = load i64, i64* %5, align 8
  %34 = icmp ult i64 %32, %33
  br i1 %34, label %35, label %36

35:                                               ; preds = %31
  store i32 1, i32* %2, align 4
  br label %52

36:                                               ; preds = %31, %27
  %37 = load i64, i64* %3, align 8
  %38 = load i64, i64* %7, align 8
  %39 = icmp uge i64 %37, %38
  br i1 %39, label %40, label %45

40:                                               ; preds = %36
  %41 = load i64, i64* %3, align 8
  %42 = load i64, i64* %6, align 8
  %43 = icmp ule i64 %41, %42
  br i1 %43, label %44, label %45

44:                                               ; preds = %40
  store i32 0, i32* %2, align 4
  br label %52

45:                                               ; preds = %40, %36
  %46 = load i64, i64* %3, align 8
  %47 = call i32 @PFN_PHYS(i64 %46)
  %48 = call i64 @tprot(i32 %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %45
  store i32 1, i32* %2, align 4
  br label %52

51:                                               ; preds = %45
  store i32 0, i32* %2, align 4
  br label %52

52:                                               ; preds = %51, %50, %44, %35, %26
  %53 = load i32, i32* %2, align 4
  ret i32 %53
}

declare dso_local i32 @PFN_DOWN(i32) #1

declare dso_local i32 @__pa(i32*) #1

declare dso_local i64 @tprot(i32) #1

declare dso_local i32 @PFN_PHYS(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
