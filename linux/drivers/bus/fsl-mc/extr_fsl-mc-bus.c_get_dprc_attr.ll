; ModuleID = '/home/carl/AnghaBench/linux/drivers/bus/fsl-mc/extr_fsl-mc-bus.c_get_dprc_attr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/bus/fsl-mc/extr_fsl-mc-bus.c_get_dprc_attr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fsl_mc_io = type { i32 }
%struct.dprc_attributes = type { i32 }

@.str = private unnamed_addr constant [24 x i8] c"dprc_open() failed: %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [34 x i8] c"dprc_get_attributes() failed: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fsl_mc_io*, i32, %struct.dprc_attributes*)* @get_dprc_attr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_dprc_attr(%struct.fsl_mc_io* %0, i32 %1, %struct.dprc_attributes* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.fsl_mc_io*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.dprc_attributes*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.fsl_mc_io* %0, %struct.fsl_mc_io** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.dprc_attributes* %2, %struct.dprc_attributes** %7, align 8
  %10 = load %struct.fsl_mc_io*, %struct.fsl_mc_io** %5, align 8
  %11 = load i32, i32* %6, align 4
  %12 = call i32 @dprc_open(%struct.fsl_mc_io* %10, i32 0, i32 %11, i32* %8)
  store i32 %12, i32* %9, align 4
  %13 = load i32, i32* %9, align 4
  %14 = icmp slt i32 %13, 0
  br i1 %14, label %15, label %22

15:                                               ; preds = %3
  %16 = load %struct.fsl_mc_io*, %struct.fsl_mc_io** %5, align 8
  %17 = getelementptr inbounds %struct.fsl_mc_io, %struct.fsl_mc_io* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* %9, align 4
  %20 = call i32 @dev_err(i32 %18, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %19)
  %21 = load i32, i32* %9, align 4
  store i32 %21, i32* %4, align 4
  br label %43

22:                                               ; preds = %3
  %23 = load %struct.dprc_attributes*, %struct.dprc_attributes** %7, align 8
  %24 = call i32 @memset(%struct.dprc_attributes* %23, i32 0, i32 4)
  %25 = load %struct.fsl_mc_io*, %struct.fsl_mc_io** %5, align 8
  %26 = load i32, i32* %8, align 4
  %27 = load %struct.dprc_attributes*, %struct.dprc_attributes** %7, align 8
  %28 = call i32 @dprc_get_attributes(%struct.fsl_mc_io* %25, i32 0, i32 %26, %struct.dprc_attributes* %27)
  store i32 %28, i32* %9, align 4
  %29 = load i32, i32* %9, align 4
  %30 = icmp slt i32 %29, 0
  br i1 %30, label %31, label %37

31:                                               ; preds = %22
  %32 = load %struct.fsl_mc_io*, %struct.fsl_mc_io** %5, align 8
  %33 = getelementptr inbounds %struct.fsl_mc_io, %struct.fsl_mc_io* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* %9, align 4
  %36 = call i32 @dev_err(i32 %34, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i32 %35)
  br label %38

37:                                               ; preds = %22
  store i32 0, i32* %9, align 4
  br label %38

38:                                               ; preds = %37, %31
  %39 = load %struct.fsl_mc_io*, %struct.fsl_mc_io** %5, align 8
  %40 = load i32, i32* %8, align 4
  %41 = call i32 @dprc_close(%struct.fsl_mc_io* %39, i32 0, i32 %40)
  %42 = load i32, i32* %9, align 4
  store i32 %42, i32* %4, align 4
  br label %43

43:                                               ; preds = %38, %15
  %44 = load i32, i32* %4, align 4
  ret i32 %44
}

declare dso_local i32 @dprc_open(%struct.fsl_mc_io*, i32, i32, i32*) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @memset(%struct.dprc_attributes*, i32, i32) #1

declare dso_local i32 @dprc_get_attributes(%struct.fsl_mc_io*, i32, i32, %struct.dprc_attributes*) #1

declare dso_local i32 @dprc_close(%struct.fsl_mc_io*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
