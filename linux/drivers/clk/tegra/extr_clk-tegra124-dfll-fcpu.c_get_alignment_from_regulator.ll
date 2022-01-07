; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/tegra/extr_clk-tegra124-dfll-fcpu.c_get_alignment_from_regulator.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/tegra/extr_clk-tegra124-dfll-fcpu.c_get_alignment_from_regulator.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.rail_alignment = type { i32, i32 }
%struct.regulator = type { i32 }

@.str = private unnamed_addr constant [8 x i8] c"vdd-cpu\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.rail_alignment*)* @get_alignment_from_regulator to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_alignment_from_regulator(%struct.device* %0, %struct.rail_alignment* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.rail_alignment*, align 8
  %6 = alloca %struct.regulator*, align 8
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.rail_alignment* %1, %struct.rail_alignment** %5, align 8
  %7 = load %struct.device*, %struct.device** %4, align 8
  %8 = call %struct.regulator* @devm_regulator_get(%struct.device* %7, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  store %struct.regulator* %8, %struct.regulator** %6, align 8
  %9 = load %struct.regulator*, %struct.regulator** %6, align 8
  %10 = call i64 @IS_ERR(%struct.regulator* %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %15

12:                                               ; preds = %2
  %13 = load %struct.regulator*, %struct.regulator** %6, align 8
  %14 = call i32 @PTR_ERR(%struct.regulator* %13)
  store i32 %14, i32* %3, align 4
  br label %26

15:                                               ; preds = %2
  %16 = load %struct.regulator*, %struct.regulator** %6, align 8
  %17 = call i32 @regulator_list_voltage(%struct.regulator* %16, i32 0)
  %18 = load %struct.rail_alignment*, %struct.rail_alignment** %5, align 8
  %19 = getelementptr inbounds %struct.rail_alignment, %struct.rail_alignment* %18, i32 0, i32 1
  store i32 %17, i32* %19, align 4
  %20 = load %struct.regulator*, %struct.regulator** %6, align 8
  %21 = call i32 @regulator_get_linear_step(%struct.regulator* %20)
  %22 = load %struct.rail_alignment*, %struct.rail_alignment** %5, align 8
  %23 = getelementptr inbounds %struct.rail_alignment, %struct.rail_alignment* %22, i32 0, i32 0
  store i32 %21, i32* %23, align 4
  %24 = load %struct.regulator*, %struct.regulator** %6, align 8
  %25 = call i32 @devm_regulator_put(%struct.regulator* %24)
  store i32 0, i32* %3, align 4
  br label %26

26:                                               ; preds = %15, %12
  %27 = load i32, i32* %3, align 4
  ret i32 %27
}

declare dso_local %struct.regulator* @devm_regulator_get(%struct.device*, i8*) #1

declare dso_local i64 @IS_ERR(%struct.regulator*) #1

declare dso_local i32 @PTR_ERR(%struct.regulator*) #1

declare dso_local i32 @regulator_list_voltage(%struct.regulator*, i32) #1

declare dso_local i32 @regulator_get_linear_step(%struct.regulator*) #1

declare dso_local i32 @devm_regulator_put(%struct.regulator*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
