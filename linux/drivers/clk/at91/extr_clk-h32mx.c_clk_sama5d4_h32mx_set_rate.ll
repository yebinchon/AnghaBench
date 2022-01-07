; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/at91/extr_clk-h32mx.c_clk_sama5d4_h32mx_set_rate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/at91/extr_clk-h32mx.c_clk_sama5d4_h32mx_set_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk_hw = type { i32 }
%struct.clk_sama5d4_h32mx = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@AT91_PMC_H32MXDIV = common dso_local global i32 0, align 4
@AT91_PMC_MCKR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.clk_hw*, i64, i64)* @clk_sama5d4_h32mx_set_rate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @clk_sama5d4_h32mx_set_rate(%struct.clk_hw* %0, i64 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.clk_hw*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.clk_sama5d4_h32mx*, align 8
  %9 = alloca i32, align 4
  store %struct.clk_hw* %0, %struct.clk_hw** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  %10 = load %struct.clk_hw*, %struct.clk_hw** %5, align 8
  %11 = call %struct.clk_sama5d4_h32mx* @to_clk_sama5d4_h32mx(%struct.clk_hw* %10)
  store %struct.clk_sama5d4_h32mx* %11, %struct.clk_sama5d4_h32mx** %8, align 8
  store i32 0, i32* %9, align 4
  %12 = load i64, i64* %7, align 8
  %13 = load i64, i64* %6, align 8
  %14 = icmp ne i64 %12, %13
  br i1 %14, label %15, label %23

15:                                               ; preds = %3
  %16 = load i64, i64* %7, align 8
  %17 = udiv i64 %16, 2
  %18 = load i64, i64* %6, align 8
  %19 = icmp ne i64 %17, %18
  br i1 %19, label %20, label %23

20:                                               ; preds = %15
  %21 = load i32, i32* @EINVAL, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %4, align 4
  br label %38

23:                                               ; preds = %15, %3
  %24 = load i64, i64* %7, align 8
  %25 = udiv i64 %24, 2
  %26 = load i64, i64* %6, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %28, label %30

28:                                               ; preds = %23
  %29 = load i32, i32* @AT91_PMC_H32MXDIV, align 4
  store i32 %29, i32* %9, align 4
  br label %30

30:                                               ; preds = %28, %23
  %31 = load %struct.clk_sama5d4_h32mx*, %struct.clk_sama5d4_h32mx** %8, align 8
  %32 = getelementptr inbounds %struct.clk_sama5d4_h32mx, %struct.clk_sama5d4_h32mx* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* @AT91_PMC_MCKR, align 4
  %35 = load i32, i32* @AT91_PMC_H32MXDIV, align 4
  %36 = load i32, i32* %9, align 4
  %37 = call i32 @regmap_update_bits(i32 %33, i32 %34, i32 %35, i32 %36)
  store i32 0, i32* %4, align 4
  br label %38

38:                                               ; preds = %30, %20
  %39 = load i32, i32* %4, align 4
  ret i32 %39
}

declare dso_local %struct.clk_sama5d4_h32mx* @to_clk_sama5d4_h32mx(%struct.clk_hw*) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
