; ModuleID = '/home/carl/AnghaBench/linux/drivers/bus/fsl-mc/extr_dprc-driver.c_fsl_mc_device_lookup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/bus/fsl-mc/extr_dprc-driver.c_fsl_mc_device_lookup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fsl_mc_obj_desc = type { i32 }
%struct.fsl_mc_device = type { i32 }
%struct.device = type { i32 }

@__fsl_mc_device_match = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.fsl_mc_device* (%struct.fsl_mc_obj_desc*, %struct.fsl_mc_device*)* @fsl_mc_device_lookup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.fsl_mc_device* @fsl_mc_device_lookup(%struct.fsl_mc_obj_desc* %0, %struct.fsl_mc_device* %1) #0 {
  %3 = alloca %struct.fsl_mc_obj_desc*, align 8
  %4 = alloca %struct.fsl_mc_device*, align 8
  %5 = alloca %struct.device*, align 8
  store %struct.fsl_mc_obj_desc* %0, %struct.fsl_mc_obj_desc** %3, align 8
  store %struct.fsl_mc_device* %1, %struct.fsl_mc_device** %4, align 8
  %6 = load %struct.fsl_mc_device*, %struct.fsl_mc_device** %4, align 8
  %7 = getelementptr inbounds %struct.fsl_mc_device, %struct.fsl_mc_device* %6, i32 0, i32 0
  %8 = load %struct.fsl_mc_obj_desc*, %struct.fsl_mc_obj_desc** %3, align 8
  %9 = load i32, i32* @__fsl_mc_device_match, align 4
  %10 = call %struct.device* @device_find_child(i32* %7, %struct.fsl_mc_obj_desc* %8, i32 %9)
  store %struct.device* %10, %struct.device** %5, align 8
  %11 = load %struct.device*, %struct.device** %5, align 8
  %12 = icmp ne %struct.device* %11, null
  br i1 %12, label %13, label %16

13:                                               ; preds = %2
  %14 = load %struct.device*, %struct.device** %5, align 8
  %15 = call %struct.fsl_mc_device* @to_fsl_mc_device(%struct.device* %14)
  br label %17

16:                                               ; preds = %2
  br label %17

17:                                               ; preds = %16, %13
  %18 = phi %struct.fsl_mc_device* [ %15, %13 ], [ null, %16 ]
  ret %struct.fsl_mc_device* %18
}

declare dso_local %struct.device* @device_find_child(i32*, %struct.fsl_mc_obj_desc*, i32) #1

declare dso_local %struct.fsl_mc_device* @to_fsl_mc_device(%struct.device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
