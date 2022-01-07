; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/hisilicon/extr_crg-hi3798cv200.c_hi3798cv200_clk_register.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/hisilicon/extr_crg-hi3798cv200.c_hi3798cv200_clk_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hisi_clock_data = type { i32 }
%struct.platform_device = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@HI3798CV200_CRG_NR_CLKS = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@hi3798cv200_phase_clks = common dso_local global i32 0, align 4
@hi3798cv200_fixed_rate_clks = common dso_local global i32 0, align 4
@hi3798cv200_mux_clks = common dso_local global i32 0, align 4
@hi3798cv200_gate_clks = common dso_local global i32 0, align 4
@of_clk_src_onecell_get = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.hisi_clock_data* (%struct.platform_device*)* @hi3798cv200_clk_register to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.hisi_clock_data* @hi3798cv200_clk_register(%struct.platform_device* %0) #0 {
  %2 = alloca %struct.hisi_clock_data*, align 8
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.hisi_clock_data*, align 8
  %5 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %6 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %7 = load i32, i32* @HI3798CV200_CRG_NR_CLKS, align 4
  %8 = call %struct.hisi_clock_data* @hisi_clk_alloc(%struct.platform_device* %6, i32 %7)
  store %struct.hisi_clock_data* %8, %struct.hisi_clock_data** %4, align 8
  %9 = load %struct.hisi_clock_data*, %struct.hisi_clock_data** %4, align 8
  %10 = icmp ne %struct.hisi_clock_data* %9, null
  br i1 %10, label %15, label %11

11:                                               ; preds = %1
  %12 = load i32, i32* @ENOMEM, align 4
  %13 = sub nsw i32 0, %12
  %14 = call %struct.hisi_clock_data* @ERR_PTR(i32 %13)
  store %struct.hisi_clock_data* %14, %struct.hisi_clock_data** %2, align 8
  br label %91

15:                                               ; preds = %1
  %16 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %17 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %16, i32 0, i32 0
  %18 = load i32, i32* @hi3798cv200_phase_clks, align 4
  %19 = load i32, i32* @hi3798cv200_phase_clks, align 4
  %20 = call i32 @ARRAY_SIZE(i32 %19)
  %21 = load %struct.hisi_clock_data*, %struct.hisi_clock_data** %4, align 8
  %22 = call i32 @hisi_clk_register_phase(%struct.TYPE_2__* %17, i32 %18, i32 %20, %struct.hisi_clock_data* %21)
  store i32 %22, i32* %5, align 4
  %23 = load i32, i32* %5, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %15
  %26 = load i32, i32* %5, align 4
  %27 = call %struct.hisi_clock_data* @ERR_PTR(i32 %26)
  store %struct.hisi_clock_data* %27, %struct.hisi_clock_data** %2, align 8
  br label %91

28:                                               ; preds = %15
  %29 = load i32, i32* @hi3798cv200_fixed_rate_clks, align 4
  %30 = load i32, i32* @hi3798cv200_fixed_rate_clks, align 4
  %31 = call i32 @ARRAY_SIZE(i32 %30)
  %32 = load %struct.hisi_clock_data*, %struct.hisi_clock_data** %4, align 8
  %33 = call i32 @hisi_clk_register_fixed_rate(i32 %29, i32 %31, %struct.hisi_clock_data* %32)
  store i32 %33, i32* %5, align 4
  %34 = load i32, i32* %5, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %28
  %37 = load i32, i32* %5, align 4
  %38 = call %struct.hisi_clock_data* @ERR_PTR(i32 %37)
  store %struct.hisi_clock_data* %38, %struct.hisi_clock_data** %2, align 8
  br label %91

39:                                               ; preds = %28
  %40 = load i32, i32* @hi3798cv200_mux_clks, align 4
  %41 = load i32, i32* @hi3798cv200_mux_clks, align 4
  %42 = call i32 @ARRAY_SIZE(i32 %41)
  %43 = load %struct.hisi_clock_data*, %struct.hisi_clock_data** %4, align 8
  %44 = call i32 @hisi_clk_register_mux(i32 %40, i32 %42, %struct.hisi_clock_data* %43)
  store i32 %44, i32* %5, align 4
  %45 = load i32, i32* %5, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %39
  br label %83

