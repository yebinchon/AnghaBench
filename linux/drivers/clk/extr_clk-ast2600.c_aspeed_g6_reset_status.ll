; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/extr_clk-ast2600.c_aspeed_g6_reset_status.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/extr_clk-ast2600.c_aspeed_g6_reset_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.reset_controller_dev = type { i32 }
%struct.aspeed_reset = type { i32 }

@ASPEED_G6_RESET_CTRL2 = common dso_local global i32 0, align 4
@ASPEED_G6_RESET_CTRL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.reset_controller_dev*, i64)* @aspeed_g6_reset_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @aspeed_g6_reset_status(%struct.reset_controller_dev* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.reset_controller_dev*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.aspeed_reset*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.reset_controller_dev* %0, %struct.reset_controller_dev** %4, align 8
  store i64 %1, i64* %5, align 8
  %11 = load %struct.reset_controller_dev*, %struct.reset_controller_dev** %4, align 8
  %12 = call %struct.aspeed_reset* @to_aspeed_reset(%struct.reset_controller_dev* %11)
  store %struct.aspeed_reset* %12, %struct.aspeed_reset** %6, align 8
  %13 = load i64, i64* %5, align 8
  %14 = call i32 @get_bit(i64 %13)
  store i32 %14, i32* %9, align 4
  %15 = load i64, i64* %5, align 8
  %16 = icmp uge i64 %15, 32
  br i1 %16, label %17, label %19

17:                                               ; preds = %2
  %18 = load i32, i32* @ASPEED_G6_RESET_CTRL2, align 4
  br label %21

19:                                               ; preds = %2
  %20 = load i32, i32* @ASPEED_G6_RESET_CTRL, align 4
  br label %21

21:                                               ; preds = %19, %17
  %22 = phi i32 [ %18, %17 ], [ %20, %19 ]
  store i32 %22, i32* %10, align 4
  %23 = load %struct.aspeed_reset*, %struct.aspeed_reset** %6, align 8
  %24 = getelementptr inbounds %struct.aspeed_reset, %struct.aspeed_reset* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* %10, align 4
  %27 = call i32 @regmap_read(i32 %25, i32 %26, i32* %8)
  store i32 %27, i32* %7, align 4
  %28 = load i32, i32* %7, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %21
  %31 = load i32, i32* %7, align 4
  store i32 %31, i32* %3, align 4
  br label %40

32:                                               ; preds = %21
  %33 = load i32, i32* %8, align 4
  %34 = load i32, i32* %9, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  %37 = xor i1 %36, true
  %38 = xor i1 %37, true
  %39 = zext i1 %38 to i32
  store i32 %39, i32* %3, align 4
  br label %40

40:                                               ; preds = %32, %30
  %41 = load i32, i32* %3, align 4
  ret i32 %41
}

declare dso_local %struct.aspeed_reset* @to_aspeed_reset(%struct.reset_controller_dev*) #1

declare dso_local i32 @get_bit(i64) #1

declare dso_local i32 @regmap_read(i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
