; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/uniphier/extr_clk-uniphier-cpugear.c_uniphier_clk_register_cpugear.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/uniphier/extr_clk-uniphier-cpugear.c_uniphier_clk_register_cpugear.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk_hw = type { %struct.clk_init_data* }
%struct.clk_init_data = type { i8*, i32, i32, i32, i32* }
%struct.device = type { i32 }
%struct.regmap = type { i32 }
%struct.uniphier_clk_cpugear_data = type { i32, i32, i32, i32 }
%struct.uniphier_clk_cpugear = type { %struct.clk_hw, i32, i32, %struct.regmap* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@uniphier_clk_cpugear_ops = common dso_local global i32 0, align 4
@CLK_SET_RATE_PARENT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.clk_hw* @uniphier_clk_register_cpugear(%struct.device* %0, %struct.regmap* %1, i8* %2, %struct.uniphier_clk_cpugear_data* %3) #0 {
  %5 = alloca %struct.clk_hw*, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.regmap*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.uniphier_clk_cpugear_data*, align 8
  %10 = alloca %struct.uniphier_clk_cpugear*, align 8
  %11 = alloca %struct.clk_init_data, align 8
  %12 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.regmap* %1, %struct.regmap** %7, align 8
  store i8* %2, i8** %8, align 8
  store %struct.uniphier_clk_cpugear_data* %3, %struct.uniphier_clk_cpugear_data** %9, align 8
  %13 = load %struct.device*, %struct.device** %6, align 8
  %14 = load i32, i32* @GFP_KERNEL, align 4
  %15 = call %struct.uniphier_clk_cpugear* @devm_kzalloc(%struct.device* %13, i32 24, i32 %14)
  store %struct.uniphier_clk_cpugear* %15, %struct.uniphier_clk_cpugear** %10, align 8
  %16 = load %struct.uniphier_clk_cpugear*, %struct.uniphier_clk_cpugear** %10, align 8
  %17 = icmp ne %struct.uniphier_clk_cpugear* %16, null
  br i1 %17, label %22, label %18

18:                                               ; preds = %4
  %19 = load i32, i32* @ENOMEM, align 4
  %20 = sub nsw i32 0, %19
  %21 = call %struct.clk_hw* @ERR_PTR(i32 %20)
  store %struct.clk_hw* %21, %struct.clk_hw** %5, align 8
  br label %64

22:                                               ; preds = %4
  %23 = load i8*, i8** %8, align 8
  %24 = getelementptr inbounds %struct.clk_init_data, %struct.clk_init_data* %11, i32 0, i32 0
  store i8* %23, i8** %24, align 8
  %25 = getelementptr inbounds %struct.clk_init_data, %struct.clk_init_data* %11, i32 0, i32 4
  store i32* @uniphier_clk_cpugear_ops, i32** %25, align 8
  %26 = load i32, i32* @CLK_SET_RATE_PARENT, align 4
  %27 = getelementptr inbounds %struct.clk_init_data, %struct.clk_init_data* %11, i32 0, i32 3
  store i32 %26, i32* %27, align 8
  %28 = load %struct.uniphier_clk_cpugear_data*, %struct.uniphier_clk_cpugear_data** %9, align 8
  %29 = getelementptr inbounds %struct.uniphier_clk_cpugear_data, %struct.uniphier_clk_cpugear_data* %28, i32 0, i32 3
  %30 = load i32, i32* %29, align 4
  %31 = getelementptr inbounds %struct.clk_init_data, %struct.clk_init_data* %11, i32 0, i32 2
  store i32 %30, i32* %31, align 4
  %32 = load %struct.uniphier_clk_cpugear_data*, %struct.uniphier_clk_cpugear_data** %9, align 8
  %33 = getelementptr inbounds %struct.uniphier_clk_cpugear_data, %struct.uniphier_clk_cpugear_data* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 4
  %35 = getelementptr inbounds %struct.clk_init_data, %struct.clk_init_data* %11, i32 0, i32 1
  store i32 %34, i32* %35, align 8
  %36 = load %struct.regmap*, %struct.regmap** %7, align 8
  %37 = load %struct.uniphier_clk_cpugear*, %struct.uniphier_clk_cpugear** %10, align 8
  %38 = getelementptr inbounds %struct.uniphier_clk_cpugear, %struct.uniphier_clk_cpugear* %37, i32 0, i32 3
  store %struct.regmap* %36, %struct.regmap** %38, align 8
  %39 = load %struct.uniphier_clk_cpugear_data*, %struct.uniphier_clk_cpugear_data** %9, align 8
  %40 = getelementptr inbounds %struct.uniphier_clk_cpugear_data, %struct.uniphier_clk_cpugear_data* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.uniphier_clk_cpugear*, %struct.uniphier_clk_cpugear** %10, align 8
  %43 = getelementptr inbounds %struct.uniphier_clk_cpugear, %struct.uniphier_clk_cpugear* %42, i32 0, i32 2
  store i32 %41, i32* %43, align 4
  %44 = load %struct.uniphier_clk_cpugear_data*, %struct.uniphier_clk_cpugear_data** %9, align 8
  %45 = getelementptr inbounds %struct.uniphier_clk_cpugear_data, %struct.uniphier_clk_cpugear_data* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.uniphier_clk_cpugear*, %struct.uniphier_clk_cpugear** %10, align 8
  %48 = getelementptr inbounds %struct.uniphier_clk_cpugear, %struct.uniphier_clk_cpugear* %47, i32 0, i32 1
  store i32 %46, i32* %48, align 8
  %49 = load %struct.uniphier_clk_cpugear*, %struct.uniphier_clk_cpugear** %10, align 8
  %50 = getelementptr inbounds %struct.uniphier_clk_cpugear, %struct.uniphier_clk_cpugear* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.clk_hw, %struct.clk_hw* %50, i32 0, i32 0
  store %struct.clk_init_data* %11, %struct.clk_init_data** %51, align 8
  %52 = load %struct.device*, %struct.device** %6, align 8
  %53 = load %struct.uniphier_clk_cpugear*, %struct.uniphier_clk_cpugear** %10, align 8
  %54 = getelementptr inbounds %struct.uniphier_clk_cpugear, %struct.uniphier_clk_cpugear* %53, i32 0, i32 0
  %55 = call i32 @devm_clk_hw_register(%struct.device* %52, %struct.clk_hw* %54)
  store i32 %55, i32* %12, align 4
  %56 = load i32, i32* %12, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %61

58:                                               ; preds = %22
  %59 = load i32, i32* %12, align 4
  %60 = call %struct.clk_hw* @ERR_PTR(i32 %59)
  store %struct.clk_hw* %60, %struct.clk_hw** %5, align 8
  br label %64

61:                                               ; preds = %22
  %62 = load %struct.uniphier_clk_cpugear*, %struct.uniphier_clk_cpugear** %10, align 8
  %63 = getelementptr inbounds %struct.uniphier_clk_cpugear, %struct.uniphier_clk_cpugear* %62, i32 0, i32 0
  store %struct.clk_hw* %63, %struct.clk_hw** %5, align 8
  br label %64

64:                                               ; preds = %61, %58, %18
  %65 = load %struct.clk_hw*, %struct.clk_hw** %5, align 8
  ret %struct.clk_hw* %65
}

declare dso_local %struct.uniphier_clk_cpugear* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local %struct.clk_hw* @ERR_PTR(i32) #1

declare dso_local i32 @devm_clk_hw_register(%struct.device*, %struct.clk_hw*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
