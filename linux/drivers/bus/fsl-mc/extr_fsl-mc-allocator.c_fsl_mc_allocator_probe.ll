; ModuleID = '/home/carl/AnghaBench/linux/drivers/bus/fsl-mc/extr_fsl-mc-allocator.c_fsl_mc_allocator_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/bus/fsl-mc/extr_fsl-mc-allocator.c_fsl_mc_allocator_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fsl_mc_device = type { %struct.TYPE_5__, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32 }
%struct.fsl_mc_bus = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [59 x i8] c"Allocatable fsl-mc device bound to fsl_mc_allocator driver\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fsl_mc_device*)* @fsl_mc_allocator_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fsl_mc_allocator_probe(%struct.fsl_mc_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.fsl_mc_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.fsl_mc_device*, align 8
  %6 = alloca %struct.fsl_mc_bus*, align 8
  %7 = alloca i32, align 4
  store %struct.fsl_mc_device* %0, %struct.fsl_mc_device** %3, align 8
  %8 = load %struct.fsl_mc_device*, %struct.fsl_mc_device** %3, align 8
  %9 = call i32 @fsl_mc_is_allocatable(%struct.fsl_mc_device* %8)
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %14, label %11

11:                                               ; preds = %1
  %12 = load i32, i32* @EINVAL, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %2, align 4
  br label %52

14:                                               ; preds = %1
  %15 = load %struct.fsl_mc_device*, %struct.fsl_mc_device** %3, align 8
  %16 = getelementptr inbounds %struct.fsl_mc_device, %struct.fsl_mc_device* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call %struct.fsl_mc_device* @to_fsl_mc_device(i32 %18)
  store %struct.fsl_mc_device* %19, %struct.fsl_mc_device** %5, align 8
  %20 = load %struct.fsl_mc_device*, %struct.fsl_mc_device** %5, align 8
  %21 = getelementptr inbounds %struct.fsl_mc_device, %struct.fsl_mc_device* %20, i32 0, i32 0
  %22 = call i32 @dev_is_fsl_mc(%struct.TYPE_5__* %21)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %27, label %24

24:                                               ; preds = %14
  %25 = load i32, i32* @EINVAL, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %2, align 4
  br label %52

27:                                               ; preds = %14
  %28 = load %struct.fsl_mc_device*, %struct.fsl_mc_device** %5, align 8
  %29 = call %struct.fsl_mc_bus* @to_fsl_mc_bus(%struct.fsl_mc_device* %28)
  store %struct.fsl_mc_bus* %29, %struct.fsl_mc_bus** %6, align 8
  %30 = load %struct.fsl_mc_device*, %struct.fsl_mc_device** %3, align 8
  %31 = getelementptr inbounds %struct.fsl_mc_device, %struct.fsl_mc_device* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @object_type_to_pool_type(i32 %33, i32* %4)
  store i32 %34, i32* %7, align 4
  %35 = load i32, i32* %7, align 4
  %36 = icmp slt i32 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %27
  %38 = load i32, i32* %7, align 4
  store i32 %38, i32* %2, align 4
  br label %52

39:                                               ; preds = %27
  %40 = load %struct.fsl_mc_bus*, %struct.fsl_mc_bus** %6, align 8
  %41 = load i32, i32* %4, align 4
  %42 = load %struct.fsl_mc_device*, %struct.fsl_mc_device** %3, align 8
  %43 = call i32 @fsl_mc_resource_pool_add_device(%struct.fsl_mc_bus* %40, i32 %41, %struct.fsl_mc_device* %42)
  store i32 %43, i32* %7, align 4
  %44 = load i32, i32* %7, align 4
  %45 = icmp slt i32 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %39
  %47 = load i32, i32* %7, align 4
  store i32 %47, i32* %2, align 4
  br label %52

48:                                               ; preds = %39
  %49 = load %struct.fsl_mc_device*, %struct.fsl_mc_device** %3, align 8
  %50 = getelementptr inbounds %struct.fsl_mc_device, %struct.fsl_mc_device* %49, i32 0, i32 0
  %51 = call i32 @dev_dbg(%struct.TYPE_5__* %50, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %52

52:                                               ; preds = %48, %46, %37, %24, %11
  %53 = load i32, i32* %2, align 4
  ret i32 %53
}

declare dso_local i32 @fsl_mc_is_allocatable(%struct.fsl_mc_device*) #1

declare dso_local %struct.fsl_mc_device* @to_fsl_mc_device(i32) #1

declare dso_local i32 @dev_is_fsl_mc(%struct.TYPE_5__*) #1

declare dso_local %struct.fsl_mc_bus* @to_fsl_mc_bus(%struct.fsl_mc_device*) #1

declare dso_local i32 @object_type_to_pool_type(i32, i32*) #1

declare dso_local i32 @fsl_mc_resource_pool_add_device(%struct.fsl_mc_bus*, i32, %struct.fsl_mc_device*) #1

declare dso_local i32 @dev_dbg(%struct.TYPE_5__*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
