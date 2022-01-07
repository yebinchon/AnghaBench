; ModuleID = '/home/carl/AnghaBench/linux/drivers/bus/fsl-mc/extr_dprc-driver.c_dprc_remove_devices.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/bus/fsl-mc/extr_dprc-driver.c_dprc_remove_devices.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fsl_mc_device = type { i32 }
%struct.fsl_mc_obj_desc = type { i32 }
%struct.fsl_mc_child_objs = type { i32, %struct.fsl_mc_obj_desc* }

@__fsl_mc_device_remove_if_not_in_mc = common dso_local global i32 0, align 4
@__fsl_mc_device_remove = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fsl_mc_device*, %struct.fsl_mc_obj_desc*, i32)* @dprc_remove_devices to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dprc_remove_devices(%struct.fsl_mc_device* %0, %struct.fsl_mc_obj_desc* %1, i32 %2) #0 {
  %4 = alloca %struct.fsl_mc_device*, align 8
  %5 = alloca %struct.fsl_mc_obj_desc*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.fsl_mc_child_objs, align 8
  store %struct.fsl_mc_device* %0, %struct.fsl_mc_device** %4, align 8
  store %struct.fsl_mc_obj_desc* %1, %struct.fsl_mc_obj_desc** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load i32, i32* %6, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %19

10:                                               ; preds = %3
  %11 = load i32, i32* %6, align 4
  %12 = getelementptr inbounds %struct.fsl_mc_child_objs, %struct.fsl_mc_child_objs* %7, i32 0, i32 0
  store i32 %11, i32* %12, align 8
  %13 = load %struct.fsl_mc_obj_desc*, %struct.fsl_mc_obj_desc** %5, align 8
  %14 = getelementptr inbounds %struct.fsl_mc_child_objs, %struct.fsl_mc_child_objs* %7, i32 0, i32 1
  store %struct.fsl_mc_obj_desc* %13, %struct.fsl_mc_obj_desc** %14, align 8
  %15 = load %struct.fsl_mc_device*, %struct.fsl_mc_device** %4, align 8
  %16 = getelementptr inbounds %struct.fsl_mc_device, %struct.fsl_mc_device* %15, i32 0, i32 0
  %17 = load i32, i32* @__fsl_mc_device_remove_if_not_in_mc, align 4
  %18 = call i32 @device_for_each_child(i32* %16, %struct.fsl_mc_child_objs* %7, i32 %17)
  br label %24

19:                                               ; preds = %3
  %20 = load %struct.fsl_mc_device*, %struct.fsl_mc_device** %4, align 8
  %21 = getelementptr inbounds %struct.fsl_mc_device, %struct.fsl_mc_device* %20, i32 0, i32 0
  %22 = load i32, i32* @__fsl_mc_device_remove, align 4
  %23 = call i32 @device_for_each_child(i32* %21, %struct.fsl_mc_child_objs* null, i32 %22)
  br label %24

24:                                               ; preds = %19, %10
  ret void
}

declare dso_local i32 @device_for_each_child(i32*, %struct.fsl_mc_child_objs*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
