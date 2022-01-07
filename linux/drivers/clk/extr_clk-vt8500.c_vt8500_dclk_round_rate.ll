; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/extr_clk-vt8500.c_vt8500_dclk_round_rate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/extr_clk-vt8500.c_vt8500_dclk_round_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk_hw = type { i32 }
%struct.clk_device = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.clk_hw*, i64, i64*)* @vt8500_dclk_round_rate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @vt8500_dclk_round_rate(%struct.clk_hw* %0, i64 %1, i64* %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.clk_hw*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64*, align 8
  %8 = alloca %struct.clk_device*, align 8
  %9 = alloca i64, align 8
  store %struct.clk_hw* %0, %struct.clk_hw** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64* %2, i64** %7, align 8
  %10 = load %struct.clk_hw*, %struct.clk_hw** %5, align 8
  %11 = call %struct.clk_device* @to_clk_device(%struct.clk_hw* %10)
  store %struct.clk_device* %11, %struct.clk_device** %8, align 8
  %12 = load i64, i64* %6, align 8
  %13 = icmp eq i64 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %3
  store i64 0, i64* %4, align 8
  br label %47

15:                                               ; preds = %3
  %16 = load i64*, i64** %7, align 8
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* %6, align 8
  %19 = udiv i64 %17, %18
  store i64 %19, i64* %9, align 8
  %20 = load i64, i64* %6, align 8
  %21 = load i64, i64* %9, align 8
  %22 = mul i64 %20, %21
  %23 = load i64*, i64** %7, align 8
  %24 = load i64, i64* %23, align 8
  %25 = icmp ult i64 %22, %24
  br i1 %25, label %26, label %29

26:                                               ; preds = %15
  %27 = load i64, i64* %9, align 8
  %28 = add i64 %27, 1
  store i64 %28, i64* %9, align 8
  br label %29

29:                                               ; preds = %26, %15
  %30 = load %struct.clk_device*, %struct.clk_device** %8, align 8
  %31 = getelementptr inbounds %struct.clk_device, %struct.clk_device* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = icmp eq i32 %32, 63
  br i1 %33, label %34, label %42

34:                                               ; preds = %29
  %35 = load i64, i64* %9, align 8
  %36 = icmp ugt i64 %35, 31
  br i1 %36, label %37, label %42

37:                                               ; preds = %34
  %38 = load i64, i64* %9, align 8
  %39 = udiv i64 %38, 64
  %40 = add i64 %39, 1
  %41 = mul i64 64, %40
  store i64 %41, i64* %9, align 8
  br label %42

42:                                               ; preds = %37, %34, %29
  %43 = load i64*, i64** %7, align 8
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* %9, align 8
  %46 = udiv i64 %44, %45
  store i64 %46, i64* %4, align 8
  br label %47

47:                                               ; preds = %42, %14
  %48 = load i64, i64* %4, align 8
  ret i64 %48
}

declare dso_local %struct.clk_device* @to_clk_device(%struct.clk_hw*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
