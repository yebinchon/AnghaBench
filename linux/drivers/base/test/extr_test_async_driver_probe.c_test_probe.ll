; ModuleID = '/home/carl/AnghaBench/linux/drivers/base/test/extr_test_async_driver_probe.c_test_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/base/test/extr_test_async_driver_probe.c_test_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.device }
%struct.device = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }

@timeout = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"async probe took too long\0A\00", align 1
@errors = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"sleeping for %d msecs in probe\0A\00", align 1
@TEST_PROBE_DELAY = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [15 x i8] c"done sleeping\0A\00", align 1
@PROBE_PREFER_ASYNCHRONOUS = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [29 x i8] c"NUMA node mismatch %d != %d\0A\00", align 1
@warnings = common dso_local global i32 0, align 4
@async_completed = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @test_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @test_probe(%struct.platform_device* %0) #0 {
  %2 = alloca %struct.platform_device*, align 8
  %3 = alloca %struct.device*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %2, align 8
  %4 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %5 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %4, i32 0, i32 0
  store %struct.device* %5, %struct.device** %3, align 8
  %6 = call i64 @atomic_read(i32* @timeout)
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %12

8:                                                ; preds = %1
  %9 = load %struct.device*, %struct.device** %3, align 8
  %10 = call i32 @dev_err(%struct.device* %9, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %11 = call i32 @atomic_inc(i32* @errors)
  br label %22

12:                                               ; preds = %1
  %13 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %14 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %13, i32 0, i32 0
  %15 = load i32, i32* @TEST_PROBE_DELAY, align 4
  %16 = call i32 (%struct.device*, i8*, ...) @dev_dbg(%struct.device* %14, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i32 %15)
  %17 = load i32, i32* @TEST_PROBE_DELAY, align 4
  %18 = call i32 @msleep(i32 %17)
  %19 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %20 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %19, i32 0, i32 0
  %21 = call i32 (%struct.device*, i8*, ...) @dev_dbg(%struct.device* %20, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0))
  br label %22

22:                                               ; preds = %12, %8
  %23 = load %struct.device*, %struct.device** %3, align 8
  %24 = getelementptr inbounds %struct.device, %struct.device* %23, i32 0, i32 0
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @PROBE_PREFER_ASYNCHRONOUS, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %44

30:                                               ; preds = %22
  %31 = load %struct.device*, %struct.device** %3, align 8
  %32 = call i64 @dev_to_node(%struct.device* %31)
  %33 = call i64 (...) @numa_node_id()
  %34 = icmp ne i64 %32, %33
  br i1 %34, label %35, label %42

35:                                               ; preds = %30
  %36 = load %struct.device*, %struct.device** %3, align 8
  %37 = load %struct.device*, %struct.device** %3, align 8
  %38 = call i64 @dev_to_node(%struct.device* %37)
  %39 = call i64 (...) @numa_node_id()
  %40 = call i32 @dev_warn(%struct.device* %36, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0), i64 %38, i64 %39)
  %41 = call i32 @atomic_inc(i32* @warnings)
  br label %42

42:                                               ; preds = %35, %30
  %43 = call i32 @atomic_inc(i32* @async_completed)
  br label %44

44:                                               ; preds = %42, %22
  ret i32 0
}

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i32 @dev_dbg(%struct.device*, i8*, ...) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i64 @dev_to_node(%struct.device*) #1

declare dso_local i64 @numa_node_id(...) #1

declare dso_local i32 @dev_warn(%struct.device*, i8*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
