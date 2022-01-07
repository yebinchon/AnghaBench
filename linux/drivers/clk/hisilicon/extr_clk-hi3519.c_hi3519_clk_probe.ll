; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/hisilicon/extr_clk-hi3519.c_hi3519_clk_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/hisilicon/extr_clk-hi3519.c_hi3519_clk_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.hi3519_crg_data = type { i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @hi3519_clk_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hi3519_clk_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.hi3519_crg_data*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %5 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %6 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %5, i32 0, i32 0
  %7 = load i32, i32* @GFP_KERNEL, align 4
  %8 = call %struct.hi3519_crg_data* @devm_kmalloc(i32* %6, i32 8, i32 %7)
  store %struct.hi3519_crg_data* %8, %struct.hi3519_crg_data** %4, align 8
  %9 = load %struct.hi3519_crg_data*, %struct.hi3519_crg_data** %4, align 8
  %10 = icmp ne %struct.hi3519_crg_data* %9, null
  br i1 %10, label %14, label %11

11:                                               ; preds = %1
  %12 = load i32, i32* @ENOMEM, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %2, align 4
  br label %49

14:                                               ; preds = %1
  %15 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %16 = call i32 @hisi_reset_init(%struct.platform_device* %15)
  %17 = load %struct.hi3519_crg_data*, %struct.hi3519_crg_data** %4, align 8
  %18 = getelementptr inbounds %struct.hi3519_crg_data, %struct.hi3519_crg_data* %17, i32 0, i32 1
  store i32 %16, i32* %18, align 4
  %19 = load %struct.hi3519_crg_data*, %struct.hi3519_crg_data** %4, align 8
  %20 = getelementptr inbounds %struct.hi3519_crg_data, %struct.hi3519_crg_data* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %26, label %23

23:                                               ; preds = %14
  %24 = load i32, i32* @ENOMEM, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %2, align 4
  br label %49

26:                                               ; preds = %14
  %27 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %28 = call i32 @hi3519_clk_register(%struct.platform_device* %27)
  %29 = load %struct.hi3519_crg_data*, %struct.hi3519_crg_data** %4, align 8
  %30 = getelementptr inbounds %struct.hi3519_crg_data, %struct.hi3519_crg_data* %29, i32 0, i32 0
  store i32 %28, i32* %30, align 4
  %31 = load %struct.hi3519_crg_data*, %struct.hi3519_crg_data** %4, align 8
  %32 = getelementptr inbounds %struct.hi3519_crg_data, %struct.hi3519_crg_data* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i64 @IS_ERR(i32 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %45

36:                                               ; preds = %26
  %37 = load %struct.hi3519_crg_data*, %struct.hi3519_crg_data** %4, align 8
  %38 = getelementptr inbounds %struct.hi3519_crg_data, %struct.hi3519_crg_data* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @hisi_reset_exit(i32 %39)
  %41 = load %struct.hi3519_crg_data*, %struct.hi3519_crg_data** %4, align 8
  %42 = getelementptr inbounds %struct.hi3519_crg_data, %struct.hi3519_crg_data* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @PTR_ERR(i32 %43)
  store i32 %44, i32* %2, align 4
  br label %49

45:                                               ; preds = %26
  %46 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %47 = load %struct.hi3519_crg_data*, %struct.hi3519_crg_data** %4, align 8
  %48 = call i32 @platform_set_drvdata(%struct.platform_device* %46, %struct.hi3519_crg_data* %47)
  store i32 0, i32* %2, align 4
  br label %49

49:                                               ; preds = %45, %36, %23, %11
  %50 = load i32, i32* %2, align 4
  ret i32 %50
}

declare dso_local %struct.hi3519_crg_data* @devm_kmalloc(i32*, i32, i32) #1

declare dso_local i32 @hisi_reset_init(%struct.platform_device*) #1

declare dso_local i32 @hi3519_clk_register(%struct.platform_device*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @hisi_reset_exit(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.hi3519_crg_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
