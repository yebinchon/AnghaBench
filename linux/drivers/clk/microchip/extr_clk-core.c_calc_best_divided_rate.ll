; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/microchip/extr_clk-core.c_calc_best_divided_rate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/microchip/extr_clk-core.c_calc_best_divided_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i64, i64, i32, i32)* @calc_best_divided_rate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @calc_best_divided_rate(i64 %0, i64 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  store i64 %0, i64* %5, align 8
  store i64 %1, i64* %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %14 = load i64, i64* %6, align 8
  %15 = load i64, i64* %5, align 8
  %16 = udiv i64 %14, %15
  store i64 %16, i64* %12, align 8
  %17 = load i64, i64* %12, align 8
  %18 = load i32, i32* %8, align 4
  %19 = load i32, i32* %7, align 4
  %20 = call i64 @clamp_val(i64 %17, i32 %18, i32 %19)
  store i64 %20, i64* %12, align 8
  %21 = load i64, i64* %12, align 8
  %22 = add i64 %21, 1
  %23 = load i32, i32* %8, align 4
  %24 = load i32, i32* %7, align 4
  %25 = call i64 @clamp_val(i64 %22, i32 %23, i32 %24)
  store i64 %25, i64* %13, align 8
  %26 = load i64, i64* %6, align 8
  %27 = load i64, i64* %12, align 8
  %28 = udiv i64 %26, %27
  store i64 %28, i64* %9, align 8
  %29 = load i64, i64* %6, align 8
  %30 = load i64, i64* %13, align 8
  %31 = udiv i64 %29, %30
  store i64 %31, i64* %10, align 8
  %32 = load i64, i64* %5, align 8
  %33 = load i64, i64* %10, align 8
  %34 = sub i64 %32, %33
  %35 = call i64 @abs(i64 %34)
  %36 = load i64, i64* %5, align 8
  %37 = load i64, i64* %9, align 8
  %38 = sub i64 %36, %37
  %39 = call i64 @abs(i64 %38)
  %40 = icmp slt i64 %35, %39
  br i1 %40, label %41, label %43

41:                                               ; preds = %4
  %42 = load i64, i64* %10, align 8
  store i64 %42, i64* %11, align 8
  br label %45

43:                                               ; preds = %4
  %44 = load i64, i64* %9, align 8
  store i64 %44, i64* %11, align 8
  br label %45

45:                                               ; preds = %43, %41
  %46 = load i64, i64* %11, align 8
  ret i64 %46
}

declare dso_local i64 @clamp_val(i64, i32, i32) #1

declare dso_local i64 @abs(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
