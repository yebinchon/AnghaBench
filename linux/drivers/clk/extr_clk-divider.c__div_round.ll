; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/extr_clk-divider.c__div_round.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/extr_clk-divider.c__div_round.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk_div_table = type { i32 }

@CLK_DIVIDER_ROUND_CLOSEST = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.clk_div_table*, i64, i64, i64)* @_div_round to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_div_round(%struct.clk_div_table* %0, i64 %1, i64 %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.clk_div_table*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store %struct.clk_div_table* %0, %struct.clk_div_table** %6, align 8
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @CLK_DIVIDER_ROUND_CLOSEST, align 8
  %12 = and i64 %10, %11
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %20

14:                                               ; preds = %4
  %15 = load %struct.clk_div_table*, %struct.clk_div_table** %6, align 8
  %16 = load i64, i64* %7, align 8
  %17 = load i64, i64* %8, align 8
  %18 = load i64, i64* %9, align 8
  %19 = call i32 @_div_round_closest(%struct.clk_div_table* %15, i64 %16, i64 %17, i64 %18)
  store i32 %19, i32* %5, align 4
  br label %26

20:                                               ; preds = %4
  %21 = load %struct.clk_div_table*, %struct.clk_div_table** %6, align 8
  %22 = load i64, i64* %7, align 8
  %23 = load i64, i64* %8, align 8
  %24 = load i64, i64* %9, align 8
  %25 = call i32 @_div_round_up(%struct.clk_div_table* %21, i64 %22, i64 %23, i64 %24)
  store i32 %25, i32* %5, align 4
  br label %26

26:                                               ; preds = %20, %14
  %27 = load i32, i32* %5, align 4
  ret i32 %27
}

declare dso_local i32 @_div_round_closest(%struct.clk_div_table*, i64, i64, i64) #1

declare dso_local i32 @_div_round_up(%struct.clk_div_table*, i64, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
