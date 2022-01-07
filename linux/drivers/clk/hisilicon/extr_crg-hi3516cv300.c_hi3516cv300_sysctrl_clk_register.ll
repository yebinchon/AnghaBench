; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/hisilicon/extr_crg-hi3516cv300.c_hi3516cv300_sysctrl_clk_register.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/hisilicon/extr_crg-hi3516cv300.c_hi3516cv300_sysctrl_clk_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hisi_clock_data = type { i32 }
%struct.platform_device = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@HI3516CV300_SYSCTRL_NR_CLKS = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@hi3516cv300_sysctrl_mux_clks = common dso_local global i32 0, align 4
@of_clk_src_onecell_get = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.hisi_clock_data* (%struct.platform_device*)* @hi3516cv300_sysctrl_clk_register to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.hisi_clock_data* @hi3516cv300_sysctrl_clk_register(%struct.platform_device* %0) #0 {
  %2 = alloca %struct.hisi_clock_data*, align 8
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.hisi_clock_data*, align 8
  %5 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %6 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %7 = load i32, i32* @HI3516CV300_SYSCTRL_NR_CLKS, align 4
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
  br label %48

15:                                               ; preds = %1
  %16 = load i32, i32* @hi3516cv300_sysctrl_mux_clks, align 4
  %17 = load i32, i32* @hi3516cv300_sysctrl_mux_clks, align 4
  %18 = call i32 @ARRAY_SIZE(i32 %17)
  %19 = load %struct.hisi_clock_data*, %struct.hisi_clock_data** %4, align 8
  %20 = call i32 @hisi_clk_register_mux(i32 %16, i32 %18, %struct.hisi_clock_data* %19)
  store i32 %20, i32* %5, align 4
  %21 = load i32, i32* %5, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %15
  %24 = load i32, i32* %5, align 4
  %25 = call %struct.hisi_clock_data* @ERR_PTR(i32 %24)
  store %struct.hisi_clock_data* %25, %struct.hisi_clock_data** %2, align 8
  br label %48

26:                                               ; preds = %15
  %27 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %28 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @of_clk_src_onecell_get, align 4
  %32 = load %struct.hisi_clock_data*, %struct.hisi_clock_data** %4, align 8
  %33 = getelementptr inbounds %struct.hisi_clock_data, %struct.hisi_clock_data* %32, i32 0, i32 0
  %34 = call i32 @of_clk_add_provider(i32 %30, i32 %31, i32* %33)
  store i32 %34, i32* %5, align 4
  %35 = load i32, i32* %5, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %26
  br label %40

38:                                               ; preds = %26
  %39 = load %struct.hisi_clock_data*, %struct.hisi_clock_data** %4, align 8
  store %struct.hisi_clock_data* %39, %struct.hisi_clock_data** %2, align 8
  br label %48

40:                                               ; preds = %37
  %41 = load i32, i32* @hi3516cv300_sysctrl_mux_clks, align 4
  %42 = load i32, i32* @hi3516cv300_sysctrl_mux_clks, align 4
  %43 = call i32 @ARRAY_SIZE(i32 %42)
  %44 = load %struct.hisi_clock_data*, %struct.hisi_clock_data** %4, align 8
  %45 = call i32 @hisi_clk_unregister_mux(i32 %41, i32 %43, %struct.hisi_clock_data* %44)
  %46 = load i32, i32* %5, align 4
  %47 = call %struct.hisi_clock_data* @ERR_PTR(i32 %46)
  store %struct.hisi_clock_data* %47, %struct.hisi_clock_data** %2, align 8
  br label %48

48:                                               ; preds = %40, %38, %23, %11
  %49 = load %struct.hisi_clock_data*, %struct.hisi_clock_data** %2, align 8
  ret %struct.hisi_clock_data* %49
}

declare dso_local %struct.hisi_clock_data* @hisi_clk_alloc(%struct.platform_device*, i32) #1

declare dso_local %struct.hisi_clock_data* @ERR_PTR(i32) #1

declare dso_local i32 @hisi_clk_register_mux(i32, i32, %struct.hisi_clock_data*) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

declare dso_local i32 @of_clk_add_provider(i32, i32, i32*) #1

declare dso_local i32 @hisi_clk_unregister_mux(i32, i32, %struct.hisi_clock_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
