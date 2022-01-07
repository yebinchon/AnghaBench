; ModuleID = '/home/carl/AnghaBench/linux/drivers/base/extr_dd.c___device_attach_driver.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/base/extr_dd.c___device_attach_driver.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device_driver = type { i32 }
%struct.device_attach_data = type { i32, i32, i64, %struct.device* }
%struct.device = type { i32 }

@EPROBE_DEFER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"Device match requests probe deferral\0A\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"Bus failed to match device: %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device_driver*, i8*)* @__device_attach_driver to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__device_attach_driver(%struct.device_driver* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.device_driver*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.device_attach_data*, align 8
  %7 = alloca %struct.device*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.device_driver* %0, %struct.device_driver** %4, align 8
  store i8* %1, i8** %5, align 8
  %10 = load i8*, i8** %5, align 8
  %11 = bitcast i8* %10 to %struct.device_attach_data*
  store %struct.device_attach_data* %11, %struct.device_attach_data** %6, align 8
  %12 = load %struct.device_attach_data*, %struct.device_attach_data** %6, align 8
  %13 = getelementptr inbounds %struct.device_attach_data, %struct.device_attach_data* %12, i32 0, i32 3
  %14 = load %struct.device*, %struct.device** %13, align 8
  store %struct.device* %14, %struct.device** %7, align 8
  %15 = load %struct.device_driver*, %struct.device_driver** %4, align 8
  %16 = load %struct.device*, %struct.device** %7, align 8
  %17 = call i32 @driver_match_device(%struct.device_driver* %15, %struct.device* %16)
  store i32 %17, i32* %9, align 4
  %18 = load i32, i32* %9, align 4
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %65

21:                                               ; preds = %2
  %22 = load i32, i32* %9, align 4
  %23 = load i32, i32* @EPROBE_DEFER, align 4
  %24 = sub nsw i32 0, %23
  %25 = icmp eq i32 %22, %24
  br i1 %25, label %26, label %31

26:                                               ; preds = %21
  %27 = load %struct.device*, %struct.device** %7, align 8
  %28 = call i32 (%struct.device*, i8*, ...) @dev_dbg(%struct.device* %27, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  %29 = load %struct.device*, %struct.device** %7, align 8
  %30 = call i32 @driver_deferred_probe_add(%struct.device* %29)
  br label %40

31:                                               ; preds = %21
  %32 = load i32, i32* %9, align 4
  %33 = icmp slt i32 %32, 0
  br i1 %33, label %34, label %39

34:                                               ; preds = %31
  %35 = load %struct.device*, %struct.device** %7, align 8
  %36 = load i32, i32* %9, align 4
  %37 = call i32 (%struct.device*, i8*, ...) @dev_dbg(%struct.device* %35, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i32 %36)
  %38 = load i32, i32* %9, align 4
  store i32 %38, i32* %3, align 4
  br label %65

39:                                               ; preds = %31
  br label %40

40:                                               ; preds = %39, %26
  br label %41

41:                                               ; preds = %40
  %42 = load %struct.device_driver*, %struct.device_driver** %4, align 8
  %43 = call i32 @driver_allows_async_probing(%struct.device_driver* %42)
  store i32 %43, i32* %8, align 4
  %44 = load i32, i32* %8, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %49

46:                                               ; preds = %41
  %47 = load %struct.device_attach_data*, %struct.device_attach_data** %6, align 8
  %48 = getelementptr inbounds %struct.device_attach_data, %struct.device_attach_data* %47, i32 0, i32 0
  store i32 1, i32* %48, align 8
  br label %49

49:                                               ; preds = %46, %41
  %50 = load %struct.device_attach_data*, %struct.device_attach_data** %6, align 8
  %51 = getelementptr inbounds %struct.device_attach_data, %struct.device_attach_data* %50, i32 0, i32 2
  %52 = load i64, i64* %51, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %61

54:                                               ; preds = %49
  %55 = load i32, i32* %8, align 4
  %56 = load %struct.device_attach_data*, %struct.device_attach_data** %6, align 8
  %57 = getelementptr inbounds %struct.device_attach_data, %struct.device_attach_data* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = icmp ne i32 %55, %58
  br i1 %59, label %60, label %61

60:                                               ; preds = %54
  store i32 0, i32* %3, align 4
  br label %65

61:                                               ; preds = %54, %49
  %62 = load %struct.device_driver*, %struct.device_driver** %4, align 8
  %63 = load %struct.device*, %struct.device** %7, align 8
  %64 = call i32 @driver_probe_device(%struct.device_driver* %62, %struct.device* %63)
  store i32 %64, i32* %3, align 4
  br label %65

65:                                               ; preds = %61, %60, %34, %20
  %66 = load i32, i32* %3, align 4
  ret i32 %66
}

declare dso_local i32 @driver_match_device(%struct.device_driver*, %struct.device*) #1

declare dso_local i32 @dev_dbg(%struct.device*, i8*, ...) #1

declare dso_local i32 @driver_deferred_probe_add(%struct.device*) #1

declare dso_local i32 @driver_allows_async_probing(%struct.device_driver*) #1

declare dso_local i32 @driver_probe_device(%struct.device_driver*, %struct.device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
