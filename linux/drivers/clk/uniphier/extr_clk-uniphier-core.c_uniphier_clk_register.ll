; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/uniphier/extr_clk-uniphier-core.c_uniphier_clk_register.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/uniphier/extr_clk-uniphier-core.c_uniphier_clk_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk_hw = type { i32 }
%struct.device = type { i32 }
%struct.regmap = type { i32 }
%struct.uniphier_clk_data = type { i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [24 x i8] c"unsupported clock type\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.clk_hw* (%struct.device*, %struct.regmap*, %struct.uniphier_clk_data*)* @uniphier_clk_register to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.clk_hw* @uniphier_clk_register(%struct.device* %0, %struct.regmap* %1, %struct.uniphier_clk_data* %2) #0 {
  %4 = alloca %struct.clk_hw*, align 8
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.regmap*, align 8
  %7 = alloca %struct.uniphier_clk_data*, align 8
  store %struct.device* %0, %struct.device** %5, align 8
  store %struct.regmap* %1, %struct.regmap** %6, align 8
  store %struct.uniphier_clk_data* %2, %struct.uniphier_clk_data** %7, align 8
  %8 = load %struct.uniphier_clk_data*, %struct.uniphier_clk_data** %7, align 8
  %9 = getelementptr inbounds %struct.uniphier_clk_data, %struct.uniphier_clk_data* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  switch i32 %10, label %59 [
    i32 132, label %11
    i32 131, label %21
    i32 130, label %30
    i32 129, label %39
    i32 128, label %49
  ]

11:                                               ; preds = %3
  %12 = load %struct.device*, %struct.device** %5, align 8
  %13 = load %struct.regmap*, %struct.regmap** %6, align 8
  %14 = load %struct.uniphier_clk_data*, %struct.uniphier_clk_data** %7, align 8
  %15 = getelementptr inbounds %struct.uniphier_clk_data, %struct.uniphier_clk_data* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.uniphier_clk_data*, %struct.uniphier_clk_data** %7, align 8
  %18 = getelementptr inbounds %struct.uniphier_clk_data, %struct.uniphier_clk_data* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 4
  %20 = call %struct.clk_hw* @uniphier_clk_register_cpugear(%struct.device* %12, %struct.regmap* %13, i32 %16, i32* %19)
  store %struct.clk_hw* %20, %struct.clk_hw** %4, align 8
  br label %65

21:                                               ; preds = %3
  %22 = load %struct.device*, %struct.device** %5, align 8
  %23 = load %struct.uniphier_clk_data*, %struct.uniphier_clk_data** %7, align 8
  %24 = getelementptr inbounds %struct.uniphier_clk_data, %struct.uniphier_clk_data* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.uniphier_clk_data*, %struct.uniphier_clk_data** %7, align 8
  %27 = getelementptr inbounds %struct.uniphier_clk_data, %struct.uniphier_clk_data* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 3
  %29 = call %struct.clk_hw* @uniphier_clk_register_fixed_factor(%struct.device* %22, i32 %25, i32* %28)
  store %struct.clk_hw* %29, %struct.clk_hw** %4, align 8
  br label %65

30:                                               ; preds = %3
  %31 = load %struct.device*, %struct.device** %5, align 8
  %32 = load %struct.uniphier_clk_data*, %struct.uniphier_clk_data** %7, align 8
  %33 = getelementptr inbounds %struct.uniphier_clk_data, %struct.uniphier_clk_data* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.uniphier_clk_data*, %struct.uniphier_clk_data** %7, align 8
  %36 = getelementptr inbounds %struct.uniphier_clk_data, %struct.uniphier_clk_data* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 2
  %38 = call %struct.clk_hw* @uniphier_clk_register_fixed_rate(%struct.device* %31, i32 %34, i32* %37)
  store %struct.clk_hw* %38, %struct.clk_hw** %4, align 8
  br label %65

39:                                               ; preds = %3
  %40 = load %struct.device*, %struct.device** %5, align 8
  %41 = load %struct.regmap*, %struct.regmap** %6, align 8
  %42 = load %struct.uniphier_clk_data*, %struct.uniphier_clk_data** %7, align 8
  %43 = getelementptr inbounds %struct.uniphier_clk_data, %struct.uniphier_clk_data* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.uniphier_clk_data*, %struct.uniphier_clk_data** %7, align 8
  %46 = getelementptr inbounds %struct.uniphier_clk_data, %struct.uniphier_clk_data* %45, i32 0, i32 1
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 1
  %48 = call %struct.clk_hw* @uniphier_clk_register_gate(%struct.device* %40, %struct.regmap* %41, i32 %44, i32* %47)
  store %struct.clk_hw* %48, %struct.clk_hw** %4, align 8
  br label %65

49:                                               ; preds = %3
  %50 = load %struct.device*, %struct.device** %5, align 8
  %51 = load %struct.regmap*, %struct.regmap** %6, align 8
  %52 = load %struct.uniphier_clk_data*, %struct.uniphier_clk_data** %7, align 8
  %53 = getelementptr inbounds %struct.uniphier_clk_data, %struct.uniphier_clk_data* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.uniphier_clk_data*, %struct.uniphier_clk_data** %7, align 8
  %56 = getelementptr inbounds %struct.uniphier_clk_data, %struct.uniphier_clk_data* %55, i32 0, i32 1
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 0
  %58 = call %struct.clk_hw* @uniphier_clk_register_mux(%struct.device* %50, %struct.regmap* %51, i32 %54, i32* %57)
  store %struct.clk_hw* %58, %struct.clk_hw** %4, align 8
  br label %65

59:                                               ; preds = %3
  %60 = load %struct.device*, %struct.device** %5, align 8
  %61 = call i32 @dev_err(%struct.device* %60, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %62 = load i32, i32* @EINVAL, align 4
  %63 = sub nsw i32 0, %62
  %64 = call %struct.clk_hw* @ERR_PTR(i32 %63)
  store %struct.clk_hw* %64, %struct.clk_hw** %4, align 8
  br label %65

65:                                               ; preds = %59, %49, %39, %30, %21, %11
  %66 = load %struct.clk_hw*, %struct.clk_hw** %4, align 8
  ret %struct.clk_hw* %66
}

declare dso_local %struct.clk_hw* @uniphier_clk_register_cpugear(%struct.device*, %struct.regmap*, i32, i32*) #1

declare dso_local %struct.clk_hw* @uniphier_clk_register_fixed_factor(%struct.device*, i32, i32*) #1

declare dso_local %struct.clk_hw* @uniphier_clk_register_fixed_rate(%struct.device*, i32, i32*) #1

declare dso_local %struct.clk_hw* @uniphier_clk_register_gate(%struct.device*, %struct.regmap*, i32, i32*) #1

declare dso_local %struct.clk_hw* @uniphier_clk_register_mux(%struct.device*, %struct.regmap*, i32, i32*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local %struct.clk_hw* @ERR_PTR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
