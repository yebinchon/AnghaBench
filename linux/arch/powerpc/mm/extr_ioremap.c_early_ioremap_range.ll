; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/mm/extr_ioremap.c_early_ioremap_range.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/mm/extr_ioremap.c_early_ioremap_range.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PAGE_SIZE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @early_ioremap_range(i64 %0, i64 %1, i64 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store i64 %0, i64* %6, align 8
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store i32 %3, i32* %9, align 4
  store i64 0, i64* %10, align 8
  br label %12

12:                                               ; preds = %31, %4
  %13 = load i64, i64* %10, align 8
  %14 = load i64, i64* %8, align 8
  %15 = icmp ult i64 %13, %14
  br i1 %15, label %16, label %35

16:                                               ; preds = %12
  %17 = load i64, i64* %6, align 8
  %18 = load i64, i64* %10, align 8
  %19 = add i64 %17, %18
  %20 = load i64, i64* %7, align 8
  %21 = load i64, i64* %10, align 8
  %22 = add i64 %20, %21
  %23 = load i32, i32* %9, align 4
  %24 = call i32 @map_kernel_page(i64 %19, i64 %22, i32 %23)
  store i32 %24, i32* %11, align 4
  %25 = load i32, i32* %11, align 4
  %26 = call i64 @WARN_ON_ONCE(i32 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %16
  %29 = load i32, i32* %11, align 4
  store i32 %29, i32* %5, align 4
  br label %36

30:                                               ; preds = %16
  br label %31

31:                                               ; preds = %30
  %32 = load i64, i64* @PAGE_SIZE, align 8
  %33 = load i64, i64* %10, align 8
  %34 = add i64 %33, %32
  store i64 %34, i64* %10, align 8
  br label %12

35:                                               ; preds = %12
  store i32 0, i32* %5, align 4
  br label %36

36:                                               ; preds = %35, %28
  %37 = load i32, i32* %5, align 4
  ret i32 %37
}

declare dso_local i32 @map_kernel_page(i64, i64, i32) #1

declare dso_local i64 @WARN_ON_ONCE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
