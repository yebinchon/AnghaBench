; ModuleID = '/home/carl/AnghaBench/linux/arch/sh/boards/mach-sdk7786/extr_setup.c_sdk7786_clk_init.c'
source_filename = "/home/carl/AnghaBench/linux/arch/sh/boards/mach-sdk7786/extr_setup.c_sdk7786_clk_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk = type { i32 }

@MODE_PIN9 = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"extal\00", align 1
@sdk7786_pcie_clk = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"FPGA clock registration failed\0A\00", align 1
@sdk7786_pcie_cl = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @sdk7786_clk_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sdk7786_clk_init() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.clk*, align 8
  %3 = alloca i32, align 4
  %4 = load i32, i32* @MODE_PIN9, align 4
  %5 = call i64 @test_mode_pin(i32 %4)
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %10

7:                                                ; preds = %0
  %8 = load i32, i32* @EINVAL, align 4
  %9 = sub nsw i32 0, %8
  store i32 %9, i32* %1, align 4
  br label %32

10:                                               ; preds = %0
  %11 = call %struct.clk* @clk_get(i32* null, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  store %struct.clk* %11, %struct.clk** %2, align 8
  %12 = load %struct.clk*, %struct.clk** %2, align 8
  %13 = call i64 @IS_ERR(%struct.clk* %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %10
  %16 = load %struct.clk*, %struct.clk** %2, align 8
  %17 = call i32 @PTR_ERR(%struct.clk* %16)
  store i32 %17, i32* %1, align 4
  br label %32

18:                                               ; preds = %10
  %19 = load %struct.clk*, %struct.clk** %2, align 8
  %20 = call i32 @clk_set_rate(%struct.clk* %19, i32 33333333)
  store i32 %20, i32* %3, align 4
  %21 = load %struct.clk*, %struct.clk** %2, align 8
  %22 = call i32 @clk_put(%struct.clk* %21)
  %23 = call i32 @clk_register(i32* @sdk7786_pcie_clk)
  store i32 %23, i32* %3, align 4
  %24 = load i32, i32* %3, align 4
  %25 = call i64 @unlikely(i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %18
  %28 = call i32 @pr_err(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  %29 = load i32, i32* %3, align 4
  store i32 %29, i32* %1, align 4
  br label %32

30:                                               ; preds = %18
  %31 = call i32 @clkdev_add(i32* @sdk7786_pcie_cl)
  store i32 0, i32* %1, align 4
  br label %32

32:                                               ; preds = %30, %27, %15, %7
  %33 = load i32, i32* %1, align 4
  ret i32 %33
}

declare dso_local i64 @test_mode_pin(i32) #1

declare dso_local %struct.clk* @clk_get(i32*, i8*) #1

declare dso_local i64 @IS_ERR(%struct.clk*) #1

declare dso_local i32 @PTR_ERR(%struct.clk*) #1

declare dso_local i32 @clk_set_rate(%struct.clk*, i32) #1

declare dso_local i32 @clk_put(%struct.clk*) #1

declare dso_local i32 @clk_register(i32*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i32 @clkdev_add(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
