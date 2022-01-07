; ModuleID = '/home/carl/AnghaBench/linux/drivers/block/extr_skd_main.c_skd_unquiesce_dev.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/block/extr_skd_main.c_skd_unquiesce_dev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.skd_device = type { i32, i64, i32, %struct.TYPE_2__*, i32, i32 }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [10 x i8] c"unquiesce\00", align 1
@SKD_DRVR_STATE_ONLINE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"**** device already ONLINE\0A\00", align 1
@FIT_SR_DRIVE_ONLINE = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [18 x i8] c"drive BUSY state\0A\00", align 1
@.str.3 = private unnamed_addr constant [29 x i8] c"Driver state %s(%d)=>%s(%d)\0A\00", align 1
@.str.4 = private unnamed_addr constant [43 x i8] c"**** device ONLINE...starting block queue\0A\00", align 1
@.str.5 = private unnamed_addr constant [16 x i8] c"starting queue\0A\00", align 1
@.str.6 = private unnamed_addr constant [19 x i8] c"STEC s1120 ONLINE\0A\00", align 1
@.str.7 = private unnamed_addr constant [39 x i8] c"**** driver state %d, not implemented\0A\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.skd_device*)* @skd_unquiesce_dev to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @skd_unquiesce_dev(%struct.skd_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.skd_device*, align 8
  %4 = alloca i32, align 4
  store %struct.skd_device* %0, %struct.skd_device** %3, align 8
  %5 = load %struct.skd_device*, %struct.skd_device** %3, align 8
  %6 = getelementptr inbounds %struct.skd_device, %struct.skd_device* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 8
  store i32 %7, i32* %4, align 4
  %8 = load %struct.skd_device*, %struct.skd_device** %3, align 8
  %9 = call i32 @skd_log_skdev(%struct.skd_device* %8, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  %10 = load %struct.skd_device*, %struct.skd_device** %3, align 8
  %11 = getelementptr inbounds %struct.skd_device, %struct.skd_device* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = load i32, i32* @SKD_DRVR_STATE_ONLINE, align 4
  %14 = icmp eq i32 %12, %13
  br i1 %14, label %15, label %21

15:                                               ; preds = %1
  %16 = load %struct.skd_device*, %struct.skd_device** %3, align 8
  %17 = getelementptr inbounds %struct.skd_device, %struct.skd_device* %16, i32 0, i32 3
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %19, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %94

21:                                               ; preds = %1
  %22 = load %struct.skd_device*, %struct.skd_device** %3, align 8
  %23 = getelementptr inbounds %struct.skd_device, %struct.skd_device* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @FIT_SR_DRIVE_ONLINE, align 8
  %26 = icmp ne i64 %24, %25
  br i1 %26, label %27, label %35

27:                                               ; preds = %21
  %28 = load %struct.skd_device*, %struct.skd_device** %3, align 8
  %29 = getelementptr inbounds %struct.skd_device, %struct.skd_device* %28, i32 0, i32 0
  store i32 137, i32* %29, align 8
  %30 = load %struct.skd_device*, %struct.skd_device** %3, align 8
  %31 = getelementptr inbounds %struct.skd_device, %struct.skd_device* %30, i32 0, i32 3
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %33, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %94

35:                                               ; preds = %21
  %36 = load %struct.skd_device*, %struct.skd_device** %3, align 8
  %37 = getelementptr inbounds %struct.skd_device, %struct.skd_device* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  switch i32 %38, label %82 [
    i32 130, label %39
    i32 137, label %39
    i32 135, label %39
    i32 136, label %39
    i32 128, label %39
    i32 129, label %39
    i32 133, label %39
    i32 132, label %39
    i32 131, label %39
    i32 134, label %81
  ]

39:                                               ; preds = %35, %35, %35, %35, %35, %35, %35, %35, %35
  %40 = load i32, i32* @SKD_DRVR_STATE_ONLINE, align 4
  %41 = load %struct.skd_device*, %struct.skd_device** %3, align 8
  %42 = getelementptr inbounds %struct.skd_device, %struct.skd_device* %41, i32 0, i32 0
  store i32 %40, i32* %42, align 8
  %43 = load %struct.skd_device*, %struct.skd_device** %3, align 8
  %44 = getelementptr inbounds %struct.skd_device, %struct.skd_device* %43, i32 0, i32 3
  %45 = load %struct.TYPE_2__*, %struct.TYPE_2__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 0
  %47 = load i32, i32* %4, align 4
  %48 = call i32 @skd_skdev_state_to_str(i32 %47)
  %49 = load i32, i32* %4, align 4
  %50 = load %struct.skd_device*, %struct.skd_device** %3, align 8
  %51 = getelementptr inbounds %struct.skd_device, %struct.skd_device* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = call i32 @skd_skdev_state_to_str(i32 %52)
  %54 = load %struct.skd_device*, %struct.skd_device** %3, align 8
  %55 = getelementptr inbounds %struct.skd_device, %struct.skd_device* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = call i32 @dev_err(i32* %46, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0), i32 %48, i32 %49, i32 %53, i32 %56)
  %58 = load %struct.skd_device*, %struct.skd_device** %3, align 8
  %59 = getelementptr inbounds %struct.skd_device, %struct.skd_device* %58, i32 0, i32 3
  %60 = load %struct.TYPE_2__*, %struct.TYPE_2__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 0
  %62 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %61, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.4, i64 0, i64 0))
  %63 = load %struct.skd_device*, %struct.skd_device** %3, align 8
  %64 = getelementptr inbounds %struct.skd_device, %struct.skd_device* %63, i32 0, i32 3
  %65 = load %struct.TYPE_2__*, %struct.TYPE_2__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 0
  %67 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %66, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i64 0, i64 0))
  %68 = load %struct.skd_device*, %struct.skd_device** %3, align 8
  %69 = getelementptr inbounds %struct.skd_device, %struct.skd_device* %68, i32 0, i32 3
  %70 = load %struct.TYPE_2__*, %struct.TYPE_2__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i32 0, i32 0
  %72 = call i32 @dev_info(i32* %71, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.6, i64 0, i64 0))
  %73 = load %struct.skd_device*, %struct.skd_device** %3, align 8
  %74 = getelementptr inbounds %struct.skd_device, %struct.skd_device* %73, i32 0, i32 5
  %75 = call i32 @schedule_work(i32* %74)
  %76 = load %struct.skd_device*, %struct.skd_device** %3, align 8
  %77 = getelementptr inbounds %struct.skd_device, %struct.skd_device* %76, i32 0, i32 2
  store i32 1, i32* %77, align 8
  %78 = load %struct.skd_device*, %struct.skd_device** %3, align 8
  %79 = getelementptr inbounds %struct.skd_device, %struct.skd_device* %78, i32 0, i32 4
  %80 = call i32 @wake_up_interruptible(i32* %79)
  br label %93

