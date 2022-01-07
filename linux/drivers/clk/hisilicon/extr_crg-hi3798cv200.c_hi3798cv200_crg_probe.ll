; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/hisilicon/extr_crg-hi3798cv200.c_hi3798cv200_crg_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/hisilicon/extr_crg-hi3798cv200.c_hi3798cv200_crg_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.hisi_crg_dev = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.platform_device*)* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @hi3798cv200_crg_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hi3798cv200_crg_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.hisi_crg_dev*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %5 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %6 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %5, i32 0, i32 0
  %7 = load i32, i32* @GFP_KERNEL, align 4
  %8 = call %struct.hisi_crg_dev* @devm_kmalloc(i32* %6, i32 16, i32 %7)
  store %struct.hisi_crg_dev* %8, %struct.hisi_crg_dev** %4, align 8
  %9 = load %struct.hisi_crg_dev*, %struct.hisi_crg_dev** %4, align 8
  %10 = icmp ne %struct.hisi_crg_dev* %9, null
  br i1 %10, label %14, label %11

11:                                               ; preds = %1
  %12 = load i32, i32* @ENOMEM, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %2, align 4
  br label %67

14:                                               ; preds = %1
  %15 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %16 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %15, i32 0, i32 0
  %17 = call %struct.TYPE_2__* @of_device_get_match_data(i32* %16)
  %18 = load %struct.hisi_crg_dev*, %struct.hisi_crg_dev** %4, align 8
  %19 = getelementptr inbounds %struct.hisi_crg_dev, %struct.hisi_crg_dev* %18, i32 0, i32 2
  store %struct.TYPE_2__* %17, %struct.TYPE_2__** %19, align 8
  %20 = load %struct.hisi_crg_dev*, %struct.hisi_crg_dev** %4, align 8
  %21 = getelementptr inbounds %struct.hisi_crg_dev, %struct.hisi_crg_dev* %20, i32 0, i32 2
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = icmp ne %struct.TYPE_2__* %22, null
  br i1 %23, label %27, label %24

24:                                               ; preds = %14
  %25 = load i32, i32* @ENOENT, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %2, align 4
  br label %67

27:                                               ; preds = %14
  %28 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %29 = call i32 @hisi_reset_init(%struct.platform_device* %28)
  %30 = load %struct.hisi_crg_dev*, %struct.hisi_crg_dev** %4, align 8
  %31 = getelementptr inbounds %struct.hisi_crg_dev, %struct.hisi_crg_dev* %30, i32 0, i32 1
  store i32 %29, i32* %31, align 4
  %32 = load %struct.hisi_crg_dev*, %struct.hisi_crg_dev** %4, align 8
  %33 = getelementptr inbounds %struct.hisi_crg_dev, %struct.hisi_crg_dev* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %39, label %36

36:                                               ; preds = %27
  %37 = load i32, i32* @ENOMEM, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %2, align 4
  br label %67

39:                                               ; preds = %27
  %40 = load %struct.hisi_crg_dev*, %struct.hisi_crg_dev** %4, align 8
  %41 = getelementptr inbounds %struct.hisi_crg_dev, %struct.hisi_crg_dev* %40, i32 0, i32 2
  %42 = load %struct.TYPE_2__*, %struct.TYPE_2__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  %44 = load i32 (%struct.platform_device*)*, i32 (%struct.platform_device*)** %43, align 8
  %45 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %46 = call i32 %44(%struct.platform_device* %45)
  %47 = load %struct.hisi_crg_dev*, %struct.hisi_crg_dev** %4, align 8
  %48 = getelementptr inbounds %struct.hisi_crg_dev, %struct.hisi_crg_dev* %47, i32 0, i32 0
  store i32 %46, i32* %48, align 8
  %49 = load %struct.hisi_crg_dev*, %struct.hisi_crg_dev** %4, align 8
  %50 = getelementptr inbounds %struct.hisi_crg_dev, %struct.hisi_crg_dev* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = call i64 @IS_ERR(i32 %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %63

54:                                               ; preds = %39
  %55 = load %struct.hisi_crg_dev*, %struct.hisi_crg_dev** %4, align 8
  %56 = getelementptr inbounds %struct.hisi_crg_dev, %struct.hisi_crg_dev* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @hisi_reset_exit(i32 %57)
  %59 = load %struct.hisi_crg_dev*, %struct.hisi_crg_dev** %4, align 8
  %60 = getelementptr inbounds %struct.hisi_crg_dev, %struct.hisi_crg_dev* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = call i32 @PTR_ERR(i32 %61)
  store i32 %62, i32* %2, align 4
  br label %67

63:                                               ; preds = %39
  %64 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %65 = load %struct.hisi_crg_dev*, %struct.hisi_crg_dev** %4, align 8
  %66 = call i32 @platform_set_drvdata(%struct.platform_device* %64, %struct.hisi_crg_dev* %65)
  store i32 0, i32* %2, align 4
  br label %67

67:                                               ; preds = %63, %54, %36, %24, %11
  %68 = load i32, i32* %2, align 4
  ret i32 %68
}

declare dso_local %struct.hisi_crg_dev* @devm_kmalloc(i32*, i32, i32) #1

declare dso_local %struct.TYPE_2__* @of_device_get_match_data(i32*) #1

declare dso_local i32 @hisi_reset_init(%struct.platform_device*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @hisi_reset_exit(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.hisi_crg_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
