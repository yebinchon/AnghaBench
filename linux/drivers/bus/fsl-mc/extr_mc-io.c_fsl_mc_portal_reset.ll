; ModuleID = '/home/carl/AnghaBench/linux/drivers/bus/fsl-mc/extr_mc-io.c_fsl_mc_portal_reset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/bus/fsl-mc/extr_mc-io.c_fsl_mc_portal_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fsl_mc_io = type { %struct.fsl_mc_device* }
%struct.fsl_mc_device = type { i32, i32 }

@.str = private unnamed_addr constant [26 x i8] c"dpmcp_reset() failed: %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fsl_mc_portal_reset(%struct.fsl_mc_io* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.fsl_mc_io*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.fsl_mc_device*, align 8
  store %struct.fsl_mc_io* %0, %struct.fsl_mc_io** %3, align 8
  %6 = load %struct.fsl_mc_io*, %struct.fsl_mc_io** %3, align 8
  %7 = getelementptr inbounds %struct.fsl_mc_io, %struct.fsl_mc_io* %6, i32 0, i32 0
  %8 = load %struct.fsl_mc_device*, %struct.fsl_mc_device** %7, align 8
  store %struct.fsl_mc_device* %8, %struct.fsl_mc_device** %5, align 8
  %9 = load %struct.fsl_mc_io*, %struct.fsl_mc_io** %3, align 8
  %10 = load %struct.fsl_mc_device*, %struct.fsl_mc_device** %5, align 8
  %11 = getelementptr inbounds %struct.fsl_mc_device, %struct.fsl_mc_device* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @dpmcp_reset(%struct.fsl_mc_io* %9, i32 0, i32 %12)
  store i32 %13, i32* %4, align 4
  %14 = load i32, i32* %4, align 4
  %15 = icmp slt i32 %14, 0
  br i1 %15, label %16, label %22

16:                                               ; preds = %1
  %17 = load %struct.fsl_mc_device*, %struct.fsl_mc_device** %5, align 8
  %18 = getelementptr inbounds %struct.fsl_mc_device, %struct.fsl_mc_device* %17, i32 0, i32 0
  %19 = load i32, i32* %4, align 4
  %20 = call i32 @dev_err(i32* %18, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %19)
  %21 = load i32, i32* %4, align 4
  store i32 %21, i32* %2, align 4
  br label %23

22:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %23

23:                                               ; preds = %22, %16
  %24 = load i32, i32* %2, align 4
  ret i32 %24
}

declare dso_local i32 @dpmcp_reset(%struct.fsl_mc_io*, i32, i32) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