48:                                               ; preds = %39
  %49 = load i32, i32* @hi3798cv200_gate_clks, align 4
  %50 = load i32, i32* @hi3798cv200_gate_clks, align 4
  %51 = call i32 @ARRAY_SIZE(i32 %50)
  %52 = load %struct.hisi_clock_data*, %struct.hisi_clock_data** %4, align 8
  %53 = call i32 @hisi_clk_register_gate(i32 %49, i32 %51, %struct.hisi_clock_data* %52)
  store i32 %53, i32* %5, align 4
  %54 = load i32, i32* %5, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %48
  br label %77

57:                                               ; preds = %48
  %58 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %59 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* @of_clk_src_onecell_get, align 4
  %63 = load %struct.hisi_clock_data*, %struct.hisi_clock_data** %4, align 8
  %64 = getelementptr inbounds %struct.hisi_clock_data, %struct.hisi_clock_data* %63, i32 0, i32 0
  %65 = call i32 @of_clk_add_provider(i32 %61, i32 %62, i32* %64)
  store i32 %65, i32* %5, align 4
  %66 = load i32, i32* %5, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %69

68:                                               ; preds = %57
  br label %71

69:                                               ; preds = %57
  %70 = load %struct.hisi_clock_data*, %struct.hisi_clock_data** %4, align 8
  store %struct.hisi_clock_data* %70, %struct.hisi_clock_data** %2, align 8
  br label %91

71:                                               ; preds = %68
  %72 = load i32, i32* @hi3798cv200_gate_clks, align 4
  %73 = load i32, i32* @hi3798cv200_gate_clks, align 4
  %74 = call i32 @ARRAY_SIZE(i32 %73)
  %75 = load %struct.hisi_clock_data*, %struct.hisi_clock_data** %4, align 8
  %76 = call i32 @hisi_clk_unregister_gate(i32 %72, i32 %74, %struct.hisi_clock_data* %75)
  br label %77

77:                                               ; preds = %71, %56
  %78 = load i32, i32* @hi3798cv200_mux_clks, align 4
  %79 = load i32, i32* @hi3798cv200_mux_clks, align 4
  %80 = call i32 @ARRAY_SIZE(i32 %79)
  %81 = load %struct.hisi_clock_data*, %struct.hisi_clock_data** %4, align 8
  %82 = call i32 @hisi_clk_unregister_mux(i32 %78, i32 %80, %struct.hisi_clock_data* %81)
  br label %83

83:                                               ; preds = %77, %47
  %84 = load i32, i32* @hi3798cv200_fixed_rate_clks, align 4
  %85 = load i32, i32* @hi3798cv200_fixed_rate_clks, align 4
  %86 = call i32 @ARRAY_SIZE(i32 %85)
  %87 = load %struct.hisi_clock_data*, %struct.hisi_clock_data** %4, align 8
  %88 = call i32 @hisi_clk_unregister_fixed_rate(i32 %84, i32 %86, %struct.hisi_clock_data* %87)
  %89 = load i32, i32* %5, align 4
  %90 = call %struct.hisi_clock_data* @ERR_PTR(i32 %89)
  store %struct.hisi_clock_data* %90, %struct.hisi_clock_data** %2, align 8
  br label %91

91:                                               ; preds = %83, %69, %36, %25, %11
  %92 = load %struct.hisi_clock_data*, %struct.hisi_clock_data** %2, align 8
  ret %struct.hisi_clock_data* %92
}

declare dso_local %struct.hisi_clock_data* @hisi_clk_alloc(%struct.platform_device*, i32) #1

declare dso_local %struct.hisi_clock_data* @ERR_PTR(i32) #1

declare dso_local i32 @hisi_clk_register_phase(%struct.TYPE_2__*, i32, i32, %struct.hisi_clock_data*) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

declare dso_local i32 @hisi_clk_register_fixed_rate(i32, i32, %struct.hisi_clock_data*) #1

declare dso_local i32 @hisi_clk_register_mux(i32, i32, %struct.hisi_clock_data*) #1

declare dso_local i32 @hisi_clk_register_gate(i32, i32, %struct.hisi_clock_data*) #1

declare dso_local i32 @of_clk_add_provider(i32, i32, i32*) #1

declare dso_local i32 @hisi_clk_unregister_gate(i32, i32, %struct.hisi_clock_data*) #1

declare dso_local i32 @hisi_clk_unregister_mux(i32, i32, %struct.hisi_clock_data*) #1

declare dso_local i32 @hisi_clk_unregister_fixed_rate(i32, i32, %struct.hisi_clock_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
