; ModuleID = '/home/carl/AnghaBench/linux/drivers/bus/fsl-mc/extr_dprc-driver.c_check_plugged_state_change.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/bus/fsl-mc/extr_dprc-driver.c_check_plugged_state_change.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fsl_mc_device = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.fsl_mc_obj_desc = type { i32 }

@FSL_MC_OBJ_STATE_PLUGGED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"device_attach() failed: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fsl_mc_device*, %struct.fsl_mc_obj_desc*)* @check_plugged_state_change to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @check_plugged_state_change(%struct.fsl_mc_device* %0, %struct.fsl_mc_obj_desc* %1) #0 {
  %3 = alloca %struct.fsl_mc_device*, align 8
  %4 = alloca %struct.fsl_mc_obj_desc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.fsl_mc_device* %0, %struct.fsl_mc_device** %3, align 8
  store %struct.fsl_mc_obj_desc* %1, %struct.fsl_mc_obj_desc** %4, align 8
  %7 = load %struct.fsl_mc_obj_desc*, %struct.fsl_mc_obj_desc** %4, align 8
  %8 = getelementptr inbounds %struct.fsl_mc_obj_desc, %struct.fsl_mc_obj_desc* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = load i32, i32* @FSL_MC_OBJ_STATE_PLUGGED, align 4
  %11 = and i32 %9, %10
  store i32 %11, i32* %6, align 4
  %12 = load i32, i32* %6, align 4
  %13 = load %struct.fsl_mc_device*, %struct.fsl_mc_device** %3, align 8
  %14 = getelementptr inbounds %struct.fsl_mc_device, %struct.fsl_mc_device* %13, i32 0, i32 1
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @FSL_MC_OBJ_STATE_PLUGGED, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %12, %18
  br i1 %19, label %20, label %53

20:                                               ; preds = %2
  %21 = load i32, i32* %6, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %41

23:                                               ; preds = %20
  %24 = load i32, i32* @FSL_MC_OBJ_STATE_PLUGGED, align 4
  %25 = load %struct.fsl_mc_device*, %struct.fsl_mc_device** %3, align 8
  %26 = getelementptr inbounds %struct.fsl_mc_device, %struct.fsl_mc_device* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = or i32 %28, %24
  store i32 %29, i32* %27, align 4
  %30 = load %struct.fsl_mc_device*, %struct.fsl_mc_device** %3, align 8
  %31 = getelementptr inbounds %struct.fsl_mc_device, %struct.fsl_mc_device* %30, i32 0, i32 0
  %32 = call i32 @device_attach(i32* %31)
  store i32 %32, i32* %5, align 4
  %33 = load i32, i32* %5, align 4
  %34 = icmp slt i32 %33, 0
  br i1 %34, label %35, label %40

35:                                               ; preds = %23
  %36 = load %struct.fsl_mc_device*, %struct.fsl_mc_device** %3, align 8
  %37 = getelementptr inbounds %struct.fsl_mc_device, %struct.fsl_mc_device* %36, i32 0, i32 0
  %38 = load i32, i32* %5, align 4
  %39 = call i32 @dev_err(i32* %37, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %38)
  br label %40

40:                                               ; preds = %35, %23
  br label %52

41:                                               ; preds = %20
  %42 = load i32, i32* @FSL_MC_OBJ_STATE_PLUGGED, align 4
  %43 = xor i32 %42, -1
  %44 = load %struct.fsl_mc_device*, %struct.fsl_mc_device** %3, align 8
  %45 = getelementptr inbounds %struct.fsl_mc_device, %struct.fsl_mc_device* %44, i32 0, i32 1
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = and i32 %47, %43
  store i32 %48, i32* %46, align 4
  %49 = load %struct.fsl_mc_device*, %struct.fsl_mc_device** %3, align 8
  %50 = getelementptr inbounds %struct.fsl_mc_device, %struct.fsl_mc_device* %49, i32 0, i32 0
  %51 = call i32 @device_release_driver(i32* %50)
  br label %52

52:                                               ; preds = %41, %40
  br label %53

53:                                               ; preds = %52, %2
  ret void
}

declare dso_local i32 @device_attach(i32*) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

declare dso_local i32 @device_release_driver(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
