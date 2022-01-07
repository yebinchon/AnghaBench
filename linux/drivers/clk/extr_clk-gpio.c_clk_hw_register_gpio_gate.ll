; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/extr_clk-gpio.c_clk_hw_register_gpio_gate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/extr_clk-gpio.c_clk_hw_register_gpio_gate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk_ops = type { i32 }
%struct.clk_hw = type { i32 }
%struct.device = type { i32 }
%struct.gpio_desc = type { i32 }

@clk_sleeping_gpio_gate_ops = common dso_local global %struct.clk_ops zeroinitializer, align 4
@clk_gpio_gate_ops = common dso_local global %struct.clk_ops zeroinitializer, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.clk_hw* @clk_hw_register_gpio_gate(%struct.device* %0, i8* %1, i8* %2, %struct.gpio_desc* %3, i64 %4) #0 {
  %6 = alloca %struct.device*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.gpio_desc*, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.clk_ops*, align 8
  store %struct.device* %0, %struct.device** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store %struct.gpio_desc* %3, %struct.gpio_desc** %9, align 8
  store i64 %4, i64* %10, align 8
  %12 = load %struct.gpio_desc*, %struct.gpio_desc** %9, align 8
  %13 = call i64 @gpiod_cansleep(%struct.gpio_desc* %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %5
  store %struct.clk_ops* @clk_sleeping_gpio_gate_ops, %struct.clk_ops** %11, align 8
  br label %17

16:                                               ; preds = %5
  store %struct.clk_ops* @clk_gpio_gate_ops, %struct.clk_ops** %11, align 8
  br label %17

17:                                               ; preds = %16, %15
  %18 = load %struct.device*, %struct.device** %6, align 8
  %19 = load i8*, i8** %7, align 8
  %20 = load i8*, i8** %8, align 8
  %21 = icmp ne i8* %20, null
  br i1 %21, label %22, label %23

22:                                               ; preds = %17
  br label %24

23:                                               ; preds = %17
  br label %24

24:                                               ; preds = %23, %22
  %25 = phi i8** [ %8, %22 ], [ null, %23 ]
  %26 = load i8*, i8** %8, align 8
  %27 = icmp ne i8* %26, null
  %28 = zext i1 %27 to i64
  %29 = select i1 %27, i32 1, i32 0
  %30 = load %struct.gpio_desc*, %struct.gpio_desc** %9, align 8
  %31 = load i64, i64* %10, align 8
  %32 = load %struct.clk_ops*, %struct.clk_ops** %11, align 8
  %33 = call %struct.clk_hw* @clk_register_gpio(%struct.device* %18, i8* %19, i8** %25, i32 %29, %struct.gpio_desc* %30, i64 %31, %struct.clk_ops* %32)
  ret %struct.clk_hw* %33
}

declare dso_local i64 @gpiod_cansleep(%struct.gpio_desc*) #1

declare dso_local %struct.clk_hw* @clk_register_gpio(%struct.device*, i8*, i8**, i32, %struct.gpio_desc*, i64, %struct.clk_ops*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
