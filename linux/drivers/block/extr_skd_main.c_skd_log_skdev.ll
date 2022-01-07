; ModuleID = '/home/carl/AnghaBench/linux/drivers/block/extr_skd_main.c_skd_log_skdev.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/block/extr_skd_main.c_skd_log_skdev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.skd_device = type { i8*, %struct.skd_device*, %struct.TYPE_2__*, i32, i32, i32, i32, i32 }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [21 x i8] c"skdev=%p event='%s'\0A\00", align 1
@.str.1 = private unnamed_addr constant [42 x i8] c"  drive_state=%s(%d) driver_state=%s(%d)\0A\00", align 1
@.str.2 = private unnamed_addr constant [36 x i8] c"  busy=%d limit=%d dev=%d lowat=%d\0A\00", align 1
@.str.3 = private unnamed_addr constant [24 x i8] c"  cycle=%d cycle_ix=%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.skd_device*, i8*)* @skd_log_skdev to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @skd_log_skdev(%struct.skd_device* %0, i8* %1) #0 {
  %3 = alloca %struct.skd_device*, align 8
  %4 = alloca i8*, align 8
  store %struct.skd_device* %0, %struct.skd_device** %3, align 8
  store i8* %1, i8** %4, align 8
  %5 = load %struct.skd_device*, %struct.skd_device** %3, align 8
  %6 = getelementptr inbounds %struct.skd_device, %struct.skd_device* %5, i32 0, i32 2
  %7 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load %struct.skd_device*, %struct.skd_device** %3, align 8
  %10 = load i8*, i8** %4, align 8
  %11 = call i32 (i32*, i8*, %struct.skd_device*, i8*, ...) @dev_dbg(i32* %8, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), %struct.skd_device* %9, i8* %10)
  %12 = load %struct.skd_device*, %struct.skd_device** %3, align 8
  %13 = getelementptr inbounds %struct.skd_device, %struct.skd_device* %12, i32 0, i32 2
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load %struct.skd_device*, %struct.skd_device** %3, align 8
  %17 = getelementptr inbounds %struct.skd_device, %struct.skd_device* %16, i32 0, i32 7
  %18 = load i32, i32* %17, align 8
  %19 = call i32 @skd_drive_state_to_str(i32 %18)
  %20 = sext i32 %19 to i64
  %21 = inttoptr i64 %20 to %struct.skd_device*
  %22 = load %struct.skd_device*, %struct.skd_device** %3, align 8
  %23 = getelementptr inbounds %struct.skd_device, %struct.skd_device* %22, i32 0, i32 7
  %24 = load i32, i32* %23, align 8
  %25 = sext i32 %24 to i64
  %26 = inttoptr i64 %25 to i8*
  %27 = load %struct.skd_device*, %struct.skd_device** %3, align 8
  %28 = getelementptr inbounds %struct.skd_device, %struct.skd_device* %27, i32 0, i32 6
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @skd_skdev_state_to_str(i32 %29)
  %31 = load %struct.skd_device*, %struct.skd_device** %3, align 8
  %32 = getelementptr inbounds %struct.skd_device, %struct.skd_device* %31, i32 0, i32 6
  %33 = load i32, i32* %32, align 4
  %34 = call i32 (i32*, i8*, %struct.skd_device*, i8*, ...) @dev_dbg(i32* %15, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0), %struct.skd_device* %21, i8* %26, i32 %30, i32 %33)
  %35 = load %struct.skd_device*, %struct.skd_device** %3, align 8
  %36 = getelementptr inbounds %struct.skd_device, %struct.skd_device* %35, i32 0, i32 2
  %37 = load %struct.TYPE_2__*, %struct.TYPE_2__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  %39 = load %struct.skd_device*, %struct.skd_device** %3, align 8
  %40 = call i32 @skd_in_flight(%struct.skd_device* %39)
  %41 = sext i32 %40 to i64
  %42 = inttoptr i64 %41 to %struct.skd_device*
  %43 = load %struct.skd_device*, %struct.skd_device** %3, align 8
  %44 = getelementptr inbounds %struct.skd_device, %struct.skd_device* %43, i32 0, i32 5
  %45 = load i32, i32* %44, align 8
  %46 = sext i32 %45 to i64
  %47 = inttoptr i64 %46 to i8*
  %48 = load %struct.skd_device*, %struct.skd_device** %3, align 8
  %49 = getelementptr inbounds %struct.skd_device, %struct.skd_device* %48, i32 0, i32 4
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.skd_device*, %struct.skd_device** %3, align 8
  %52 = getelementptr inbounds %struct.skd_device, %struct.skd_device* %51, i32 0, i32 3
  %53 = load i32, i32* %52, align 8
  %54 = call i32 (i32*, i8*, %struct.skd_device*, i8*, ...) @dev_dbg(i32* %38, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0), %struct.skd_device* %42, i8* %47, i32 %50, i32 %53)
  %55 = load %struct.skd_device*, %struct.skd_device** %3, align 8
  %56 = getelementptr inbounds %struct.skd_device, %struct.skd_device* %55, i32 0, i32 2
  %57 = load %struct.TYPE_2__*, %struct.TYPE_2__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 0
  %59 = load %struct.skd_device*, %struct.skd_device** %3, align 8
  %60 = getelementptr inbounds %struct.skd_device, %struct.skd_device* %59, i32 0, i32 1
  %61 = load %struct.skd_device*, %struct.skd_device** %60, align 8
  %62 = load %struct.skd_device*, %struct.skd_device** %3, align 8
  %63 = getelementptr inbounds %struct.skd_device, %struct.skd_device* %62, i32 0, i32 0
  %64 = load i8*, i8** %63, align 8
  %65 = call i32 (i32*, i8*, %struct.skd_device*, i8*, ...) @dev_dbg(i32* %58, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0), %struct.skd_device* %61, i8* %64)
  ret void
}

declare dso_local i32 @dev_dbg(i32*, i8*, %struct.skd_device*, i8*, ...) #1

declare dso_local i32 @skd_drive_state_to_str(i32) #1

declare dso_local i32 @skd_skdev_state_to_str(i32) #1

declare dso_local i32 @skd_in_flight(%struct.skd_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
