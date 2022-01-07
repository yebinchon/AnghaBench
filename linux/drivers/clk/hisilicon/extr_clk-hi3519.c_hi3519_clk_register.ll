; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/hisilicon/extr_clk-hi3519.c_hi3519_clk_register.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/hisilicon/extr_clk-hi3519.c_hi3519_clk_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hisi_clock_data = type { i32 }
%struct.platform_device = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@HI3519_NR_CLKS = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@hi3519_fixed_rate_clks = common dso_local global i32 0, align 4
@hi3519_mux_clks = common dso_local global i32 0, align 4
@hi3519_gate_clks = common dso_local global i32 0, align 4
@of_clk_src_onecell_get = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.hisi_clock_data* (%struct.platform_device*)* @hi3519_clk_register to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.hisi_clock_data* @hi3519_clk_register(%struct.platform_device* %0) #0 {
  %2 = alloca %struct.hisi_clock_data*, align 8
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.hisi_clock_data*, align 8
  %5 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %6 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %7 = load i32, i32* @HI3519_NR_CLKS, align 4
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
  br label %78

15:                                               ; preds = %1
  %16 = load i32, i32* @hi3519_fixed_rate_clks, align 4
  %17 = load i32, i32* @hi3519_fixed_rate_clks, align 4
  %18 = call i32 @ARRAY_SIZE(i32 %17)
  %19 = load %struct.hisi_clock_data*, %struct.hisi_clock_data** %4, align 8
  %20 = call i32 @hisi_clk_register_fixed_rate(i32 %16, i32 %18, %struct.hisi_clock_data* %19)
  store i32 %20, i32* %5, align 4
  %21 = load i32, i32* %5, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %15
  %24 = load i32, i32* %5, align 4
  %25 = call %struct.hisi_clock_data* @ERR_PTR(i32 %24)
  store %struct.hisi_clock_data* %25, %struct.hisi_clock_data** %2, align 8
  br label %78

26:                                               ; preds = %15
  %27 = load i32, i32* @hi3519_mux_clks, align 4
  %28 = load i32, i32* @hi3519_mux_clks, align 4
  %29 = call i32 @ARRAY_SIZE(i32 %28)
  %30 = load %struct.hisi_clock_data*, %struct.hisi_clock_data** %4, align 8
  %31 = call i32 @hisi_clk_register_mux(i32 %27, i32 %29, %struct.hisi_clock_data* %30)
  store i32 %31, i32* %5, align 4
  %32 = load i32, i32* %5, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %26
  br label %58

35:                                               ; preds = %26
  %36 = load i32, i32* @hi3519_gate_clks, align 4
  %37 = load i32, i32* @hi3519_gate_clks, align 4
  %38 = call i32 @ARRAY_SIZE(i32 %37)
  %39 = load %struct.hisi_clock_data*, %struct.hisi_clock_data** %4, align 8
  %40 = call i32 @hisi_clk_register_gate(i32 %36, i32 %38, %struct.hisi_clock_data* %39)
  store i32 %40, i32* %5, align 4
  %41 = load i32, i32* %5, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %35
  br label %64

44:                                               ; preds = %35
  %45 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %46 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* @of_clk_src_onecell_get, align 4
  %50 = load %struct.hisi_clock_data*, %struct.hisi_clock_data** %4, align 8
  %51 = getelementptr inbounds %struct.hisi_clock_data, %struct.hisi_clock_data* %50, i32 0, i32 0
  %52 = call i32 @of_clk_add_provider(i32 %48, i32 %49, i32* %51)
  store i32 %52, i32* %5, align 4
  %53 = load i32, i32* %5, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %44
  br label %70

56:                                               ; preds = %44
  %57 = load %struct.hisi_clock_data*, %struct.hisi_clock_data** %4, align 8
  store %struct.hisi_clock_data* %57, %struct.hisi_clock_data** %2, align 8
  br label %78

58:                                               ; preds = %34
  %59 = load i32, i32* @hi3519_fixed_rate_clks, align 4
  %60 = load i32, i32* @hi3519_fixed_rate_clks, align 4
  %61 = call i32 @ARRAY_SIZE(i32 %60)
  %62 = load %struct.hisi_clock_data*, %struct.hisi_clock_data** %4, align 8
  %63 = call i32 @hisi_clk_unregister_fixed_rate(i32 %59, i32 %61, %struct.hisi_clock_data* %62)
  br label %64

64:                                               ; preds = %58, %43
  %65 = load i32, i32* @hi3519_mux_clks, align 4
  %66 = load i32, i32* @hi3519_mux_clks, align 4
  %67 = call i32 @ARRAY_SIZE(i32 %66)
  %68 = load %struct.hisi_clock_data*, %struct.hisi_clock_data** %4, align 8
  %69 = call i32 @hisi_clk_unregister_mux(i32 %65, i32 %67, %struct.hisi_clock_data* %68)
  br label %70

70:                                               ; preds = %64, %55
  %71 = load i32, i32* @hi3519_gate_clks, align 4
  %72 = load i32, i32* @hi3519_gate_clks, align 4
  %73 = call i32 @ARRAY_SIZE(i32 %72)
  %74 = load %struct.hisi_clock_data*, %struct.hisi_clock_data** %4, align 8
  %75 = call i32 @hisi_clk_unregister_gate(i32 %71, i32 %73, %struct.hisi_clock_data* %74)
  %76 = load i32, i32* %5, align 4
  %77 = call %struct.hisi_clock_data* @ERR_PTR(i32 %76)
  store %struct.hisi_clock_data* %77, %struct.hisi_clock_data** %2, align 8
  br label %78

78:                                               ; preds = %70, %56, %23, %11
  %79 = load %struct.hisi_clock_data*, %struct.hisi_clock_data** %2, align 8
  ret %struct.hisi_clock_data* %79
}

declare dso_local %struct.hisi_clock_data* @hisi_clk_alloc(%struct.platform_device*, i32) #1

declare dso_local %struct.hisi_clock_data* @ERR_PTR(i32) #1

declare dso_local i32 @hisi_clk_register_fixed_rate(i32, i32, %struct.hisi_clock_data*) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

declare dso_local i32 @hisi_clk_register_mux(i32, i32, %struct.hisi_clock_data*) #1

declare dso_local i32 @hisi_clk_register_gate(i32, i32, %struct.hisi_clock_data*) #1

declare dso_local i32 @of_clk_add_provider(i32, i32, i32*) #1

declare dso_local i32 @hisi_clk_unregister_fixed_rate(i32, i32, %struct.hisi_clock_data*) #1

declare dso_local i32 @hisi_clk_unregister_mux(i32, i32, %struct.hisi_clock_data*) #1

declare dso_local i32 @hisi_clk_unregister_gate(i32, i32, %struct.hisi_clock_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
