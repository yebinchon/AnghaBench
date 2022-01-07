; ModuleID = '/home/carl/AnghaBench/linux/drivers/base/power/extr_main.c_device_resume_early.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/base/power/extr_main.c_device_resume_early.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { %struct.TYPE_4__, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32, i32, i64, i64 }
%struct.TYPE_3__ = type { i64 }

@.str = private unnamed_addr constant [14 x i8] c"early driver \00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, i32, i32)* @device_resume_early to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @device_resume_early(%struct.device* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %9, align 4
  %10 = load %struct.device*, %struct.device** %4, align 8
  %11 = call i32 @TRACE_DEVICE(%struct.device* %10)
  %12 = call i32 @TRACE_RESUME(i32 0)
  %13 = load %struct.device*, %struct.device** %4, align 8
  %14 = getelementptr inbounds %struct.device, %struct.device* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 3
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %24, label %18

18:                                               ; preds = %3
  %19 = load %struct.device*, %struct.device** %4, align 8
  %20 = getelementptr inbounds %struct.device, %struct.device* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 2
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %18, %3
  br label %70

25:                                               ; preds = %18
  %26 = load %struct.device*, %struct.device** %4, align 8
  %27 = getelementptr inbounds %struct.device, %struct.device* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %32, label %31

31:                                               ; preds = %25
  br label %70

32:                                               ; preds = %25
  %33 = load %struct.device*, %struct.device** %4, align 8
  %34 = load i32, i32* %6, align 4
  %35 = call i32 @dpm_wait_for_superior(%struct.device* %33, i32 %34)
  %36 = load %struct.device*, %struct.device** %4, align 8
  %37 = load i32, i32* %5, align 4
  %38 = call i64 @dpm_subsys_resume_early_cb(%struct.device* %36, i32 %37, i8** %8)
  store i64 %38, i64* %7, align 8
  %39 = load i64, i64* %7, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %61, label %41

41:                                               ; preds = %32
  %42 = load %struct.device*, %struct.device** %4, align 8
  %43 = getelementptr inbounds %struct.device, %struct.device* %42, i32 0, i32 1
  %44 = load %struct.TYPE_3__*, %struct.TYPE_3__** %43, align 8
  %45 = icmp ne %struct.TYPE_3__* %44, null
  br i1 %45, label %46, label %61

46:                                               ; preds = %41
  %47 = load %struct.device*, %struct.device** %4, align 8
  %48 = getelementptr inbounds %struct.device, %struct.device* %47, i32 0, i32 1
  %49 = load %struct.TYPE_3__*, %struct.TYPE_3__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %61

53:                                               ; preds = %46
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i8** %8, align 8
  %54 = load %struct.device*, %struct.device** %4, align 8
  %55 = getelementptr inbounds %struct.device, %struct.device* %54, i32 0, i32 1
  %56 = load %struct.TYPE_3__*, %struct.TYPE_3__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = load i32, i32* %5, align 4
  %60 = call i64 @pm_late_early_op(i64 %58, i32 %59)
  store i64 %60, i64* %7, align 8
  br label %61

61:                                               ; preds = %53, %46, %41, %32
  %62 = load i64, i64* %7, align 8
  %63 = load %struct.device*, %struct.device** %4, align 8
  %64 = load i32, i32* %5, align 4
  %65 = load i8*, i8** %8, align 8
  %66 = call i32 @dpm_run_callback(i64 %62, %struct.device* %63, i32 %64, i8* %65)
  store i32 %66, i32* %9, align 4
  %67 = load %struct.device*, %struct.device** %4, align 8
  %68 = getelementptr inbounds %struct.device, %struct.device* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 0
  store i32 0, i32* %69, align 8
  br label %70

70:                                               ; preds = %61, %31, %24
  %71 = load i32, i32* %9, align 4
  %72 = call i32 @TRACE_RESUME(i32 %71)
  %73 = load %struct.device*, %struct.device** %4, align 8
  %74 = call i32 @pm_runtime_enable(%struct.device* %73)
  %75 = load %struct.device*, %struct.device** %4, align 8
  %76 = getelementptr inbounds %struct.device, %struct.device* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i32 0, i32 1
  %78 = call i32 @complete_all(i32* %77)
  %79 = load i32, i32* %9, align 4
  ret i32 %79
}

declare dso_local i32 @TRACE_DEVICE(%struct.device*) #1

declare dso_local i32 @TRACE_RESUME(i32) #1

declare dso_local i32 @dpm_wait_for_superior(%struct.device*, i32) #1

declare dso_local i64 @dpm_subsys_resume_early_cb(%struct.device*, i32, i8**) #1

declare dso_local i64 @pm_late_early_op(i64, i32) #1

declare dso_local i32 @dpm_run_callback(i64, %struct.device*, i32, i8*) #1

declare dso_local i32 @pm_runtime_enable(%struct.device*) #1

declare dso_local i32 @complete_all(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
