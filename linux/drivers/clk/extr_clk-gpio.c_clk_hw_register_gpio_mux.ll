; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/extr_clk-gpio.c_clk_hw_register_gpio_mux.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/extr_clk-gpio.c_clk_hw_register_gpio_mux.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk_hw = type { i32 }
%struct.device = type { i32 }
%struct.gpio_desc = type { i32 }

@.str = private unnamed_addr constant [34 x i8] c"mux-clock %s must have 2 parents\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@clk_gpio_mux_ops = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.clk_hw* @clk_hw_register_gpio_mux(%struct.device* %0, i8* %1, i8** %2, i32 %3, %struct.gpio_desc* %4, i64 %5) #0 {
  %7 = alloca %struct.clk_hw*, align 8
  %8 = alloca %struct.device*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8**, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.gpio_desc*, align 8
  %13 = alloca i64, align 8
  store %struct.device* %0, %struct.device** %8, align 8
  store i8* %1, i8** %9, align 8
  store i8** %2, i8*** %10, align 8
  store i32 %3, i32* %11, align 4
  store %struct.gpio_desc* %4, %struct.gpio_desc** %12, align 8
  store i64 %5, i64* %13, align 8
  %14 = load i32, i32* %11, align 4
  %15 = icmp ne i32 %14, 2
  br i1 %15, label %16, label %22

16:                                               ; preds = %6
  %17 = load i8*, i8** %9, align 8
  %18 = call i32 @pr_err(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i8* %17)
  %19 = load i32, i32* @EINVAL, align 4
  %20 = sub nsw i32 0, %19
  %21 = call %struct.clk_hw* @ERR_PTR(i32 %20)
  store %struct.clk_hw* %21, %struct.clk_hw** %7, align 8
  br label %30

22:                                               ; preds = %6
  %23 = load %struct.device*, %struct.device** %8, align 8
  %24 = load i8*, i8** %9, align 8
  %25 = load i8**, i8*** %10, align 8
  %26 = load i32, i32* %11, align 4
  %27 = load %struct.gpio_desc*, %struct.gpio_desc** %12, align 8
  %28 = load i64, i64* %13, align 8
  %29 = call %struct.clk_hw* @clk_register_gpio(%struct.device* %23, i8* %24, i8** %25, i32 %26, %struct.gpio_desc* %27, i64 %28, i32* @clk_gpio_mux_ops)
  store %struct.clk_hw* %29, %struct.clk_hw** %7, align 8
  br label %30

30:                                               ; preds = %22, %16
  %31 = load %struct.clk_hw*, %struct.clk_hw** %7, align 8
  ret %struct.clk_hw* %31
}

declare dso_local i32 @pr_err(i8*, i8*) #1

declare dso_local %struct.clk_hw* @ERR_PTR(i32) #1

declare dso_local %struct.clk_hw* @clk_register_gpio(%struct.device*, i8*, i8**, i32, %struct.gpio_desc*, i64, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