81:                                               ; preds = %35
  br label %82

82:                                               ; preds = %35, %81
  %83 = load %struct.skd_device*, %struct.skd_device** %3, align 8
  %84 = getelementptr inbounds %struct.skd_device, %struct.skd_device* %83, i32 0, i32 3
  %85 = load %struct.TYPE_2__*, %struct.TYPE_2__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %85, i32 0, i32 0
  %87 = load %struct.skd_device*, %struct.skd_device** %3, align 8
  %88 = getelementptr inbounds %struct.skd_device, %struct.skd_device* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %86, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.7, i64 0, i64 0), i32 %89)
  %91 = load i32, i32* @EBUSY, align 4
  %92 = sub nsw i32 0, %91
  store i32 %92, i32* %2, align 4
  br label %94

93:                                               ; preds = %39
  store i32 0, i32* %2, align 4
  br label %94

94:                                               ; preds = %93, %82, %27, %15
  %95 = load i32, i32* %2, align 4
  ret i32 %95
}

declare dso_local i32 @skd_log_skdev(%struct.skd_device*, i8*) #1

declare dso_local i32 @dev_dbg(i32*, i8*, ...) #1

declare dso_local i32 @dev_err(i32*, i8*, i32, i32, i32, i32) #1

declare dso_local i32 @skd_skdev_state_to_str(i32) #1

declare dso_local i32 @dev_info(i32*, i8*) #1

declare dso_local i32 @schedule_work(i32*) #1

declare dso_local i32 @wake_up_interruptible(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
