; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/uniphier/extr_clk-uniphier-fixed-rate.c_uniphier_clk_register_fixed_rate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/uniphier/extr_clk-uniphier-fixed-rate.c_uniphier_clk_register_fixed_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk_hw = type { %struct.clk_init_data* }
%struct.clk_init_data = type { i8*, i64, i32*, i32* }
%struct.device = type { i32 }
%struct.uniphier_clk_fixed_rate_data = type { i32 }
%struct.clk_fixed_rate = type { %struct.clk_hw, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@clk_fixed_rate_ops = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.clk_hw* @uniphier_clk_register_fixed_rate(%struct.device* %0, i8* %1, %struct.uniphier_clk_fixed_rate_data* %2) #0 {
  %4 = alloca %struct.clk_hw*, align 8
  %5 = alloca %struct.device*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.uniphier_clk_fixed_rate_data*, align 8
  %8 = alloca %struct.clk_fixed_rate*, align 8
  %9 = alloca %struct.clk_init_data, align 8
  %10 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.uniphier_clk_fixed_rate_data* %2, %struct.uniphier_clk_fixed_rate_data** %7, align 8
  %11 = load %struct.device*, %struct.device** %5, align 8
  %12 = load i32, i32* @GFP_KERNEL, align 4
  %13 = call %struct.clk_fixed_rate* @devm_kzalloc(%struct.device* %11, i32 16, i32 %12)
  store %struct.clk_fixed_rate* %13, %struct.clk_fixed_rate** %8, align 8
  %14 = load %struct.clk_fixed_rate*, %struct.clk_fixed_rate** %8, align 8
  %15 = icmp ne %struct.clk_fixed_rate* %14, null
  br i1 %15, label %20, label %16

16:                                               ; preds = %3
  %17 = load i32, i32* @ENOMEM, align 4
  %18 = sub nsw i32 0, %17
  %19 = call %struct.clk_hw* @ERR_PTR(i32 %18)
  store %struct.clk_hw* %19, %struct.clk_hw** %4, align 8
  br label %46

20:                                               ; preds = %3
  %21 = load i8*, i8** %6, align 8
  %22 = getelementptr inbounds %struct.clk_init_data, %struct.clk_init_data* %9, i32 0, i32 0
  store i8* %21, i8** %22, align 8
  %23 = getelementptr inbounds %struct.clk_init_data, %struct.clk_init_data* %9, i32 0, i32 3
  store i32* @clk_fixed_rate_ops, i32** %23, align 8
  %24 = getelementptr inbounds %struct.clk_init_data, %struct.clk_init_data* %9, i32 0, i32 2
  store i32* null, i32** %24, align 8
  %25 = getelementptr inbounds %struct.clk_init_data, %struct.clk_init_data* %9, i32 0, i32 1
  store i64 0, i64* %25, align 8
  %26 = load %struct.uniphier_clk_fixed_rate_data*, %struct.uniphier_clk_fixed_rate_data** %7, align 8
  %27 = getelementptr inbounds %struct.uniphier_clk_fixed_rate_data, %struct.uniphier_clk_fixed_rate_data* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.clk_fixed_rate*, %struct.clk_fixed_rate** %8, align 8
  %30 = getelementptr inbounds %struct.clk_fixed_rate, %struct.clk_fixed_rate* %29, i32 0, i32 1
  store i32 %28, i32* %30, align 8
  %31 = load %struct.clk_fixed_rate*, %struct.clk_fixed_rate** %8, align 8
  %32 = getelementptr inbounds %struct.clk_fixed_rate, %struct.clk_fixed_rate* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.clk_hw, %struct.clk_hw* %32, i32 0, i32 0
  store %struct.clk_init_data* %9, %struct.clk_init_data** %33, align 8
  %34 = load %struct.device*, %struct.device** %5, align 8
  %35 = load %struct.clk_fixed_rate*, %struct.clk_fixed_rate** %8, align 8
  %36 = getelementptr inbounds %struct.clk_fixed_rate, %struct.clk_fixed_rate* %35, i32 0, i32 0
  %37 = call i32 @devm_clk_hw_register(%struct.device* %34, %struct.clk_hw* %36)
  store i32 %37, i32* %10, align 4
  %38 = load i32, i32* %10, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %20
  %41 = load i32, i32* %10, align 4
  %42 = call %struct.clk_hw* @ERR_PTR(i32 %41)
  store %struct.clk_hw* %42, %struct.clk_hw** %4, align 8
  br label %46

43:                                               ; preds = %20
  %44 = load %struct.clk_fixed_rate*, %struct.clk_fixed_rate** %8, align 8
  %45 = getelementptr inbounds %struct.clk_fixed_rate, %struct.clk_fixed_rate* %44, i32 0, i32 0
  store %struct.clk_hw* %45, %struct.clk_hw** %4, align 8
  br label %46

46:                                               ; preds = %43, %40, %16
  %47 = load %struct.clk_hw*, %struct.clk_hw** %4, align 8
  ret %struct.clk_hw* %47
}

declare dso_local %struct.clk_fixed_rate* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local %struct.clk_hw* @ERR_PTR(i32) #1

declare dso_local i32 @devm_clk_hw_register(%struct.device*, %struct.clk_hw*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
