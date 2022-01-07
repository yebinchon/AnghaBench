; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/mm/extr_mpx.c_mpx_unmapped_area_check.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/mm/extr_mpx.c_mpx_unmapped_area_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@current = common dso_local global %struct.TYPE_2__* null, align 8
@DEFAULT_MAP_WINDOW = common dso_local global i64 0, align 8
@MAP_FIXED = common dso_local global i64 0, align 8
@ENOMEM = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @mpx_unmapped_area_check(i64 %0, i64 %1, i64 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store i64 %0, i64* %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** @current, align 8
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = call i32 @kernel_managing_mpx_tables(i32 %10)
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %15, label %13

13:                                               ; preds = %3
  %14 = load i64, i64* %5, align 8
  store i64 %14, i64* %4, align 8
  br label %39

15:                                               ; preds = %3
  %16 = load i64, i64* %5, align 8
  %17 = load i64, i64* %6, align 8
  %18 = add i64 %16, %17
  %19 = load i64, i64* @DEFAULT_MAP_WINDOW, align 8
  %20 = icmp ule i64 %18, %19
  br i1 %20, label %21, label %23

21:                                               ; preds = %15
  %22 = load i64, i64* %5, align 8
  store i64 %22, i64* %4, align 8
  br label %39

23:                                               ; preds = %15
  %24 = load i64, i64* %7, align 8
  %25 = load i64, i64* @MAP_FIXED, align 8
  %26 = and i64 %24, %25
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %23
  %29 = load i64, i64* @ENOMEM, align 8
  %30 = sub i64 0, %29
  store i64 %30, i64* %4, align 8
  br label %39

31:                                               ; preds = %23
  %32 = load i64, i64* %6, align 8
  %33 = load i64, i64* @DEFAULT_MAP_WINDOW, align 8
  %34 = icmp ugt i64 %32, %33
  br i1 %34, label %35, label %38

35:                                               ; preds = %31
  %36 = load i64, i64* @ENOMEM, align 8
  %37 = sub i64 0, %36
  store i64 %37, i64* %4, align 8
  br label %39

38:                                               ; preds = %31
  store i64 0, i64* %4, align 8
  br label %39

39:                                               ; preds = %38, %35, %28, %21, %13
  %40 = load i64, i64* %4, align 8
  ret i64 %40
}

declare dso_local i32 @kernel_managing_mpx_tables(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
