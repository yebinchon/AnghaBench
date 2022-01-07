; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/renesas/extr_r9a06g032-clocks.c_create_add_module_clock.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/renesas/extr_r9a06g032-clocks.c_create_add_module_clock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.of_phandle_args = type { i32 }
%struct.device = type { i32 }
%struct.clk = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.of_phandle_args*, %struct.device*)* @create_add_module_clock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @create_add_module_clock(%struct.of_phandle_args* %0, %struct.device* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.of_phandle_args*, align 8
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.clk*, align 8
  %7 = alloca i32, align 4
  store %struct.of_phandle_args* %0, %struct.of_phandle_args** %4, align 8
  store %struct.device* %1, %struct.device** %5, align 8
  %8 = load %struct.of_phandle_args*, %struct.of_phandle_args** %4, align 8
  %9 = call %struct.clk* @of_clk_get_from_provider(%struct.of_phandle_args* %8)
  store %struct.clk* %9, %struct.clk** %6, align 8
  %10 = load %struct.clk*, %struct.clk** %6, align 8
  %11 = call i64 @IS_ERR(%struct.clk* %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %2
  %14 = load %struct.clk*, %struct.clk** %6, align 8
  %15 = call i32 @PTR_ERR(%struct.clk* %14)
  store i32 %15, i32* %3, align 4
  br label %38

16:                                               ; preds = %2
  %17 = load %struct.device*, %struct.device** %5, align 8
  %18 = call i32 @pm_clk_create(%struct.device* %17)
  store i32 %18, i32* %7, align 4
  %19 = load i32, i32* %7, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %16
  %22 = load %struct.clk*, %struct.clk** %6, align 8
  %23 = call i32 @clk_put(%struct.clk* %22)
  %24 = load i32, i32* %7, align 4
  store i32 %24, i32* %3, align 4
  br label %38

25:                                               ; preds = %16
  %26 = load %struct.device*, %struct.device** %5, align 8
  %27 = load %struct.clk*, %struct.clk** %6, align 8
  %28 = call i32 @pm_clk_add_clk(%struct.device* %26, %struct.clk* %27)
  store i32 %28, i32* %7, align 4
  %29 = load i32, i32* %7, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %36

31:                                               ; preds = %25
  %32 = load %struct.device*, %struct.device** %5, align 8
  %33 = call i32 @pm_clk_destroy(%struct.device* %32)
  %34 = load %struct.clk*, %struct.clk** %6, align 8
  %35 = call i32 @clk_put(%struct.clk* %34)
  br label %36

36:                                               ; preds = %31, %25
  %37 = load i32, i32* %7, align 4
  store i32 %37, i32* %3, align 4
  br label %38

38:                                               ; preds = %36, %21, %13
  %39 = load i32, i32* %3, align 4
  ret i32 %39
}

declare dso_local %struct.clk* @of_clk_get_from_provider(%struct.of_phandle_args*) #1

declare dso_local i64 @IS_ERR(%struct.clk*) #1

declare dso_local i32 @PTR_ERR(%struct.clk*) #1

declare dso_local i32 @pm_clk_create(%struct.device*) #1

declare dso_local i32 @clk_put(%struct.clk*) #1

declare dso_local i32 @pm_clk_add_clk(%struct.device*, %struct.clk*) #1

declare dso_local i32 @pm_clk_destroy(%struct.device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
