; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/extr_clk-aspeed.c_aspeed_reset_status.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/extr_clk-aspeed.c_aspeed_reset_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.reset_controller_dev = type { i32 }
%struct.aspeed_reset = type { i32 }

@ASPEED_RESET_CTRL = common dso_local global i64 0, align 8
@aspeed_resets = common dso_local global i64* null, align 8
@ASPEED_RESET2_OFFSET = common dso_local global i64 0, align 8
@ASPEED_RESET_CTRL2 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.reset_controller_dev*, i64)* @aspeed_reset_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @aspeed_reset_status(%struct.reset_controller_dev* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.reset_controller_dev*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.aspeed_reset*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.reset_controller_dev* %0, %struct.reset_controller_dev** %4, align 8
  store i64 %1, i64* %5, align 8
  %11 = load %struct.reset_controller_dev*, %struct.reset_controller_dev** %4, align 8
  %12 = call %struct.aspeed_reset* @to_aspeed_reset(%struct.reset_controller_dev* %11)
  store %struct.aspeed_reset* %12, %struct.aspeed_reset** %6, align 8
  %13 = load i64, i64* @ASPEED_RESET_CTRL, align 8
  store i64 %13, i64* %7, align 8
  %14 = load i64*, i64** @aspeed_resets, align 8
  %15 = load i64, i64* %5, align 8
  %16 = getelementptr inbounds i64, i64* %14, i64 %15
  %17 = load i64, i64* %16, align 8
  store i64 %17, i64* %8, align 8
  %18 = load i64, i64* %8, align 8
  %19 = load i64, i64* @ASPEED_RESET2_OFFSET, align 8
  %20 = icmp sge i64 %18, %19
  br i1 %20, label %21, label %26

21:                                               ; preds = %2
  %22 = load i64, i64* @ASPEED_RESET2_OFFSET, align 8
  %23 = load i64, i64* %8, align 8
  %24 = sub nsw i64 %23, %22
  store i64 %24, i64* %8, align 8
  %25 = load i64, i64* @ASPEED_RESET_CTRL2, align 8
  store i64 %25, i64* %7, align 8
  br label %26

26:                                               ; preds = %21, %2
  %27 = load %struct.aspeed_reset*, %struct.aspeed_reset** %6, align 8
  %28 = getelementptr inbounds %struct.aspeed_reset, %struct.aspeed_reset* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i64, i64* %7, align 8
  %31 = call i32 @regmap_read(i32 %29, i64 %30, i32* %10)
  store i32 %31, i32* %9, align 4
  %32 = load i32, i32* %9, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %26
  %35 = load i32, i32* %9, align 4
  store i32 %35, i32* %3, align 4
  br label %45

36:                                               ; preds = %26
  %37 = load i32, i32* %10, align 4
  %38 = load i64, i64* %8, align 8
  %39 = call i32 @BIT(i64 %38)
  %40 = and i32 %37, %39
  %41 = icmp ne i32 %40, 0
  %42 = xor i1 %41, true
  %43 = xor i1 %42, true
  %44 = zext i1 %43 to i32
  store i32 %44, i32* %3, align 4
  br label %45

45:                                               ; preds = %36, %34
  %46 = load i32, i32* %3, align 4
  ret i32 %46
}

declare dso_local %struct.aspeed_reset* @to_aspeed_reset(%struct.reset_controller_dev*) #1

declare dso_local i32 @regmap_read(i32, i64, i32*) #1

declare dso_local i32 @BIT(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
