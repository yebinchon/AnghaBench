; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/extr_clk-cs2000-cp.c_cs2000_version_print.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/extr_clk-cs2000-cp.c_cs2000_version_print.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cs2000_priv = type { i32 }
%struct.device = type { i32 }

@DEVICE_ID = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@REVISION_MASK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"B2 / B3\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"C1\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"revision - %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cs2000_priv*)* @cs2000_version_print to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cs2000_version_print(%struct.cs2000_priv* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.cs2000_priv*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  store %struct.cs2000_priv* %0, %struct.cs2000_priv** %3, align 8
  %7 = load %struct.cs2000_priv*, %struct.cs2000_priv** %3, align 8
  %8 = call %struct.device* @priv_to_dev(%struct.cs2000_priv* %7)
  store %struct.device* %8, %struct.device** %4, align 8
  %9 = load %struct.cs2000_priv*, %struct.cs2000_priv** %3, align 8
  %10 = load i32, i32* @DEVICE_ID, align 4
  %11 = call i32 @cs2000_read(%struct.cs2000_priv* %9, i32 %10)
  store i32 %11, i32* %5, align 4
  %12 = load i32, i32* %5, align 4
  %13 = icmp slt i32 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %1
  %15 = load i32, i32* %5, align 4
  store i32 %15, i32* %2, align 4
  br label %36

16:                                               ; preds = %1
  %17 = load i32, i32* %5, align 4
  %18 = ashr i32 %17, 3
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %16
  %21 = load i32, i32* @EIO, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %2, align 4
  br label %36

23:                                               ; preds = %16
  %24 = load i32, i32* %5, align 4
  %25 = load i32, i32* @REVISION_MASK, align 4
  %26 = and i32 %24, %25
  switch i32 %26, label %29 [
    i32 129, label %27
    i32 128, label %28
  ]

27:                                               ; preds = %23
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8** %6, align 8
  br label %32

28:                                               ; preds = %23
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8** %6, align 8
  br label %32

29:                                               ; preds = %23
  %30 = load i32, i32* @EIO, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %2, align 4
  br label %36

32:                                               ; preds = %28, %27
  %33 = load %struct.device*, %struct.device** %4, align 8
  %34 = load i8*, i8** %6, align 8
  %35 = call i32 @dev_info(%struct.device* %33, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i8* %34)
  store i32 0, i32* %2, align 4
  br label %36

36:                                               ; preds = %32, %29, %20, %14
  %37 = load i32, i32* %2, align 4
  ret i32 %37
}

declare dso_local %struct.device* @priv_to_dev(%struct.cs2000_priv*) #1

declare dso_local i32 @cs2000_read(%struct.cs2000_priv*, i32) #1

declare dso_local i32 @dev_info(%struct.device*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
