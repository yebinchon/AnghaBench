; ModuleID = '/home/carl/AnghaBench/linux/drivers/char/hw_random/extr_omap3-rom-rng.c_omap3_rom_rng_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/char/hw_random/extr_omap3-rom-rng.c_omap3_rom_rng_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [14 x i8] c"initializing\0A\00", align 1
@omap3_rom_rng_call = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"omap3_rom_rng_call is NULL\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@idle_work = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [4 x i8] c"ick\00", align 1
@rng_clk = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [25 x i8] c"unable to get RNG clock\0A\00", align 1
@omap3_rom_rng_ops = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @omap3_rom_rng_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @omap3_rom_rng_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  store i32 0, i32* %4, align 4
  %5 = call i32 @pr_info(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  %6 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %7 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  store i32 %9, i32* @omap3_rom_rng_call, align 4
  %10 = load i32, i32* @omap3_rom_rng_call, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %16, label %12

12:                                               ; preds = %1
  %13 = call i32 @pr_err(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  %14 = load i32, i32* @EINVAL, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %2, align 4
  br label %38

16:                                               ; preds = %1
  %17 = call i32 @INIT_DELAYED_WORK(i32* @idle_work, i32 (i32)* @omap3_rom_rng_idle)
  %18 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %19 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %18, i32 0, i32 0
  %20 = call i32 @devm_clk_get(%struct.TYPE_2__* %19, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0))
  store i32 %20, i32* @rng_clk, align 4
  %21 = load i32, i32* @rng_clk, align 4
  %22 = call i64 @IS_ERR(i32 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %28

24:                                               ; preds = %16
  %25 = call i32 @pr_err(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0))
  %26 = load i32, i32* @rng_clk, align 4
  %27 = call i32 @PTR_ERR(i32 %26)
  store i32 %27, i32* %2, align 4
  br label %38

28:                                               ; preds = %16
  %29 = load i32, i32* @rng_clk, align 4
  %30 = call i32 @clk_prepare_enable(i32 %29)
  store i32 %30, i32* %4, align 4
  %31 = load i32, i32* %4, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %28
  %34 = load i32, i32* %4, align 4
  store i32 %34, i32* %2, align 4
  br label %38

35:                                               ; preds = %28
  %36 = call i32 @omap3_rom_rng_idle(i32 0)
  %37 = call i32 @hwrng_register(i32* @omap3_rom_rng_ops)
  store i32 %37, i32* %2, align 4
  br label %38

38:                                               ; preds = %35, %33, %24, %12
  %39 = load i32, i32* %2, align 4
  ret i32 %39
}

declare dso_local i32 @pr_info(i8*) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i32 @INIT_DELAYED_WORK(i32*, i32 (i32)*) #1

declare dso_local i32 @omap3_rom_rng_idle(i32) #1

declare dso_local i32 @devm_clk_get(%struct.TYPE_2__*, i8*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @clk_prepare_enable(i32) #1

declare dso_local i32 @hwrng_register(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
