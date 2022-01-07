; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/tegra/extr_clk-dfll.c_dfll_fetch_i2c_params.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/tegra/extr_clk-dfll.c_dfll_fetch_i2c_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tegra_dfll = type { i32, i32, i32, i32, i32 }
%struct.regmap = type { i32 }
%struct.device = type { i32 }
%struct.i2c_client = type { i32 }

@.str = private unnamed_addr constant [19 x i8] c"nvidia,i2c-fs-rate\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [45 x i8] c"regulator unsuitable for DFLL I2C operation\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tegra_dfll*)* @dfll_fetch_i2c_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dfll_fetch_i2c_params(%struct.tegra_dfll* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.tegra_dfll*, align 8
  %4 = alloca %struct.regmap*, align 8
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.i2c_client*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.tegra_dfll* %0, %struct.tegra_dfll** %3, align 8
  %10 = load %struct.tegra_dfll*, %struct.tegra_dfll** %3, align 8
  %11 = load %struct.tegra_dfll*, %struct.tegra_dfll** %3, align 8
  %12 = getelementptr inbounds %struct.tegra_dfll, %struct.tegra_dfll* %11, i32 0, i32 4
  %13 = call i32 @read_dt_param(%struct.tegra_dfll* %10, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32* %12)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %18, label %15

15:                                               ; preds = %1
  %16 = load i32, i32* @EINVAL, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %2, align 4
  br label %49

18:                                               ; preds = %1
  %19 = load %struct.tegra_dfll*, %struct.tegra_dfll** %3, align 8
  %20 = getelementptr inbounds %struct.tegra_dfll, %struct.tegra_dfll* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 4
  %22 = call %struct.regmap* @regulator_get_regmap(i32 %21)
  store %struct.regmap* %22, %struct.regmap** %4, align 8
  %23 = load %struct.regmap*, %struct.regmap** %4, align 8
  %24 = call %struct.device* @regmap_get_device(%struct.regmap* %23)
  store %struct.device* %24, %struct.device** %5, align 8
  %25 = load %struct.device*, %struct.device** %5, align 8
  %26 = call %struct.i2c_client* @to_i2c_client(%struct.device* %25)
  store %struct.i2c_client* %26, %struct.i2c_client** %6, align 8
  %27 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %28 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.tegra_dfll*, %struct.tegra_dfll** %3, align 8
  %31 = getelementptr inbounds %struct.tegra_dfll, %struct.tegra_dfll* %30, i32 0, i32 3
  store i32 %29, i32* %31, align 4
  %32 = load %struct.tegra_dfll*, %struct.tegra_dfll** %3, align 8
  %33 = getelementptr inbounds %struct.tegra_dfll, %struct.tegra_dfll* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @regulator_get_hardware_vsel_register(i32 %34, i32* %7, i32* %8)
  store i32 %35, i32* %9, align 4
  %36 = load i32, i32* %9, align 4
  %37 = icmp slt i32 %36, 0
  br i1 %37, label %38, label %45

38:                                               ; preds = %18
  %39 = load %struct.tegra_dfll*, %struct.tegra_dfll** %3, align 8
  %40 = getelementptr inbounds %struct.tegra_dfll, %struct.tegra_dfll* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @dev_err(i32 %41, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0))
  %43 = load i32, i32* @EINVAL, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %2, align 4
  br label %49

45:                                               ; preds = %18
  %46 = load i32, i32* %7, align 4
  %47 = load %struct.tegra_dfll*, %struct.tegra_dfll** %3, align 8
  %48 = getelementptr inbounds %struct.tegra_dfll, %struct.tegra_dfll* %47, i32 0, i32 0
  store i32 %46, i32* %48, align 4
  store i32 0, i32* %2, align 4
  br label %49

49:                                               ; preds = %45, %38, %15
  %50 = load i32, i32* %2, align 4
  ret i32 %50
}

declare dso_local i32 @read_dt_param(%struct.tegra_dfll*, i8*, i32*) #1

declare dso_local %struct.regmap* @regulator_get_regmap(i32) #1

declare dso_local %struct.device* @regmap_get_device(%struct.regmap*) #1

declare dso_local %struct.i2c_client* @to_i2c_client(%struct.device*) #1

declare dso_local i32 @regulator_get_hardware_vsel_register(i32, i32*, i32*) #1

declare dso_local i32 @dev_err(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
