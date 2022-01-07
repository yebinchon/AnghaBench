; ModuleID = '/home/carl/AnghaBench/linux/drivers/bus/fsl-mc/extr_fsl-mc-allocator.c_fsl_mc_allocator_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/bus/fsl-mc/extr_fsl-mc-allocator.c_fsl_mc_allocator_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fsl_mc_device = type { i32, i64 }

@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [63 x i8] c"Allocatable fsl-mc device unbound from fsl_mc_allocator driver\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fsl_mc_device*)* @fsl_mc_allocator_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fsl_mc_allocator_remove(%struct.fsl_mc_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.fsl_mc_device*, align 8
  %4 = alloca i32, align 4
  store %struct.fsl_mc_device* %0, %struct.fsl_mc_device** %3, align 8
  %5 = load %struct.fsl_mc_device*, %struct.fsl_mc_device** %3, align 8
  %6 = call i32 @fsl_mc_is_allocatable(%struct.fsl_mc_device* %5)
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %11, label %8

8:                                                ; preds = %1
  %9 = load i32, i32* @EINVAL, align 4
  %10 = sub nsw i32 0, %9
  store i32 %10, i32* %2, align 4
  br label %28

11:                                               ; preds = %1
  %12 = load %struct.fsl_mc_device*, %struct.fsl_mc_device** %3, align 8
  %13 = getelementptr inbounds %struct.fsl_mc_device, %struct.fsl_mc_device* %12, i32 0, i32 1
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %24

16:                                               ; preds = %11
  %17 = load %struct.fsl_mc_device*, %struct.fsl_mc_device** %3, align 8
  %18 = call i32 @fsl_mc_resource_pool_remove_device(%struct.fsl_mc_device* %17)
  store i32 %18, i32* %4, align 4
  %19 = load i32, i32* %4, align 4
  %20 = icmp slt i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %16
  %22 = load i32, i32* %4, align 4
  store i32 %22, i32* %2, align 4
  br label %28

23:                                               ; preds = %16
  br label %24

24:                                               ; preds = %23, %11
  %25 = load %struct.fsl_mc_device*, %struct.fsl_mc_device** %3, align 8
  %26 = getelementptr inbounds %struct.fsl_mc_device, %struct.fsl_mc_device* %25, i32 0, i32 0
  %27 = call i32 @dev_dbg(i32* %26, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %28

28:                                               ; preds = %24, %21, %8
  %29 = load i32, i32* %2, align 4
  ret i32 %29
}

declare dso_local i32 @fsl_mc_is_allocatable(%struct.fsl_mc_device*) #1

declare dso_local i32 @fsl_mc_resource_pool_remove_device(%struct.fsl_mc_device*) #1

declare dso_local i32 @dev_dbg(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
