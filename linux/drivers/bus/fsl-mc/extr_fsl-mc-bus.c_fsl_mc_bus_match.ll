; ModuleID = '/home/carl/AnghaBench/linux/drivers/bus/fsl-mc/extr_fsl-mc-bus.c_fsl_mc_bus_match.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/bus/fsl-mc/extr_fsl-mc-bus.c_fsl_mc_bus_match.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_driver = type { i32 }
%struct.fsl_mc_device_id = type { i32, i32 }
%struct.fsl_mc_device = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32, i32, i32 }
%struct.fsl_mc_driver = type { %struct.fsl_mc_device_id* }

@FSL_MC_OBJ_STATE_PLUGGED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"%smatched\0A\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"not \00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_driver*)* @fsl_mc_bus_match to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fsl_mc_bus_match(%struct.device* %0, %struct.device_driver* %1) #0 {
  %3 = alloca %struct.device*, align 8
  %4 = alloca %struct.device_driver*, align 8
  %5 = alloca %struct.fsl_mc_device_id*, align 8
  %6 = alloca %struct.fsl_mc_device*, align 8
  %7 = alloca %struct.fsl_mc_driver*, align 8
  %8 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %3, align 8
  store %struct.device_driver* %1, %struct.device_driver** %4, align 8
  %9 = load %struct.device*, %struct.device** %3, align 8
  %10 = call %struct.fsl_mc_device* @to_fsl_mc_device(%struct.device* %9)
  store %struct.fsl_mc_device* %10, %struct.fsl_mc_device** %6, align 8
  %11 = load %struct.device_driver*, %struct.device_driver** %4, align 8
  %12 = call %struct.fsl_mc_driver* @to_fsl_mc_driver(%struct.device_driver* %11)
  store %struct.fsl_mc_driver* %12, %struct.fsl_mc_driver** %7, align 8
  store i32 0, i32* %8, align 4
  %13 = load %struct.fsl_mc_driver*, %struct.fsl_mc_driver** %7, align 8
  %14 = getelementptr inbounds %struct.fsl_mc_driver, %struct.fsl_mc_driver* %13, i32 0, i32 0
  %15 = load %struct.fsl_mc_device_id*, %struct.fsl_mc_device_id** %14, align 8
  %16 = icmp ne %struct.fsl_mc_device_id* %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %2
  br label %66

18:                                               ; preds = %2
  %19 = load %struct.fsl_mc_device*, %struct.fsl_mc_device** %6, align 8
  %20 = getelementptr inbounds %struct.fsl_mc_device, %struct.fsl_mc_device* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @FSL_MC_OBJ_STATE_PLUGGED, align 4
  %24 = and i32 %22, %23
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %32

26:                                               ; preds = %18
  %27 = load %struct.fsl_mc_device*, %struct.fsl_mc_device** %6, align 8
  %28 = getelementptr inbounds %struct.fsl_mc_device, %struct.fsl_mc_device* %27, i32 0, i32 1
  %29 = call i32 @fsl_mc_is_root_dprc(i32* %28)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %32, label %31

31:                                               ; preds = %26
  br label %66

32:                                               ; preds = %26, %18
  %33 = load %struct.fsl_mc_driver*, %struct.fsl_mc_driver** %7, align 8
  %34 = getelementptr inbounds %struct.fsl_mc_driver, %struct.fsl_mc_driver* %33, i32 0, i32 0
  %35 = load %struct.fsl_mc_device_id*, %struct.fsl_mc_device_id** %34, align 8
  store %struct.fsl_mc_device_id* %35, %struct.fsl_mc_device_id** %5, align 8
  br label %36

36:                                               ; preds = %62, %32
  %37 = load %struct.fsl_mc_device_id*, %struct.fsl_mc_device_id** %5, align 8
  %38 = getelementptr inbounds %struct.fsl_mc_device_id, %struct.fsl_mc_device_id* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %65

41:                                               ; preds = %36
  %42 = load %struct.fsl_mc_device_id*, %struct.fsl_mc_device_id** %5, align 8
  %43 = getelementptr inbounds %struct.fsl_mc_device_id, %struct.fsl_mc_device_id* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.fsl_mc_device*, %struct.fsl_mc_device** %6, align 8
  %46 = getelementptr inbounds %struct.fsl_mc_device, %struct.fsl_mc_device* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = icmp eq i32 %44, %48
  br i1 %49, label %50, label %61

50:                                               ; preds = %41
  %51 = load %struct.fsl_mc_device_id*, %struct.fsl_mc_device_id** %5, align 8
  %52 = getelementptr inbounds %struct.fsl_mc_device_id, %struct.fsl_mc_device_id* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.fsl_mc_device*, %struct.fsl_mc_device** %6, align 8
  %55 = getelementptr inbounds %struct.fsl_mc_device, %struct.fsl_mc_device* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 4
  %58 = call i64 @strcmp(i32 %53, i32 %57)
  %59 = icmp eq i64 %58, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %50
  store i32 1, i32* %8, align 4
  br label %65

61:                                               ; preds = %50, %41
  br label %62

62:                                               ; preds = %61
  %63 = load %struct.fsl_mc_device_id*, %struct.fsl_mc_device_id** %5, align 8
  %64 = getelementptr inbounds %struct.fsl_mc_device_id, %struct.fsl_mc_device_id* %63, i32 1
  store %struct.fsl_mc_device_id* %64, %struct.fsl_mc_device_id** %5, align 8
  br label %36

65:                                               ; preds = %60, %36
  br label %66

66:                                               ; preds = %65, %31, %17
  %67 = load %struct.device*, %struct.device** %3, align 8
  %68 = load i32, i32* %8, align 4
  %69 = icmp ne i32 %68, 0
  %70 = zext i1 %69 to i64
  %71 = select i1 %69, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)
  %72 = call i32 @dev_dbg(%struct.device* %67, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i8* %71)
  %73 = load i32, i32* %8, align 4
  ret i32 %73
}

declare dso_local %struct.fsl_mc_device* @to_fsl_mc_device(%struct.device*) #1

declare dso_local %struct.fsl_mc_driver* @to_fsl_mc_driver(%struct.device_driver*) #1

declare dso_local i32 @fsl_mc_is_root_dprc(i32*) #1

declare dso_local i64 @strcmp(i32, i32) #1

declare dso_local i32 @dev_dbg(%struct.device*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
