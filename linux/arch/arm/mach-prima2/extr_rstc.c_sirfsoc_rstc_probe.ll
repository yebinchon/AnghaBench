; ModuleID = '/home/carl/AnghaBench/linux/arch/arm/mach-prima2/extr_rstc.c_sirfsoc_rstc_probe.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm/mach-prima2/extr_rstc.c_sirfsoc_rstc_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.device_node* }
%struct.device_node = type { i32 }
%struct.platform_device = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.device_node* }

@sirfsoc_rstc_base = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"unable to map rstc cpu registers\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@sirfsoc_reset_controller = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@sirfsoc_restart = common dso_local global i32 0, align 4
@arm_pm_restart = common dso_local global i32 0, align 4
@CONFIG_RESET_CONTROLLER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @sirfsoc_rstc_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sirfsoc_rstc_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.device_node*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %5 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %6 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %5, i32 0, i32 0
  %7 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i32 0, i32 0
  %8 = load %struct.device_node*, %struct.device_node** %7, align 8
  store %struct.device_node* %8, %struct.device_node** %4, align 8
  %9 = load %struct.device_node*, %struct.device_node** %4, align 8
  %10 = call i32 @of_iomap(%struct.device_node* %9, i32 0)
  store i32 %10, i32* @sirfsoc_rstc_base, align 4
  %11 = load i32, i32* @sirfsoc_rstc_base, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %19, label %13

13:                                               ; preds = %1
  %14 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %15 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %14, i32 0, i32 0
  %16 = call i32 @dev_err(%struct.TYPE_5__* %15, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  %17 = load i32, i32* @ENOMEM, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %2, align 4
  br label %28

19:                                               ; preds = %1
  %20 = load %struct.device_node*, %struct.device_node** %4, align 8
  store %struct.device_node* %20, %struct.device_node** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @sirfsoc_reset_controller, i32 0, i32 0), align 8
  %21 = load i32, i32* @sirfsoc_restart, align 4
  store i32 %21, i32* @arm_pm_restart, align 4
  %22 = load i32, i32* @CONFIG_RESET_CONTROLLER, align 4
  %23 = call i64 @IS_ENABLED(i32 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %19
  %26 = call i32 @reset_controller_register(%struct.TYPE_4__* @sirfsoc_reset_controller)
  br label %27

27:                                               ; preds = %25, %19
  store i32 0, i32* %2, align 4
  br label %28

28:                                               ; preds = %27, %13
  %29 = load i32, i32* %2, align 4
  ret i32 %29
}

declare dso_local i32 @of_iomap(%struct.device_node*, i32) #1

declare dso_local i32 @dev_err(%struct.TYPE_5__*, i8*) #1

declare dso_local i64 @IS_ENABLED(i32) #1

declare dso_local i32 @reset_controller_register(%struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
