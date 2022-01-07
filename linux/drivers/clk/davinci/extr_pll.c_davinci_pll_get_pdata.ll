; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/davinci/extr_pll.c_davinci_pll_get_pdata.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/davinci/extr_pll.c_davinci_pll_get_pdata.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.davinci_pll_platform_data = type { i32 }
%struct.device = type { i64 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"ti,da830-cfgchip\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.davinci_pll_platform_data* (%struct.device*)* @davinci_pll_get_pdata to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.davinci_pll_platform_data* @davinci_pll_get_pdata(%struct.device* %0) #0 {
  %2 = alloca %struct.davinci_pll_platform_data*, align 8
  %3 = alloca %struct.device*, align 8
  %4 = alloca %struct.davinci_pll_platform_data*, align 8
  store %struct.device* %0, %struct.device** %3, align 8
  %5 = load %struct.device*, %struct.device** %3, align 8
  %6 = call %struct.davinci_pll_platform_data* @dev_get_platdata(%struct.device* %5)
  store %struct.davinci_pll_platform_data* %6, %struct.davinci_pll_platform_data** %4, align 8
  %7 = load %struct.davinci_pll_platform_data*, %struct.davinci_pll_platform_data** %4, align 8
  %8 = icmp ne %struct.davinci_pll_platform_data* %7, null
  br i1 %8, label %13, label %9

9:                                                ; preds = %1
  %10 = load %struct.device*, %struct.device** %3, align 8
  %11 = load i32, i32* @GFP_KERNEL, align 4
  %12 = call %struct.davinci_pll_platform_data* @devm_kzalloc(%struct.device* %10, i32 4, i32 %11)
  store %struct.davinci_pll_platform_data* %12, %struct.davinci_pll_platform_data** %4, align 8
  br label %13

13:                                               ; preds = %9, %1
  %14 = load %struct.davinci_pll_platform_data*, %struct.davinci_pll_platform_data** %4, align 8
  %15 = icmp ne %struct.davinci_pll_platform_data* %14, null
  br i1 %15, label %17, label %16

16:                                               ; preds = %13
  store %struct.davinci_pll_platform_data* null, %struct.davinci_pll_platform_data** %2, align 8
  br label %28

17:                                               ; preds = %13
  %18 = load %struct.device*, %struct.device** %3, align 8
  %19 = getelementptr inbounds %struct.device, %struct.device* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %26

22:                                               ; preds = %17
  %23 = call i32 @syscon_regmap_lookup_by_compatible(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %24 = load %struct.davinci_pll_platform_data*, %struct.davinci_pll_platform_data** %4, align 8
  %25 = getelementptr inbounds %struct.davinci_pll_platform_data, %struct.davinci_pll_platform_data* %24, i32 0, i32 0
  store i32 %23, i32* %25, align 4
  br label %26

26:                                               ; preds = %22, %17
  %27 = load %struct.davinci_pll_platform_data*, %struct.davinci_pll_platform_data** %4, align 8
  store %struct.davinci_pll_platform_data* %27, %struct.davinci_pll_platform_data** %2, align 8
  br label %28

28:                                               ; preds = %26, %16
  %29 = load %struct.davinci_pll_platform_data*, %struct.davinci_pll_platform_data** %2, align 8
  ret %struct.davinci_pll_platform_data* %29
}

declare dso_local %struct.davinci_pll_platform_data* @dev_get_platdata(%struct.device*) #1

declare dso_local %struct.davinci_pll_platform_data* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local i32 @syscon_regmap_lookup_by_compatible(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
