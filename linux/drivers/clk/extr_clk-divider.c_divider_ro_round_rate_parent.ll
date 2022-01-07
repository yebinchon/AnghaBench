; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/extr_clk-divider.c_divider_ro_round_rate_parent.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/extr_clk-divider.c_divider_ro_round_rate_parent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk_hw = type { i32 }
%struct.clk_div_table = type { i32 }

@CLK_SET_RATE_PARENT = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @divider_ro_round_rate_parent(%struct.clk_hw* %0, %struct.clk_hw* %1, i64 %2, i64* %3, %struct.clk_div_table* %4, i32 %5, i64 %6, i32 %7) #0 {
  %9 = alloca i64, align 8
  %10 = alloca %struct.clk_hw*, align 8
  %11 = alloca %struct.clk_hw*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64*, align 8
  %14 = alloca %struct.clk_div_table*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.clk_hw* %0, %struct.clk_hw** %10, align 8
  store %struct.clk_hw* %1, %struct.clk_hw** %11, align 8
  store i64 %2, i64* %12, align 8
  store i64* %3, i64** %13, align 8
  store %struct.clk_div_table* %4, %struct.clk_div_table** %14, align 8
  store i32 %5, i32* %15, align 4
  store i64 %6, i64* %16, align 8
  store i32 %7, i32* %17, align 4
  %19 = load %struct.clk_div_table*, %struct.clk_div_table** %14, align 8
  %20 = load i32, i32* %17, align 4
  %21 = load i64, i64* %16, align 8
  %22 = load i32, i32* %15, align 4
  %23 = call i32 @_get_div(%struct.clk_div_table* %19, i32 %20, i64 %21, i32 %22)
  store i32 %23, i32* %18, align 4
  %24 = load %struct.clk_hw*, %struct.clk_hw** %10, align 8
  %25 = call i32 @clk_hw_get_flags(%struct.clk_hw* %24)
  %26 = load i32, i32* @CLK_SET_RATE_PARENT, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %43

29:                                               ; preds = %8
  %30 = load %struct.clk_hw*, %struct.clk_hw** %11, align 8
  %31 = icmp ne %struct.clk_hw* %30, null
  br i1 %31, label %35, label %32

32:                                               ; preds = %29
  %33 = load i64, i64* @EINVAL, align 8
  %34 = sub nsw i64 0, %33
  store i64 %34, i64* %9, align 8
  br label %49

35:                                               ; preds = %29
  %36 = load %struct.clk_hw*, %struct.clk_hw** %11, align 8
  %37 = load i64, i64* %12, align 8
  %38 = load i32, i32* %18, align 4
  %39 = sext i32 %38 to i64
  %40 = mul i64 %37, %39
  %41 = call i64 @clk_hw_round_rate(%struct.clk_hw* %36, i64 %40)
  %42 = load i64*, i64** %13, align 8
  store i64 %41, i64* %42, align 8
  br label %43

43:                                               ; preds = %35, %8
  %44 = load i64*, i64** %13, align 8
  %45 = load i64, i64* %44, align 8
  %46 = trunc i64 %45 to i32
  %47 = load i32, i32* %18, align 4
  %48 = call i64 @DIV_ROUND_UP_ULL(i32 %46, i32 %47)
  store i64 %48, i64* %9, align 8
  br label %49

49:                                               ; preds = %43, %32
  %50 = load i64, i64* %9, align 8
  ret i64 %50
}

declare dso_local i32 @_get_div(%struct.clk_div_table*, i32, i64, i32) #1

declare dso_local i32 @clk_hw_get_flags(%struct.clk_hw*) #1

declare dso_local i64 @clk_hw_round_rate(%struct.clk_hw*, i64) #1

declare dso_local i64 @DIV_ROUND_UP_ULL(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
