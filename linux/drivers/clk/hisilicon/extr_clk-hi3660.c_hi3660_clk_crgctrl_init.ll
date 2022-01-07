; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/hisilicon/extr_clk-hi3660.c_hi3660_clk_crgctrl_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/hisilicon/extr_clk-hi3660.c_hi3660_clk_crgctrl_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32, %struct.clk** }
%struct.clk = type { i32 }
%struct.device_node = type { i32 }

@clk_crgctrl_data = common dso_local global %struct.TYPE_9__* null, align 8
@hi3660_crgctrl_gate_sep_clks = common dso_local global i32 0, align 4
@hi3660_crgctrl_gate_clks = common dso_local global i32 0, align 4
@hi3660_crgctrl_mux_clks = common dso_local global i32 0, align 4
@hi3660_crg_fixed_factor_clks = common dso_local global i32 0, align 4
@hi3660_crgctrl_divider_clks = common dso_local global i32 0, align 4
@EPROBE_DEFER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [46 x i8] c"Failed to register crgctrl clock[%d] err=%ld\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.device_node*)* @hi3660_clk_crgctrl_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hi3660_clk_crgctrl_init(%struct.device_node* %0) #0 {
  %2 = alloca %struct.device_node*, align 8
  %3 = alloca %struct.clk**, align 8
  %4 = alloca i32, align 4
  store %struct.device_node* %0, %struct.device_node** %2, align 8
  %5 = load %struct.TYPE_9__*, %struct.TYPE_9__** @clk_crgctrl_data, align 8
  %6 = icmp ne %struct.TYPE_9__* %5, null
  br i1 %6, label %10, label %7

7:                                                ; preds = %1
  %8 = load %struct.device_node*, %struct.device_node** %2, align 8
  %9 = call i32 @hi3660_clk_crgctrl_early_init(%struct.device_node* %8)
  br label %10

10:                                               ; preds = %7, %1
  %11 = load %struct.TYPE_9__*, %struct.TYPE_9__** @clk_crgctrl_data, align 8
  %12 = icmp ne %struct.TYPE_9__* %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %10
  br label %82

14:                                               ; preds = %10
  %15 = load i32, i32* @hi3660_crgctrl_gate_sep_clks, align 4
  %16 = load i32, i32* @hi3660_crgctrl_gate_sep_clks, align 4
  %17 = call i32 @ARRAY_SIZE(i32 %16)
  %18 = load %struct.TYPE_9__*, %struct.TYPE_9__** @clk_crgctrl_data, align 8
  %19 = call i32 @hisi_clk_register_gate_sep(i32 %15, i32 %17, %struct.TYPE_9__* %18)
  %20 = load i32, i32* @hi3660_crgctrl_gate_clks, align 4
  %21 = load i32, i32* @hi3660_crgctrl_gate_clks, align 4
  %22 = call i32 @ARRAY_SIZE(i32 %21)
  %23 = load %struct.TYPE_9__*, %struct.TYPE_9__** @clk_crgctrl_data, align 8
  %24 = call i32 @hisi_clk_register_gate(i32 %20, i32 %22, %struct.TYPE_9__* %23)
  %25 = load i32, i32* @hi3660_crgctrl_mux_clks, align 4
  %26 = load i32, i32* @hi3660_crgctrl_mux_clks, align 4
  %27 = call i32 @ARRAY_SIZE(i32 %26)
  %28 = load %struct.TYPE_9__*, %struct.TYPE_9__** @clk_crgctrl_data, align 8
  %29 = call i32 @hisi_clk_register_mux(i32 %25, i32 %27, %struct.TYPE_9__* %28)
  %30 = load i32, i32* @hi3660_crg_fixed_factor_clks, align 4
  %31 = load i32, i32* @hi3660_crg_fixed_factor_clks, align 4
  %32 = call i32 @ARRAY_SIZE(i32 %31)
  %33 = load %struct.TYPE_9__*, %struct.TYPE_9__** @clk_crgctrl_data, align 8
  %34 = call i32 @hisi_clk_register_fixed_factor(i32 %30, i32 %32, %struct.TYPE_9__* %33)
  %35 = load i32, i32* @hi3660_crgctrl_divider_clks, align 4
  %36 = load i32, i32* @hi3660_crgctrl_divider_clks, align 4
  %37 = call i32 @ARRAY_SIZE(i32 %36)
  %38 = load %struct.TYPE_9__*, %struct.TYPE_9__** @clk_crgctrl_data, align 8
  %39 = call i32 @hisi_clk_register_divider(i32 %35, i32 %37, %struct.TYPE_9__* %38)
  %40 = load %struct.TYPE_9__*, %struct.TYPE_9__** @clk_crgctrl_data, align 8
  %41 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %41, i32 0, i32 1
  %43 = load %struct.clk**, %struct.clk*** %42, align 8
  store %struct.clk** %43, %struct.clk*** %3, align 8
  store i32 0, i32* %4, align 4
  br label %44

