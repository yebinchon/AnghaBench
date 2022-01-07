; ModuleID = '/home/carl/AnghaBench/linux/drivers/bus/fsl-mc/extr_mc-io.c_fsl_mc_io_unset_dpmcp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/bus/fsl-mc/extr_mc-io.c_fsl_mc_io_unset_dpmcp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fsl_mc_io = type { %struct.fsl_mc_device* }
%struct.fsl_mc_device = type { i32*, i32, i32 }

@.str = private unnamed_addr constant [26 x i8] c"dpmcp_close() failed: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fsl_mc_io*)* @fsl_mc_io_unset_dpmcp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fsl_mc_io_unset_dpmcp(%struct.fsl_mc_io* %0) #0 {
  %2 = alloca %struct.fsl_mc_io*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.fsl_mc_device*, align 8
  store %struct.fsl_mc_io* %0, %struct.fsl_mc_io** %2, align 8
  %5 = load %struct.fsl_mc_io*, %struct.fsl_mc_io** %2, align 8
  %6 = getelementptr inbounds %struct.fsl_mc_io, %struct.fsl_mc_io* %5, i32 0, i32 0
  %7 = load %struct.fsl_mc_device*, %struct.fsl_mc_device** %6, align 8
  store %struct.fsl_mc_device* %7, %struct.fsl_mc_device** %4, align 8
  %8 = load %struct.fsl_mc_io*, %struct.fsl_mc_io** %2, align 8
  %9 = load %struct.fsl_mc_device*, %struct.fsl_mc_device** %4, align 8
  %10 = getelementptr inbounds %struct.fsl_mc_device, %struct.fsl_mc_device* %9, i32 0, i32 2
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @dpmcp_close(%struct.fsl_mc_io* %8, i32 0, i32 %11)
  store i32 %12, i32* %3, align 4
  %13 = load i32, i32* %3, align 4
  %14 = icmp slt i32 %13, 0
  br i1 %14, label %15, label %20

15:                                               ; preds = %1
  %16 = load %struct.fsl_mc_device*, %struct.fsl_mc_device** %4, align 8
  %17 = getelementptr inbounds %struct.fsl_mc_device, %struct.fsl_mc_device* %16, i32 0, i32 1
  %18 = load i32, i32* %3, align 4
  %19 = call i32 @dev_err(i32* %17, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %18)
  br label %20

20:                                               ; preds = %15, %1
  %21 = load %struct.fsl_mc_io*, %struct.fsl_mc_io** %2, align 8
  %22 = getelementptr inbounds %struct.fsl_mc_io, %struct.fsl_mc_io* %21, i32 0, i32 0
  store %struct.fsl_mc_device* null, %struct.fsl_mc_device** %22, align 8
  %23 = load %struct.fsl_mc_device*, %struct.fsl_mc_device** %4, align 8
  %24 = getelementptr inbounds %struct.fsl_mc_device, %struct.fsl_mc_device* %23, i32 0, i32 0
  store i32* null, i32** %24, align 8
  ret void
}

declare dso_local i32 @dpmcp_close(%struct.fsl_mc_io*, i32, i32) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
