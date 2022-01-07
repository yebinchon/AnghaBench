; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/sunxi-ng/extr_ccu_gate.c_ccu_gate_round_rate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/sunxi-ng/extr_ccu_gate.c_ccu_gate_round_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk_hw = type { i32 }
%struct.ccu_gate = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }

@CCU_FEATURE_ALL_PREDIV = common dso_local global i32 0, align 4
@CLK_SET_RATE_PARENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.clk_hw*, i64, i64*)* @ccu_gate_round_rate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ccu_gate_round_rate(%struct.clk_hw* %0, i64 %1, i64* %2) #0 {
  %4 = alloca %struct.clk_hw*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64*, align 8
  %7 = alloca %struct.ccu_gate*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  store %struct.clk_hw* %0, %struct.clk_hw** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64* %2, i64** %6, align 8
  %10 = load %struct.clk_hw*, %struct.clk_hw** %4, align 8
  %11 = call %struct.ccu_gate* @hw_to_ccu_gate(%struct.clk_hw* %10)
  store %struct.ccu_gate* %11, %struct.ccu_gate** %7, align 8
  store i32 1, i32* %8, align 4
  %12 = load %struct.ccu_gate*, %struct.ccu_gate** %7, align 8
  %13 = getelementptr inbounds %struct.ccu_gate, %struct.ccu_gate* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @CCU_FEATURE_ALL_PREDIV, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %24

19:                                               ; preds = %3
  %20 = load %struct.ccu_gate*, %struct.ccu_gate** %7, align 8
  %21 = getelementptr inbounds %struct.ccu_gate, %struct.ccu_gate* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  store i32 %23, i32* %8, align 4
  br label %24

24:                                               ; preds = %19, %3
  %25 = load %struct.clk_hw*, %struct.clk_hw** %4, align 8
  %26 = call i32 @clk_hw_get_flags(%struct.clk_hw* %25)
  %27 = load i32, i32* @CLK_SET_RATE_PARENT, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %50

30:                                               ; preds = %24
  %31 = load i64, i64* %5, align 8
  store i64 %31, i64* %9, align 8
  %32 = load %struct.ccu_gate*, %struct.ccu_gate** %7, align 8
  %33 = getelementptr inbounds %struct.ccu_gate, %struct.ccu_gate* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @CCU_FEATURE_ALL_PREDIV, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %44

39:                                               ; preds = %30
  %40 = load i32, i32* %8, align 4
  %41 = sext i32 %40 to i64
  %42 = load i64, i64* %9, align 8
  %43 = mul i64 %42, %41
  store i64 %43, i64* %9, align 8
  br label %44

44:                                               ; preds = %39, %30
  %45 = load %struct.clk_hw*, %struct.clk_hw** %4, align 8
  %46 = call i32 @clk_hw_get_parent(%struct.clk_hw* %45)
  %47 = load i64, i64* %9, align 8
  %48 = call i64 @clk_hw_round_rate(i32 %46, i64 %47)
  %49 = load i64*, i64** %6, align 8
  store i64 %48, i64* %49, align 8
  br label %50

50:                                               ; preds = %44, %24
  %51 = load i64*, i64** %6, align 8
  %52 = load i64, i64* %51, align 8
  %53 = load i32, i32* %8, align 4
  %54 = sext i32 %53 to i64
  %55 = udiv i64 %52, %54
  ret i64 %55
}

declare dso_local %struct.ccu_gate* @hw_to_ccu_gate(%struct.clk_hw*) #1

declare dso_local i32 @clk_hw_get_flags(%struct.clk_hw*) #1

declare dso_local i64 @clk_hw_round_rate(i32, i64) #1

declare dso_local i32 @clk_hw_get_parent(%struct.clk_hw*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
