; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/extr_clk-stm32f4.c_stm32f4_rcc_lookup_clk.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/extr_clk-stm32f4.c_stm32f4_rcc_lookup_clk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk_hw = type { i32 }
%struct.of_phandle_args = type { i32* }

@EINVAL = common dso_local global i32 0, align 4
@clks = common dso_local global %struct.clk_hw** null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.clk_hw* (%struct.of_phandle_args*, i8*)* @stm32f4_rcc_lookup_clk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.clk_hw* @stm32f4_rcc_lookup_clk(%struct.of_phandle_args* %0, i8* %1) #0 {
  %3 = alloca %struct.clk_hw*, align 8
  %4 = alloca %struct.of_phandle_args*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  store %struct.of_phandle_args* %0, %struct.of_phandle_args** %4, align 8
  store i8* %1, i8** %5, align 8
  %7 = load %struct.of_phandle_args*, %struct.of_phandle_args** %4, align 8
  %8 = getelementptr inbounds %struct.of_phandle_args, %struct.of_phandle_args* %7, i32 0, i32 0
  %9 = load i32*, i32** %8, align 8
  %10 = getelementptr inbounds i32, i32* %9, i64 0
  %11 = load i32, i32* %10, align 4
  %12 = load %struct.of_phandle_args*, %struct.of_phandle_args** %4, align 8
  %13 = getelementptr inbounds %struct.of_phandle_args, %struct.of_phandle_args* %12, i32 0, i32 0
  %14 = load i32*, i32** %13, align 8
  %15 = getelementptr inbounds i32, i32* %14, i64 1
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @stm32f4_rcc_lookup_clk_idx(i32 %11, i32 %16)
  store i32 %17, i32* %6, align 4
  %18 = load i32, i32* %6, align 4
  %19 = icmp slt i32 %18, 0
  br i1 %19, label %20, label %24

20:                                               ; preds = %2
  %21 = load i32, i32* @EINVAL, align 4
  %22 = sub nsw i32 0, %21
  %23 = call %struct.clk_hw* @ERR_PTR(i32 %22)
  store %struct.clk_hw* %23, %struct.clk_hw** %3, align 8
  br label %30

24:                                               ; preds = %2
  %25 = load %struct.clk_hw**, %struct.clk_hw*** @clks, align 8
  %26 = load i32, i32* %6, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds %struct.clk_hw*, %struct.clk_hw** %25, i64 %27
  %29 = load %struct.clk_hw*, %struct.clk_hw** %28, align 8
  store %struct.clk_hw* %29, %struct.clk_hw** %3, align 8
  br label %30

30:                                               ; preds = %24, %20
  %31 = load %struct.clk_hw*, %struct.clk_hw** %3, align 8
  ret %struct.clk_hw* %31
}

declare dso_local i32 @stm32f4_rcc_lookup_clk_idx(i32, i32) #1

declare dso_local %struct.clk_hw* @ERR_PTR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
