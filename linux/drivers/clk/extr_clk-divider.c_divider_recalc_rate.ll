; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/extr_clk-divider.c_divider_recalc_rate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/extr_clk-divider.c_divider_recalc_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk_hw = type { i32 }
%struct.clk_div_table = type { i32 }

@CLK_DIVIDER_ALLOW_ZERO = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [53 x i8] c"%s: Zero divisor and CLK_DIVIDER_ALLOW_ZERO not set\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @divider_recalc_rate(%struct.clk_hw* %0, i64 %1, i32 %2, %struct.clk_div_table* %3, i64 %4, i64 %5) #0 {
  %7 = alloca i64, align 8
  %8 = alloca %struct.clk_hw*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.clk_div_table*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  store %struct.clk_hw* %0, %struct.clk_hw** %8, align 8
  store i64 %1, i64* %9, align 8
  store i32 %2, i32* %10, align 4
  store %struct.clk_div_table* %3, %struct.clk_div_table** %11, align 8
  store i64 %4, i64* %12, align 8
  store i64 %5, i64* %13, align 8
  %15 = load %struct.clk_div_table*, %struct.clk_div_table** %11, align 8
  %16 = load i32, i32* %10, align 4
  %17 = load i64, i64* %12, align 8
  %18 = load i64, i64* %13, align 8
  %19 = call i32 @_get_div(%struct.clk_div_table* %15, i32 %16, i64 %17, i64 %18)
  store i32 %19, i32* %14, align 4
  %20 = load i32, i32* %14, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %33, label %22

22:                                               ; preds = %6
  %23 = load i64, i64* %12, align 8
  %24 = load i64, i64* @CLK_DIVIDER_ALLOW_ZERO, align 8
  %25 = and i64 %23, %24
  %26 = icmp ne i64 %25, 0
  %27 = xor i1 %26, true
  %28 = zext i1 %27 to i32
  %29 = load %struct.clk_hw*, %struct.clk_hw** %8, align 8
  %30 = call i32 @clk_hw_get_name(%struct.clk_hw* %29)
  %31 = call i32 @WARN(i32 %28, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str, i64 0, i64 0), i32 %30)
  %32 = load i64, i64* %9, align 8
  store i64 %32, i64* %7, align 8
  br label %38

33:                                               ; preds = %6
  %34 = load i64, i64* %9, align 8
  %35 = trunc i64 %34 to i32
  %36 = load i32, i32* %14, align 4
  %37 = call i64 @DIV_ROUND_UP_ULL(i32 %35, i32 %36)
  store i64 %37, i64* %7, align 8
  br label %38

38:                                               ; preds = %33, %22
  %39 = load i64, i64* %7, align 8
  ret i64 %39
}

declare dso_local i32 @_get_div(%struct.clk_div_table*, i32, i64, i64) #1

declare dso_local i32 @WARN(i32, i8*, i32) #1

declare dso_local i32 @clk_hw_get_name(%struct.clk_hw*) #1

declare dso_local i64 @DIV_ROUND_UP_ULL(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
