; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/extr_clk-si5341.c_si5341_clk_recalc_rate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/extr_clk-si5341.c_si5341_clk_recalc_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk_hw = type { i32 }
%struct.clk_si5341 = type { i32, i32 }

@SI5341_PLL_M_NUM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.clk_hw*, i64)* @si5341_clk_recalc_rate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @si5341_clk_recalc_rate(%struct.clk_hw* %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.clk_hw*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.clk_si5341*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.clk_hw* %0, %struct.clk_hw** %4, align 8
  store i64 %1, i64* %5, align 8
  %12 = load %struct.clk_hw*, %struct.clk_hw** %4, align 8
  %13 = call %struct.clk_si5341* @to_clk_si5341(%struct.clk_hw* %12)
  store %struct.clk_si5341* %13, %struct.clk_si5341** %6, align 8
  %14 = load %struct.clk_si5341*, %struct.clk_si5341** %6, align 8
  %15 = getelementptr inbounds %struct.clk_si5341, %struct.clk_si5341* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @SI5341_PLL_M_NUM, align 4
  %18 = call i32 @si5341_decode_44_32(i32 %16, i32 %17, i32* %9, i32* %10)
  store i32 %18, i32* %7, align 4
  %19 = load i32, i32* %7, align 4
  %20 = icmp slt i32 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %2
  store i64 0, i64* %3, align 8
  br label %59

22:                                               ; preds = %2
  %23 = load i32, i32* %9, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %22
  %26 = load i32, i32* %10, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %29, label %28

28:                                               ; preds = %25, %22
  store i64 0, i64* %3, align 8
  br label %59

29:                                               ; preds = %25
  store i32 0, i32* %11, align 4
  %30 = load i32, i32* %9, align 4
  store i32 %30, i32* %8, align 4
  br label %31

31:                                               ; preds = %36, %29
  %32 = load i32, i32* %8, align 4
  %33 = sext i32 %32 to i64
  %34 = and i64 %33, 281470681743360
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %41

36:                                               ; preds = %31
  %37 = load i32, i32* %11, align 4
  %38 = add i32 %37, 1
  store i32 %38, i32* %11, align 4
  %39 = load i32, i32* %8, align 4
  %40 = ashr i32 %39, 1
  store i32 %40, i32* %8, align 4
  br label %31

41:                                               ; preds = %31
  %42 = load i64, i64* %5, align 8
  %43 = load i32, i32* %8, align 4
  %44 = sext i32 %43 to i64
  %45 = mul i64 %44, %42
  %46 = trunc i64 %45 to i32
  store i32 %46, i32* %8, align 4
  %47 = load i32, i32* %8, align 4
  %48 = load i32, i32* %10, align 4
  %49 = load i32, i32* %11, align 4
  %50 = lshr i32 %48, %49
  %51 = call i32 @do_div(i32 %47, i32 %50)
  %52 = load i32, i32* %8, align 4
  %53 = load %struct.clk_si5341*, %struct.clk_si5341** %6, align 8
  %54 = getelementptr inbounds %struct.clk_si5341, %struct.clk_si5341* %53, i32 0, i32 0
  store i32 %52, i32* %54, align 4
  %55 = load i32, i32* %8, align 4
  %56 = call i32 @do_div(i32 %55, i32 1000)
  %57 = load i32, i32* %8, align 4
  %58 = sext i32 %57 to i64
  store i64 %58, i64* %3, align 8
  br label %59

59:                                               ; preds = %41, %28, %21
  %60 = load i64, i64* %3, align 8
  ret i64 %60
}

declare dso_local %struct.clk_si5341* @to_clk_si5341(%struct.clk_hw*) #1

declare dso_local i32 @si5341_decode_44_32(i32, i32, i32*, i32*) #1

declare dso_local i32 @do_div(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
