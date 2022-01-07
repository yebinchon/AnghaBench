; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/extr_clk-stm32h7.c_clk_register_stm32_timer_ker.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/extr_clk-stm32h7.c_clk_register_stm32_timer_ker.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk_hw = type { %struct.clk_init_data* }
%struct.clk_init_data = type { i8*, i64, i8**, i32, i32* }
%struct.device = type { i32 }
%struct.timer_ker = type { %struct.clk_hw, i32, i32* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@timer_ker_ops = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.clk_hw* (%struct.device*, i8*, i8*, i64, i32, i32*)* @clk_register_stm32_timer_ker to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.clk_hw* @clk_register_stm32_timer_ker(%struct.device* %0, i8* %1, i8* %2, i64 %3, i32 %4, i32* %5) #0 {
  %7 = alloca %struct.clk_hw*, align 8
  %8 = alloca %struct.device*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca %struct.timer_ker*, align 8
  %15 = alloca %struct.clk_init_data, align 8
  %16 = alloca %struct.clk_hw*, align 8
  %17 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %8, align 8
  store i8* %1, i8** %9, align 8
  store i8* %2, i8** %10, align 8
  store i64 %3, i64* %11, align 8
  store i32 %4, i32* %12, align 4
  store i32* %5, i32** %13, align 8
  %18 = load i32, i32* @GFP_KERNEL, align 4
  %19 = call %struct.timer_ker* @kzalloc(i32 24, i32 %18)
  store %struct.timer_ker* %19, %struct.timer_ker** %14, align 8
  %20 = load %struct.timer_ker*, %struct.timer_ker** %14, align 8
  %21 = icmp ne %struct.timer_ker* %20, null
  br i1 %21, label %26, label %22

22:                                               ; preds = %6
  %23 = load i32, i32* @ENOMEM, align 4
  %24 = sub nsw i32 0, %23
  %25 = call %struct.clk_hw* @ERR_PTR(i32 %24)
  store %struct.clk_hw* %25, %struct.clk_hw** %7, align 8
  br label %57

26:                                               ; preds = %6
  %27 = load i8*, i8** %9, align 8
  %28 = getelementptr inbounds %struct.clk_init_data, %struct.clk_init_data* %15, i32 0, i32 0
  store i8* %27, i8** %28, align 8
  %29 = getelementptr inbounds %struct.clk_init_data, %struct.clk_init_data* %15, i32 0, i32 4
  store i32* @timer_ker_ops, i32** %29, align 8
  %30 = load i64, i64* %11, align 8
  %31 = getelementptr inbounds %struct.clk_init_data, %struct.clk_init_data* %15, i32 0, i32 1
  store i64 %30, i64* %31, align 8
  %32 = getelementptr inbounds %struct.clk_init_data, %struct.clk_init_data* %15, i32 0, i32 2
  store i8** %10, i8*** %32, align 8
  %33 = getelementptr inbounds %struct.clk_init_data, %struct.clk_init_data* %15, i32 0, i32 3
  store i32 1, i32* %33, align 8
  %34 = load %struct.timer_ker*, %struct.timer_ker** %14, align 8
  %35 = getelementptr inbounds %struct.timer_ker, %struct.timer_ker* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.clk_hw, %struct.clk_hw* %35, i32 0, i32 0
  store %struct.clk_init_data* %15, %struct.clk_init_data** %36, align 8
  %37 = load i32*, i32** %13, align 8
  %38 = load %struct.timer_ker*, %struct.timer_ker** %14, align 8
  %39 = getelementptr inbounds %struct.timer_ker, %struct.timer_ker* %38, i32 0, i32 2
  store i32* %37, i32** %39, align 8
  %40 = load i32, i32* %12, align 4
  %41 = load %struct.timer_ker*, %struct.timer_ker** %14, align 8
  %42 = getelementptr inbounds %struct.timer_ker, %struct.timer_ker* %41, i32 0, i32 1
  store i32 %40, i32* %42, align 8
  %43 = load %struct.timer_ker*, %struct.timer_ker** %14, align 8
  %44 = getelementptr inbounds %struct.timer_ker, %struct.timer_ker* %43, i32 0, i32 0
  store %struct.clk_hw* %44, %struct.clk_hw** %16, align 8
  %45 = load %struct.device*, %struct.device** %8, align 8
  %46 = load %struct.clk_hw*, %struct.clk_hw** %16, align 8
  %47 = call i32 @clk_hw_register(%struct.device* %45, %struct.clk_hw* %46)
  store i32 %47, i32* %17, align 4
  %48 = load i32, i32* %17, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %55

50:                                               ; preds = %26
  %51 = load %struct.timer_ker*, %struct.timer_ker** %14, align 8
  %52 = call i32 @kfree(%struct.timer_ker* %51)
  %53 = load i32, i32* %17, align 4
  %54 = call %struct.clk_hw* @ERR_PTR(i32 %53)
  store %struct.clk_hw* %54, %struct.clk_hw** %7, align 8
  br label %57

55:                                               ; preds = %26
  %56 = load %struct.clk_hw*, %struct.clk_hw** %16, align 8
  store %struct.clk_hw* %56, %struct.clk_hw** %7, align 8
  br label %57

57:                                               ; preds = %55, %50, %22
  %58 = load %struct.clk_hw*, %struct.clk_hw** %7, align 8
  ret %struct.clk_hw* %58
}

declare dso_local %struct.timer_ker* @kzalloc(i32, i32) #1

declare dso_local %struct.clk_hw* @ERR_PTR(i32) #1

declare dso_local i32 @clk_hw_register(%struct.device*, %struct.clk_hw*) #1

declare dso_local i32 @kfree(%struct.timer_ker*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
