; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/tegra/extr_clk-bpmp.c_tegra_bpmp_init_clocks.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/tegra/extr_clk-bpmp.c_tegra_bpmp_init_clocks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tegra_bpmp = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.tegra_bpmp_clk_info = type { i32 }

@.str = private unnamed_addr constant [18 x i8] c"%u clocks probed\0A\00", align 1
@tegra_bpmp_clk_of_xlate = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tegra_bpmp_init_clocks(%struct.tegra_bpmp* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.tegra_bpmp*, align 8
  %4 = alloca %struct.tegra_bpmp_clk_info*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.tegra_bpmp* %0, %struct.tegra_bpmp** %3, align 8
  %7 = load %struct.tegra_bpmp*, %struct.tegra_bpmp** %3, align 8
  %8 = call i32 @tegra_bpmp_probe_clocks(%struct.tegra_bpmp* %7, %struct.tegra_bpmp_clk_info** %4)
  store i32 %8, i32* %6, align 4
  %9 = load i32, i32* %6, align 4
  %10 = icmp slt i32 %9, 0
  br i1 %10, label %11, label %13

11:                                               ; preds = %1
  %12 = load i32, i32* %6, align 4
  store i32 %12, i32* %2, align 4
  br label %46

13:                                               ; preds = %1
  %14 = load i32, i32* %6, align 4
  store i32 %14, i32* %5, align 4
  %15 = load %struct.tegra_bpmp*, %struct.tegra_bpmp** %3, align 8
  %16 = getelementptr inbounds %struct.tegra_bpmp, %struct.tegra_bpmp* %15, i32 0, i32 0
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = load i32, i32* %5, align 4
  %19 = call i32 @dev_dbg(%struct.TYPE_2__* %17, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 %18)
  %20 = load %struct.tegra_bpmp*, %struct.tegra_bpmp** %3, align 8
  %21 = load %struct.tegra_bpmp_clk_info*, %struct.tegra_bpmp_clk_info** %4, align 8
  %22 = load i32, i32* %5, align 4
  %23 = call i32 @tegra_bpmp_register_clocks(%struct.tegra_bpmp* %20, %struct.tegra_bpmp_clk_info* %21, i32 %22)
  store i32 %23, i32* %6, align 4
  %24 = load i32, i32* %6, align 4
  %25 = icmp slt i32 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %13
  br label %42

27:                                               ; preds = %13
  %28 = load %struct.tegra_bpmp*, %struct.tegra_bpmp** %3, align 8
  %29 = getelementptr inbounds %struct.tegra_bpmp, %struct.tegra_bpmp* %28, i32 0, i32 0
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @tegra_bpmp_clk_of_xlate, align 4
  %34 = load %struct.tegra_bpmp*, %struct.tegra_bpmp** %3, align 8
  %35 = call i32 @of_clk_add_hw_provider(i32 %32, i32 %33, %struct.tegra_bpmp* %34)
  store i32 %35, i32* %6, align 4
  %36 = load i32, i32* %6, align 4
  %37 = icmp slt i32 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %27
  %39 = load %struct.tegra_bpmp*, %struct.tegra_bpmp** %3, align 8
  %40 = call i32 @tegra_bpmp_unregister_clocks(%struct.tegra_bpmp* %39)
  br label %42

41:                                               ; preds = %27
  br label %42

42:                                               ; preds = %41, %38, %26
  %43 = load %struct.tegra_bpmp_clk_info*, %struct.tegra_bpmp_clk_info** %4, align 8
  %44 = call i32 @kfree(%struct.tegra_bpmp_clk_info* %43)
  %45 = load i32, i32* %6, align 4
  store i32 %45, i32* %2, align 4
  br label %46

46:                                               ; preds = %42, %11
  %47 = load i32, i32* %2, align 4
  ret i32 %47
}

declare dso_local i32 @tegra_bpmp_probe_clocks(%struct.tegra_bpmp*, %struct.tegra_bpmp_clk_info**) #1

declare dso_local i32 @dev_dbg(%struct.TYPE_2__*, i8*, i32) #1

declare dso_local i32 @tegra_bpmp_register_clocks(%struct.tegra_bpmp*, %struct.tegra_bpmp_clk_info*, i32) #1

declare dso_local i32 @of_clk_add_hw_provider(i32, i32, %struct.tegra_bpmp*) #1

declare dso_local i32 @tegra_bpmp_unregister_clocks(%struct.tegra_bpmp*) #1

declare dso_local i32 @kfree(%struct.tegra_bpmp_clk_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
