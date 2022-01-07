; ModuleID = '/home/carl/AnghaBench/linux/drivers/bus/fsl-mc/extr_fsl-mc-allocator.c_fsl_mc_init_all_resource_pools.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/bus/fsl-mc/extr_fsl-mc-allocator.c_fsl_mc_init_all_resource_pools.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fsl_mc_device = type { i32 }
%struct.fsl_mc_bus = type { %struct.fsl_mc_resource_pool* }
%struct.fsl_mc_resource_pool = type { i32, i32, i32, %struct.fsl_mc_bus*, i64, i64 }

@FSL_MC_NUM_POOL_TYPES = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @fsl_mc_init_all_resource_pools(%struct.fsl_mc_device* %0) #0 {
  %2 = alloca %struct.fsl_mc_device*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.fsl_mc_bus*, align 8
  %5 = alloca %struct.fsl_mc_resource_pool*, align 8
  store %struct.fsl_mc_device* %0, %struct.fsl_mc_device** %2, align 8
  %6 = load %struct.fsl_mc_device*, %struct.fsl_mc_device** %2, align 8
  %7 = call %struct.fsl_mc_bus* @to_fsl_mc_bus(%struct.fsl_mc_device* %6)
  store %struct.fsl_mc_bus* %7, %struct.fsl_mc_bus** %4, align 8
  store i32 0, i32* %3, align 4
  br label %8

8:                                                ; preds = %35, %1
  %9 = load i32, i32* %3, align 4
  %10 = load i32, i32* @FSL_MC_NUM_POOL_TYPES, align 4
  %11 = icmp slt i32 %9, %10
  br i1 %11, label %12, label %38

12:                                               ; preds = %8
  %13 = load %struct.fsl_mc_bus*, %struct.fsl_mc_bus** %4, align 8
  %14 = getelementptr inbounds %struct.fsl_mc_bus, %struct.fsl_mc_bus* %13, i32 0, i32 0
  %15 = load %struct.fsl_mc_resource_pool*, %struct.fsl_mc_resource_pool** %14, align 8
  %16 = load i32, i32* %3, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds %struct.fsl_mc_resource_pool, %struct.fsl_mc_resource_pool* %15, i64 %17
  store %struct.fsl_mc_resource_pool* %18, %struct.fsl_mc_resource_pool** %5, align 8
  %19 = load i32, i32* %3, align 4
  %20 = load %struct.fsl_mc_resource_pool*, %struct.fsl_mc_resource_pool** %5, align 8
  %21 = getelementptr inbounds %struct.fsl_mc_resource_pool, %struct.fsl_mc_resource_pool* %20, i32 0, i32 0
  store i32 %19, i32* %21, align 8
  %22 = load %struct.fsl_mc_resource_pool*, %struct.fsl_mc_resource_pool** %5, align 8
  %23 = getelementptr inbounds %struct.fsl_mc_resource_pool, %struct.fsl_mc_resource_pool* %22, i32 0, i32 5
  store i64 0, i64* %23, align 8
  %24 = load %struct.fsl_mc_resource_pool*, %struct.fsl_mc_resource_pool** %5, align 8
  %25 = getelementptr inbounds %struct.fsl_mc_resource_pool, %struct.fsl_mc_resource_pool* %24, i32 0, i32 4
  store i64 0, i64* %25, align 8
  %26 = load %struct.fsl_mc_bus*, %struct.fsl_mc_bus** %4, align 8
  %27 = load %struct.fsl_mc_resource_pool*, %struct.fsl_mc_resource_pool** %5, align 8
  %28 = getelementptr inbounds %struct.fsl_mc_resource_pool, %struct.fsl_mc_resource_pool* %27, i32 0, i32 3
  store %struct.fsl_mc_bus* %26, %struct.fsl_mc_bus** %28, align 8
  %29 = load %struct.fsl_mc_resource_pool*, %struct.fsl_mc_resource_pool** %5, align 8
  %30 = getelementptr inbounds %struct.fsl_mc_resource_pool, %struct.fsl_mc_resource_pool* %29, i32 0, i32 2
  %31 = call i32 @INIT_LIST_HEAD(i32* %30)
  %32 = load %struct.fsl_mc_resource_pool*, %struct.fsl_mc_resource_pool** %5, align 8
  %33 = getelementptr inbounds %struct.fsl_mc_resource_pool, %struct.fsl_mc_resource_pool* %32, i32 0, i32 1
  %34 = call i32 @mutex_init(i32* %33)
  br label %35

35:                                               ; preds = %12
  %36 = load i32, i32* %3, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %3, align 4
  br label %8

38:                                               ; preds = %8
  ret void
}

declare dso_local %struct.fsl_mc_bus* @to_fsl_mc_bus(%struct.fsl_mc_device*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @mutex_init(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