44:                                               ; preds = %79, %14
  %45 = load i32, i32* %4, align 4
  %46 = load %struct.TYPE_9__*, %struct.TYPE_9__** @clk_crgctrl_data, align 8
  %47 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = icmp slt i32 %45, %49
  br i1 %50, label %51, label %82

51:                                               ; preds = %44
  %52 = load %struct.clk**, %struct.clk*** %3, align 8
  %53 = load i32, i32* %4, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds %struct.clk*, %struct.clk** %52, i64 %54
  %56 = load %struct.clk*, %struct.clk** %55, align 8
  %57 = call i64 @IS_ERR(%struct.clk* %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %78

59:                                               ; preds = %51
  %60 = load %struct.clk**, %struct.clk*** %3, align 8
  %61 = load i32, i32* %4, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds %struct.clk*, %struct.clk** %60, i64 %62
  %64 = load %struct.clk*, %struct.clk** %63, align 8
  %65 = call i32 @PTR_ERR(%struct.clk* %64)
  %66 = load i32, i32* @EPROBE_DEFER, align 4
  %67 = sub nsw i32 0, %66
  %68 = icmp ne i32 %65, %67
  br i1 %68, label %69, label %78

69:                                               ; preds = %59
  %70 = load i32, i32* %4, align 4
  %71 = load %struct.clk**, %struct.clk*** %3, align 8
  %72 = load i32, i32* %4, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds %struct.clk*, %struct.clk** %71, i64 %73
  %75 = load %struct.clk*, %struct.clk** %74, align 8
  %76 = call i32 @PTR_ERR(%struct.clk* %75)
  %77 = call i32 @pr_err(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), i32 %70, i32 %76)
  br label %78

78:                                               ; preds = %69, %59, %51
  br label %79

79:                                               ; preds = %78
  %80 = load i32, i32* %4, align 4
  %81 = add nsw i32 %80, 1
  store i32 %81, i32* %4, align 4
  br label %44

82:                                               ; preds = %13, %44
  ret void
}

declare dso_local i32 @hi3660_clk_crgctrl_early_init(%struct.device_node*) #1

declare dso_local i32 @hisi_clk_register_gate_sep(i32, i32, %struct.TYPE_9__*) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

declare dso_local i32 @hisi_clk_register_gate(i32, i32, %struct.TYPE_9__*) #1

declare dso_local i32 @hisi_clk_register_mux(i32, i32, %struct.TYPE_9__*) #1

declare dso_local i32 @hisi_clk_register_fixed_factor(i32, i32, %struct.TYPE_9__*) #1

declare dso_local i32 @hisi_clk_register_divider(i32, i32, %struct.TYPE_9__*) #1

declare dso_local i64 @IS_ERR(%struct.clk*) #1

declare dso_local i32 @PTR_ERR(%struct.clk*) #1

declare dso_local i32 @pr_err(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
