; ModuleID = '/home/carl/AnghaBench/linux/drivers/bus/fsl-mc/extr_fsl-mc-allocator.c_fsl_mc_object_free.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/bus/fsl-mc/extr_fsl-mc-allocator.c_fsl_mc_object_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fsl_mc_device = type { i32*, %struct.fsl_mc_resource* }
%struct.fsl_mc_resource = type { i64, %struct.fsl_mc_device* }

@FSL_MC_POOL_DPMCP = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @fsl_mc_object_free(%struct.fsl_mc_device* %0) #0 {
  %2 = alloca %struct.fsl_mc_device*, align 8
  %3 = alloca %struct.fsl_mc_resource*, align 8
  store %struct.fsl_mc_device* %0, %struct.fsl_mc_device** %2, align 8
  %4 = load %struct.fsl_mc_device*, %struct.fsl_mc_device** %2, align 8
  %5 = getelementptr inbounds %struct.fsl_mc_device, %struct.fsl_mc_device* %4, i32 0, i32 1
  %6 = load %struct.fsl_mc_resource*, %struct.fsl_mc_resource** %5, align 8
  store %struct.fsl_mc_resource* %6, %struct.fsl_mc_resource** %3, align 8
  %7 = load %struct.fsl_mc_resource*, %struct.fsl_mc_resource** %3, align 8
  %8 = getelementptr inbounds %struct.fsl_mc_resource, %struct.fsl_mc_resource* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @FSL_MC_POOL_DPMCP, align 8
  %11 = icmp eq i64 %9, %10
  br i1 %11, label %12, label %13

12:                                               ; preds = %1
  br label %25

13:                                               ; preds = %1
  %14 = load %struct.fsl_mc_resource*, %struct.fsl_mc_resource** %3, align 8
  %15 = getelementptr inbounds %struct.fsl_mc_resource, %struct.fsl_mc_resource* %14, i32 0, i32 1
  %16 = load %struct.fsl_mc_device*, %struct.fsl_mc_device** %15, align 8
  %17 = load %struct.fsl_mc_device*, %struct.fsl_mc_device** %2, align 8
  %18 = icmp ne %struct.fsl_mc_device* %16, %17
  br i1 %18, label %19, label %20

19:                                               ; preds = %13
  br label %25

20:                                               ; preds = %13
  %21 = load %struct.fsl_mc_resource*, %struct.fsl_mc_resource** %3, align 8
  %22 = call i32 @fsl_mc_resource_free(%struct.fsl_mc_resource* %21)
  %23 = load %struct.fsl_mc_device*, %struct.fsl_mc_device** %2, align 8
  %24 = getelementptr inbounds %struct.fsl_mc_device, %struct.fsl_mc_device* %23, i32 0, i32 0
  store i32* null, i32** %24, align 8
  br label %25

25:                                               ; preds = %20, %19, %12
  ret void
}

declare dso_local i32 @fsl_mc_resource_free(%struct.fsl_mc_resource*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
