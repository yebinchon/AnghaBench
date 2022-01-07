; ModuleID = '/home/carl/AnghaBench/linux/drivers/bus/fsl-mc/extr_mc-io.c_fsl_mc_io_set_dpmcp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/bus/fsl-mc/extr_mc-io.c_fsl_mc_io_set_dpmcp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fsl_mc_io = type { %struct.fsl_mc_device* }
%struct.fsl_mc_device = type { %struct.fsl_mc_io*, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fsl_mc_io*, %struct.fsl_mc_device*)* @fsl_mc_io_set_dpmcp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fsl_mc_io_set_dpmcp(%struct.fsl_mc_io* %0, %struct.fsl_mc_device* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.fsl_mc_io*, align 8
  %5 = alloca %struct.fsl_mc_device*, align 8
  %6 = alloca i32, align 4
  store %struct.fsl_mc_io* %0, %struct.fsl_mc_io** %4, align 8
  store %struct.fsl_mc_device* %1, %struct.fsl_mc_device** %5, align 8
  %7 = load %struct.fsl_mc_io*, %struct.fsl_mc_io** %4, align 8
  %8 = getelementptr inbounds %struct.fsl_mc_io, %struct.fsl_mc_io* %7, i32 0, i32 0
  %9 = load %struct.fsl_mc_device*, %struct.fsl_mc_device** %8, align 8
  %10 = icmp ne %struct.fsl_mc_device* %9, null
  br i1 %10, label %11, label %14

11:                                               ; preds = %2
  %12 = load i32, i32* @EINVAL, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %3, align 4
  br label %42

14:                                               ; preds = %2
  %15 = load %struct.fsl_mc_device*, %struct.fsl_mc_device** %5, align 8
  %16 = getelementptr inbounds %struct.fsl_mc_device, %struct.fsl_mc_device* %15, i32 0, i32 0
  %17 = load %struct.fsl_mc_io*, %struct.fsl_mc_io** %16, align 8
  %18 = icmp ne %struct.fsl_mc_io* %17, null
  br i1 %18, label %19, label %22

19:                                               ; preds = %14
  %20 = load i32, i32* @EINVAL, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %3, align 4
  br label %42

22:                                               ; preds = %14
  %23 = load %struct.fsl_mc_io*, %struct.fsl_mc_io** %4, align 8
  %24 = load %struct.fsl_mc_device*, %struct.fsl_mc_device** %5, align 8
  %25 = getelementptr inbounds %struct.fsl_mc_device, %struct.fsl_mc_device* %24, i32 0, i32 2
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.fsl_mc_device*, %struct.fsl_mc_device** %5, align 8
  %29 = getelementptr inbounds %struct.fsl_mc_device, %struct.fsl_mc_device* %28, i32 0, i32 1
  %30 = call i32 @dpmcp_open(%struct.fsl_mc_io* %23, i32 0, i32 %27, i32* %29)
  store i32 %30, i32* %6, align 4
  %31 = load i32, i32* %6, align 4
  %32 = icmp slt i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %22
  %34 = load i32, i32* %6, align 4
  store i32 %34, i32* %3, align 4
  br label %42

35:                                               ; preds = %22
  %36 = load %struct.fsl_mc_device*, %struct.fsl_mc_device** %5, align 8
  %37 = load %struct.fsl_mc_io*, %struct.fsl_mc_io** %4, align 8
  %38 = getelementptr inbounds %struct.fsl_mc_io, %struct.fsl_mc_io* %37, i32 0, i32 0
  store %struct.fsl_mc_device* %36, %struct.fsl_mc_device** %38, align 8
  %39 = load %struct.fsl_mc_io*, %struct.fsl_mc_io** %4, align 8
  %40 = load %struct.fsl_mc_device*, %struct.fsl_mc_device** %5, align 8
  %41 = getelementptr inbounds %struct.fsl_mc_device, %struct.fsl_mc_device* %40, i32 0, i32 0
  store %struct.fsl_mc_io* %39, %struct.fsl_mc_io** %41, align 8
  store i32 0, i32* %3, align 4
  br label %42

42:                                               ; preds = %35, %33, %19, %11
  %43 = load i32, i32* %3, align 4
  ret i32 %43
}

declare dso_local i32 @dpmcp_open(%struct.fsl_mc_io*, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
