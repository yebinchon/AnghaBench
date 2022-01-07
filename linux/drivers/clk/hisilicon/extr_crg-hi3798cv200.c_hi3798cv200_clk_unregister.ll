; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/hisilicon/extr_crg-hi3798cv200.c_hi3798cv200_clk_unregister.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/hisilicon/extr_crg-hi3798cv200.c_hi3798cv200_clk_unregister.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.hisi_crg_dev = type { i32 }

@hi3798cv200_gate_clks = common dso_local global i32 0, align 4
@hi3798cv200_mux_clks = common dso_local global i32 0, align 4
@hi3798cv200_fixed_rate_clks = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.platform_device*)* @hi3798cv200_clk_unregister to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hi3798cv200_clk_unregister(%struct.platform_device* %0) #0 {
  %2 = alloca %struct.platform_device*, align 8
  %3 = alloca %struct.hisi_crg_dev*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %2, align 8
  %4 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %5 = call %struct.hisi_crg_dev* @platform_get_drvdata(%struct.platform_device* %4)
  store %struct.hisi_crg_dev* %5, %struct.hisi_crg_dev** %3, align 8
  %6 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %7 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = call i32 @of_clk_del_provider(i32 %9)
  %11 = load i32, i32* @hi3798cv200_gate_clks, align 4
  %12 = load i32, i32* @hi3798cv200_gate_clks, align 4
  %13 = call i32 @ARRAY_SIZE(i32 %12)
  %14 = load %struct.hisi_crg_dev*, %struct.hisi_crg_dev** %3, align 8
  %15 = getelementptr inbounds %struct.hisi_crg_dev, %struct.hisi_crg_dev* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @hisi_clk_unregister_gate(i32 %11, i32 %13, i32 %16)
  %18 = load i32, i32* @hi3798cv200_mux_clks, align 4
  %19 = load i32, i32* @hi3798cv200_mux_clks, align 4
  %20 = call i32 @ARRAY_SIZE(i32 %19)
  %21 = load %struct.hisi_crg_dev*, %struct.hisi_crg_dev** %3, align 8
  %22 = getelementptr inbounds %struct.hisi_crg_dev, %struct.hisi_crg_dev* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @hisi_clk_unregister_mux(i32 %18, i32 %20, i32 %23)
  %25 = load i32, i32* @hi3798cv200_fixed_rate_clks, align 4
  %26 = load i32, i32* @hi3798cv200_fixed_rate_clks, align 4
  %27 = call i32 @ARRAY_SIZE(i32 %26)
  %28 = load %struct.hisi_crg_dev*, %struct.hisi_crg_dev** %3, align 8
  %29 = getelementptr inbounds %struct.hisi_crg_dev, %struct.hisi_crg_dev* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @hisi_clk_unregister_fixed_rate(i32 %25, i32 %27, i32 %30)
  ret void
}

declare dso_local %struct.hisi_crg_dev* @platform_get_drvdata(%struct.platform_device*) #1

declare dso_local i32 @of_clk_del_provider(i32) #1

declare dso_local i32 @hisi_clk_unregister_gate(i32, i32, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

declare dso_local i32 @hisi_clk_unregister_mux(i32, i32, i32) #1

declare dso_local i32 @hisi_clk_unregister_fixed_rate(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
