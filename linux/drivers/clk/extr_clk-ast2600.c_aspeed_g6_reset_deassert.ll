; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/extr_clk-ast2600.c_aspeed_g6_reset_deassert.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/extr_clk-ast2600.c_aspeed_g6_reset_deassert.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.reset_controller_dev = type { i32 }
%struct.aspeed_reset = type { i32 }

@ASPEED_G6_RESET_CTRL2 = common dso_local global i64 0, align 8
@ASPEED_G6_RESET_CTRL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.reset_controller_dev*, i64)* @aspeed_g6_reset_deassert to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @aspeed_g6_reset_deassert(%struct.reset_controller_dev* %0, i64 %1) #0 {
  %3 = alloca %struct.reset_controller_dev*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.aspeed_reset*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store %struct.reset_controller_dev* %0, %struct.reset_controller_dev** %3, align 8
  store i64 %1, i64* %4, align 8
  %8 = load %struct.reset_controller_dev*, %struct.reset_controller_dev** %3, align 8
  %9 = call %struct.aspeed_reset* @to_aspeed_reset(%struct.reset_controller_dev* %8)
  store %struct.aspeed_reset* %9, %struct.aspeed_reset** %5, align 8
  %10 = load i64, i64* %4, align 8
  %11 = call i64 @get_bit(i64 %10)
  store i64 %11, i64* %6, align 8
  %12 = load i64, i64* %4, align 8
  %13 = icmp uge i64 %12, 32
  br i1 %13, label %14, label %16

14:                                               ; preds = %2
  %15 = load i64, i64* @ASPEED_G6_RESET_CTRL2, align 8
  br label %18

16:                                               ; preds = %2
  %17 = load i64, i64* @ASPEED_G6_RESET_CTRL, align 8
  br label %18

18:                                               ; preds = %16, %14
  %19 = phi i64 [ %15, %14 ], [ %17, %16 ]
  store i64 %19, i64* %7, align 8
  %20 = load %struct.aspeed_reset*, %struct.aspeed_reset** %5, align 8
  %21 = getelementptr inbounds %struct.aspeed_reset, %struct.aspeed_reset* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i64, i64* %7, align 8
  %24 = add nsw i64 %23, 4
  %25 = load i64, i64* %6, align 8
  %26 = call i32 @regmap_write(i32 %22, i64 %24, i64 %25)
  ret i32 %26
}

declare dso_local %struct.aspeed_reset* @to_aspeed_reset(%struct.reset_controller_dev*) #1

declare dso_local i64 @get_bit(i64) #1

declare dso_local i32 @regmap_write(i32, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
