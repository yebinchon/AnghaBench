; ModuleID = '/home/carl/AnghaBench/linux/drivers/bus/fsl-mc/extr_dprc-driver.c_dprc_add_new_devices.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/bus/fsl-mc/extr_dprc-driver.c_dprc_add_new_devices.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fsl_mc_device = type { i32 }
%struct.fsl_mc_obj_desc = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fsl_mc_device*, %struct.fsl_mc_obj_desc*, i32)* @dprc_add_new_devices to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dprc_add_new_devices(%struct.fsl_mc_device* %0, %struct.fsl_mc_obj_desc* %1, i32 %2) #0 {
  %4 = alloca %struct.fsl_mc_device*, align 8
  %5 = alloca %struct.fsl_mc_obj_desc*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.fsl_mc_device*, align 8
  %10 = alloca %struct.fsl_mc_obj_desc*, align 8
  store %struct.fsl_mc_device* %0, %struct.fsl_mc_device** %4, align 8
  store %struct.fsl_mc_obj_desc* %1, %struct.fsl_mc_obj_desc** %5, align 8
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %8, align 4
  br label %11

11:                                               ; preds = %48, %3
  %12 = load i32, i32* %8, align 4
  %13 = load i32, i32* %6, align 4
  %14 = icmp slt i32 %12, %13
  br i1 %14, label %15, label %51

15:                                               ; preds = %11
  %16 = load %struct.fsl_mc_obj_desc*, %struct.fsl_mc_obj_desc** %5, align 8
  %17 = load i32, i32* %8, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds %struct.fsl_mc_obj_desc, %struct.fsl_mc_obj_desc* %16, i64 %18
  store %struct.fsl_mc_obj_desc* %19, %struct.fsl_mc_obj_desc** %10, align 8
  %20 = load %struct.fsl_mc_obj_desc*, %struct.fsl_mc_obj_desc** %10, align 8
  %21 = getelementptr inbounds %struct.fsl_mc_obj_desc, %struct.fsl_mc_obj_desc* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i64 @strlen(i32 %22)
  %24 = icmp eq i64 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %15
  br label %48

26:                                               ; preds = %15
  %27 = load %struct.fsl_mc_obj_desc*, %struct.fsl_mc_obj_desc** %10, align 8
  %28 = load %struct.fsl_mc_device*, %struct.fsl_mc_device** %4, align 8
  %29 = call %struct.fsl_mc_device* @fsl_mc_device_lookup(%struct.fsl_mc_obj_desc* %27, %struct.fsl_mc_device* %28)
  store %struct.fsl_mc_device* %29, %struct.fsl_mc_device** %9, align 8
  %30 = load %struct.fsl_mc_device*, %struct.fsl_mc_device** %9, align 8
  %31 = icmp ne %struct.fsl_mc_device* %30, null
  br i1 %31, label %32, label %39

32:                                               ; preds = %26
  %33 = load %struct.fsl_mc_device*, %struct.fsl_mc_device** %9, align 8
  %34 = load %struct.fsl_mc_obj_desc*, %struct.fsl_mc_obj_desc** %10, align 8
  %35 = call i32 @check_plugged_state_change(%struct.fsl_mc_device* %33, %struct.fsl_mc_obj_desc* %34)
  %36 = load %struct.fsl_mc_device*, %struct.fsl_mc_device** %9, align 8
  %37 = getelementptr inbounds %struct.fsl_mc_device, %struct.fsl_mc_device* %36, i32 0, i32 0
  %38 = call i32 @put_device(i32* %37)
  br label %48

39:                                               ; preds = %26
  %40 = load %struct.fsl_mc_obj_desc*, %struct.fsl_mc_obj_desc** %10, align 8
  %41 = load %struct.fsl_mc_device*, %struct.fsl_mc_device** %4, align 8
  %42 = getelementptr inbounds %struct.fsl_mc_device, %struct.fsl_mc_device* %41, i32 0, i32 0
  %43 = call i32 @fsl_mc_device_add(%struct.fsl_mc_obj_desc* %40, i32* null, i32* %42, %struct.fsl_mc_device** %9)
  store i32 %43, i32* %7, align 4
  %44 = load i32, i32* %7, align 4
  %45 = icmp slt i32 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %39
  br label %48

47:                                               ; preds = %39
  br label %48

48:                                               ; preds = %47, %46, %32, %25
  %49 = load i32, i32* %8, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %8, align 4
  br label %11

51:                                               ; preds = %11
  ret void
}

declare dso_local i64 @strlen(i32) #1

declare dso_local %struct.fsl_mc_device* @fsl_mc_device_lookup(%struct.fsl_mc_obj_desc*, %struct.fsl_mc_device*) #1

declare dso_local i32 @check_plugged_state_change(%struct.fsl_mc_device*, %struct.fsl_mc_obj_desc*) #1

declare dso_local i32 @put_device(i32*) #1

declare dso_local i32 @fsl_mc_device_add(%struct.fsl_mc_obj_desc*, i32*, i32*, %struct.fsl_mc_device**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
