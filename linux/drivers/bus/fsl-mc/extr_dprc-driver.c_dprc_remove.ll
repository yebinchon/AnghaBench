; ModuleID = '/home/carl/AnghaBench/linux/drivers/bus/fsl-mc/extr_dprc-driver.c_dprc_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/bus/fsl-mc/extr_dprc-driver.c_dprc_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fsl_mc_device = type { i32, i32*, i32 }
%struct.fsl_mc_bus = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@__fsl_mc_device_remove = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"dprc_close() failed: %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"DPRC device unbound from driver\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fsl_mc_device*)* @dprc_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dprc_remove(%struct.fsl_mc_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.fsl_mc_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.fsl_mc_bus*, align 8
  store %struct.fsl_mc_device* %0, %struct.fsl_mc_device** %3, align 8
  %6 = load %struct.fsl_mc_device*, %struct.fsl_mc_device** %3, align 8
  %7 = call %struct.fsl_mc_bus* @to_fsl_mc_bus(%struct.fsl_mc_device* %6)
  store %struct.fsl_mc_bus* %7, %struct.fsl_mc_bus** %5, align 8
  %8 = load %struct.fsl_mc_device*, %struct.fsl_mc_device** %3, align 8
  %9 = call i32 @is_fsl_mc_bus_dprc(%struct.fsl_mc_device* %8)
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %14, label %11

11:                                               ; preds = %1
  %12 = load i32, i32* @EINVAL, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %2, align 4
  br label %86

14:                                               ; preds = %1
  %15 = load %struct.fsl_mc_device*, %struct.fsl_mc_device** %3, align 8
  %16 = getelementptr inbounds %struct.fsl_mc_device, %struct.fsl_mc_device* %15, i32 0, i32 1
  %17 = load i32*, i32** %16, align 8
  %18 = icmp ne i32* %17, null
  br i1 %18, label %22, label %19

19:                                               ; preds = %14
  %20 = load i32, i32* @EINVAL, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %2, align 4
  br label %86

22:                                               ; preds = %14
  %23 = load %struct.fsl_mc_bus*, %struct.fsl_mc_bus** %5, align 8
  %24 = getelementptr inbounds %struct.fsl_mc_bus, %struct.fsl_mc_bus* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %30, label %27

27:                                               ; preds = %22
  %28 = load i32, i32* @EINVAL, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %2, align 4
  br label %86

30:                                               ; preds = %22
  %31 = load %struct.fsl_mc_device*, %struct.fsl_mc_device** %3, align 8
  %32 = getelementptr inbounds %struct.fsl_mc_device, %struct.fsl_mc_device* %31, i32 0, i32 0
  %33 = call i64 @dev_get_msi_domain(i32* %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %30
  %36 = load %struct.fsl_mc_device*, %struct.fsl_mc_device** %3, align 8
  %37 = call i32 @dprc_teardown_irq(%struct.fsl_mc_device* %36)
  br label %38

38:                                               ; preds = %35, %30
  %39 = load %struct.fsl_mc_device*, %struct.fsl_mc_device** %3, align 8
  %40 = getelementptr inbounds %struct.fsl_mc_device, %struct.fsl_mc_device* %39, i32 0, i32 0
  %41 = load i32, i32* @__fsl_mc_device_remove, align 4
  %42 = call i32 @device_for_each_child(i32* %40, i32* null, i32 %41)
  %43 = load %struct.fsl_mc_device*, %struct.fsl_mc_device** %3, align 8
  %44 = getelementptr inbounds %struct.fsl_mc_device, %struct.fsl_mc_device* %43, i32 0, i32 0
  %45 = call i64 @dev_get_msi_domain(i32* %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %53

47:                                               ; preds = %38
  %48 = load %struct.fsl_mc_bus*, %struct.fsl_mc_bus** %5, align 8
  %49 = call i32 @fsl_mc_cleanup_irq_pool(%struct.fsl_mc_bus* %48)
  %50 = load %struct.fsl_mc_device*, %struct.fsl_mc_device** %3, align 8
  %51 = getelementptr inbounds %struct.fsl_mc_device, %struct.fsl_mc_device* %50, i32 0, i32 0
  %52 = call i32 @dev_set_msi_domain(i32* %51, i32* null)
  br label %53

53:                                               ; preds = %47, %38
  %54 = load %struct.fsl_mc_device*, %struct.fsl_mc_device** %3, align 8
  %55 = call i32 @fsl_mc_cleanup_all_resource_pools(%struct.fsl_mc_device* %54)
  %56 = load %struct.fsl_mc_device*, %struct.fsl_mc_device** %3, align 8
  %57 = getelementptr inbounds %struct.fsl_mc_device, %struct.fsl_mc_device* %56, i32 0, i32 1
  %58 = load i32*, i32** %57, align 8
  %59 = load %struct.fsl_mc_device*, %struct.fsl_mc_device** %3, align 8
  %60 = getelementptr inbounds %struct.fsl_mc_device, %struct.fsl_mc_device* %59, i32 0, i32 2
  %61 = load i32, i32* %60, align 8
  %62 = call i32 @dprc_close(i32* %58, i32 0, i32 %61)
  store i32 %62, i32* %4, align 4
  %63 = load i32, i32* %4, align 4
  %64 = icmp slt i32 %63, 0
  br i1 %64, label %65, label %70

65:                                               ; preds = %53
  %66 = load %struct.fsl_mc_device*, %struct.fsl_mc_device** %3, align 8
  %67 = getelementptr inbounds %struct.fsl_mc_device, %struct.fsl_mc_device* %66, i32 0, i32 0
  %68 = load i32, i32* %4, align 4
  %69 = call i32 @dev_err(i32* %67, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %68)
  br label %70

70:                                               ; preds = %65, %53
  %71 = load %struct.fsl_mc_device*, %struct.fsl_mc_device** %3, align 8
  %72 = getelementptr inbounds %struct.fsl_mc_device, %struct.fsl_mc_device* %71, i32 0, i32 0
  %73 = call i32 @fsl_mc_is_root_dprc(i32* %72)
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %82, label %75

75:                                               ; preds = %70
  %76 = load %struct.fsl_mc_device*, %struct.fsl_mc_device** %3, align 8
  %77 = getelementptr inbounds %struct.fsl_mc_device, %struct.fsl_mc_device* %76, i32 0, i32 1
  %78 = load i32*, i32** %77, align 8
  %79 = call i32 @fsl_destroy_mc_io(i32* %78)
  %80 = load %struct.fsl_mc_device*, %struct.fsl_mc_device** %3, align 8
  %81 = getelementptr inbounds %struct.fsl_mc_device, %struct.fsl_mc_device* %80, i32 0, i32 1
  store i32* null, i32** %81, align 8
  br label %82

82:                                               ; preds = %75, %70
  %83 = load %struct.fsl_mc_device*, %struct.fsl_mc_device** %3, align 8
  %84 = getelementptr inbounds %struct.fsl_mc_device, %struct.fsl_mc_device* %83, i32 0, i32 0
  %85 = call i32 @dev_info(i32* %84, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %86

86:                                               ; preds = %82, %27, %19, %11
  %87 = load i32, i32* %2, align 4
  ret i32 %87
}

declare dso_local %struct.fsl_mc_bus* @to_fsl_mc_bus(%struct.fsl_mc_device*) #1

declare dso_local i32 @is_fsl_mc_bus_dprc(%struct.fsl_mc_device*) #1

declare dso_local i64 @dev_get_msi_domain(i32*) #1

declare dso_local i32 @dprc_teardown_irq(%struct.fsl_mc_device*) #1

declare dso_local i32 @device_for_each_child(i32*, i32*, i32) #1

declare dso_local i32 @fsl_mc_cleanup_irq_pool(%struct.fsl_mc_bus*) #1

declare dso_local i32 @dev_set_msi_domain(i32*, i32*) #1

declare dso_local i32 @fsl_mc_cleanup_all_resource_pools(%struct.fsl_mc_device*) #1

declare dso_local i32 @dprc_close(i32*, i32, i32) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

declare dso_local i32 @fsl_mc_is_root_dprc(i32*) #1

declare dso_local i32 @fsl_destroy_mc_io(i32*) #1

declare dso_local i32 @dev_info(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
