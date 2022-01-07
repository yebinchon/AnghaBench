; ModuleID = '/home/carl/AnghaBench/linux/drivers/bus/extr_moxtet.c_moxtet_add_device.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/bus/extr_moxtet.c_moxtet_add_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.moxtet_device = type { i64, i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }

@moxtet_add_device.add_mutex = internal global i32 0, align 4
@TURRIS_MOX_MAX_MODULES = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"moxtet-%s.%u\00", align 1
@moxtet_bus_type = common dso_local global i32 0, align 4
@moxtet_dev_check = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"can't add %s, status %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.moxtet_device*)* @moxtet_add_device to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @moxtet_add_device(%struct.moxtet_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.moxtet_device*, align 8
  %4 = alloca i32, align 4
  store %struct.moxtet_device* %0, %struct.moxtet_device** %3, align 8
  %5 = load %struct.moxtet_device*, %struct.moxtet_device** %3, align 8
  %6 = getelementptr inbounds %struct.moxtet_device, %struct.moxtet_device* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = load i64, i64* @TURRIS_MOX_MAX_MODULES, align 8
  %9 = icmp sge i64 %7, %8
  br i1 %9, label %15, label %10

10:                                               ; preds = %1
  %11 = load %struct.moxtet_device*, %struct.moxtet_device** %3, align 8
  %12 = getelementptr inbounds %struct.moxtet_device, %struct.moxtet_device* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 8
  %14 = icmp sgt i32 %13, 15
  br i1 %14, label %15, label %18

15:                                               ; preds = %10, %1
  %16 = load i32, i32* @EINVAL, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %2, align 4
  br label %60

18:                                               ; preds = %10
  %19 = load %struct.moxtet_device*, %struct.moxtet_device** %3, align 8
  %20 = getelementptr inbounds %struct.moxtet_device, %struct.moxtet_device* %19, i32 0, i32 3
  %21 = load %struct.moxtet_device*, %struct.moxtet_device** %3, align 8
  %22 = getelementptr inbounds %struct.moxtet_device, %struct.moxtet_device* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 8
  %24 = call i32 @mox_module_name(i32 %23)
  %25 = load %struct.moxtet_device*, %struct.moxtet_device** %3, align 8
  %26 = getelementptr inbounds %struct.moxtet_device, %struct.moxtet_device* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = call i32 @dev_set_name(i32* %20, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 %24, i64 %27)
  %29 = call i32 @mutex_lock(i32* @moxtet_add_device.add_mutex)
  %30 = load %struct.moxtet_device*, %struct.moxtet_device** %3, align 8
  %31 = load i32, i32* @moxtet_dev_check, align 4
  %32 = call i32 @bus_for_each_dev(i32* @moxtet_bus_type, i32* null, %struct.moxtet_device* %30, i32 %31)
  store i32 %32, i32* %4, align 4
  %33 = load i32, i32* %4, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %18
  br label %57

36:                                               ; preds = %18
  %37 = load %struct.moxtet_device*, %struct.moxtet_device** %3, align 8
  %38 = getelementptr inbounds %struct.moxtet_device, %struct.moxtet_device* %37, i32 0, i32 3
  %39 = call i32 @device_add(i32* %38)
  store i32 %39, i32* %4, align 4
  %40 = load i32, i32* %4, align 4
  %41 = icmp slt i32 %40, 0
  br i1 %41, label %42, label %56

42:                                               ; preds = %36
  %43 = load %struct.moxtet_device*, %struct.moxtet_device** %3, align 8
  %44 = getelementptr inbounds %struct.moxtet_device, %struct.moxtet_device* %43, i32 0, i32 2
  %45 = load %struct.TYPE_2__*, %struct.TYPE_2__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.moxtet_device*, %struct.moxtet_device** %3, align 8
  %49 = getelementptr inbounds %struct.moxtet_device, %struct.moxtet_device* %48, i32 0, i32 2
  %50 = load %struct.TYPE_2__*, %struct.TYPE_2__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @dev_name(i32 %52)
  %54 = load i32, i32* %4, align 4
  %55 = call i32 @dev_err(i32 %47, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 %53, i32 %54)
  br label %56

56:                                               ; preds = %42, %36
  br label %57

57:                                               ; preds = %56, %35
  %58 = call i32 @mutex_unlock(i32* @moxtet_add_device.add_mutex)
  %59 = load i32, i32* %4, align 4
  store i32 %59, i32* %2, align 4
  br label %60

60:                                               ; preds = %57, %15
  %61 = load i32, i32* %2, align 4
  ret i32 %61
}

declare dso_local i32 @dev_set_name(i32*, i8*, i32, i64) #1

declare dso_local i32 @mox_module_name(i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @bus_for_each_dev(i32*, i32*, %struct.moxtet_device*, i32) #1

declare dso_local i32 @device_add(i32*) #1

declare dso_local i32 @dev_err(i32, i8*, i32, i32) #1

declare dso_local i32 @dev_name(i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
