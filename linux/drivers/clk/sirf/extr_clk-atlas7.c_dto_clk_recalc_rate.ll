; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/sirf/extr_clk-atlas7.c_dto_clk_recalc_rate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/sirf/extr_clk-atlas7.c_dto_clk_recalc_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk_hw = type { i32 }
%struct.clk_dto = type { i64, i64 }

@SIRFSOC_CLKC_AUDIO_DTO_DROFF = common dso_local global i64 0, align 8
@SIRFSOC_CLKC_AUDIO_DTO_SRC = common dso_local global i64 0, align 8
@DTO_RESL_NORMAL = common dso_local global i32 0, align 4
@DTO_RESL_DOUBLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.clk_hw*, i64)* @dto_clk_recalc_rate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @dto_clk_recalc_rate(%struct.clk_hw* %0, i64 %1) #0 {
  %3 = alloca %struct.clk_hw*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.clk_dto*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.clk_hw* %0, %struct.clk_hw** %3, align 8
  store i64 %1, i64* %4, align 8
  %9 = load i64, i64* %4, align 8
  %10 = trunc i64 %9 to i32
  store i32 %10, i32* %5, align 4
  %11 = load %struct.clk_hw*, %struct.clk_hw** %3, align 8
  %12 = call %struct.clk_dto* @to_dtoclk(%struct.clk_hw* %11)
  store %struct.clk_dto* %12, %struct.clk_dto** %6, align 8
  %13 = load %struct.clk_dto*, %struct.clk_dto** %6, align 8
  %14 = getelementptr inbounds %struct.clk_dto, %struct.clk_dto* %13, i32 0, i32 1
  %15 = load i64, i64* %14, align 8
  %16 = call i32 @clkc_readl(i64 %15)
  store i32 %16, i32* %7, align 4
  %17 = load %struct.clk_dto*, %struct.clk_dto** %6, align 8
  %18 = getelementptr inbounds %struct.clk_dto, %struct.clk_dto* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @SIRFSOC_CLKC_AUDIO_DTO_DROFF, align 8
  %21 = add nsw i64 %19, %20
  %22 = load i64, i64* @SIRFSOC_CLKC_AUDIO_DTO_SRC, align 8
  %23 = sub nsw i64 %21, %22
  %24 = call i32 @clkc_readl(i64 %23)
  store i32 %24, i32* %8, align 4
  %25 = load i32, i32* %7, align 4
  %26 = load i32, i32* %5, align 4
  %27 = mul nsw i32 %26, %25
  store i32 %27, i32* %5, align 4
  %28 = load i32, i32* %8, align 4
  %29 = call i32 @BIT(i32 0)
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %36

32:                                               ; preds = %2
  %33 = load i32, i32* %5, align 4
  %34 = load i32, i32* @DTO_RESL_NORMAL, align 4
  %35 = call i32 @do_div(i32 %33, i32 %34)
  br label %40

36:                                               ; preds = %2
  %37 = load i32, i32* %5, align 4
  %38 = load i32, i32* @DTO_RESL_DOUBLE, align 4
  %39 = call i32 @do_div(i32 %37, i32 %38)
  br label %40

40:                                               ; preds = %36, %32
  %41 = load i32, i32* %5, align 4
  %42 = sext i32 %41 to i64
  ret i64 %42
}

declare dso_local %struct.clk_dto* @to_dtoclk(%struct.clk_hw*) #1

declare dso_local i32 @clkc_readl(i64) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @do_div(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
