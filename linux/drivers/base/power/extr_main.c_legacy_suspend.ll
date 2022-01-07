; ModuleID = '/home/carl/AnghaBench/linux/drivers/base/power/extr_main.c_legacy_suspend.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/base/power/extr_main.c_legacy_suspend.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.TYPE_8__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, i32, i32 (%struct.device*, i32)*, i8*)* @legacy_suspend to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @legacy_suspend(%struct.device* %0, i32 %1, i32 (%struct.device*, i32)* %2, i8* %3) #0 {
  %5 = alloca %struct.TYPE_8__, align 4
  %6 = alloca %struct.device*, align 8
  %7 = alloca i32 (%struct.device*, i32)*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %5, i32 0, i32 0
  store i32 %1, i32* %11, align 4
  store %struct.device* %0, %struct.device** %6, align 8
  store i32 (%struct.device*, i32)* %2, i32 (%struct.device*, i32)** %7, align 8
  store i8* %3, i8** %8, align 8
  %12 = load %struct.device*, %struct.device** %6, align 8
  %13 = load i32 (%struct.device*, i32)*, i32 (%struct.device*, i32)** %7, align 8
  %14 = call i32 @initcall_debug_start(%struct.device* %12, i32 (%struct.device*, i32)* %13)
  store i32 %14, i32* %10, align 4
  %15 = load %struct.device*, %struct.device** %6, align 8
  %16 = load i8*, i8** %8, align 8
  %17 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %5, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @trace_device_pm_callback_start(%struct.device* %15, i8* %16, i32 %18)
  %20 = load i32 (%struct.device*, i32)*, i32 (%struct.device*, i32)** %7, align 8
  %21 = load %struct.device*, %struct.device** %6, align 8
  %22 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %5, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i32 %20(%struct.device* %21, i32 %23)
  store i32 %24, i32* %9, align 4
  %25 = load %struct.device*, %struct.device** %6, align 8
  %26 = load i32, i32* %9, align 4
  %27 = call i32 @trace_device_pm_callback_end(%struct.device* %25, i32 %26)
  %28 = load i32 (%struct.device*, i32)*, i32 (%struct.device*, i32)** %7, align 8
  %29 = load i32, i32* %9, align 4
  %30 = call i32 @suspend_report_result(i32 (%struct.device*, i32)* %28, i32 %29)
  %31 = load %struct.device*, %struct.device** %6, align 8
  %32 = load i32, i32* %10, align 4
  %33 = load i32 (%struct.device*, i32)*, i32 (%struct.device*, i32)** %7, align 8
  %34 = load i32, i32* %9, align 4
  %35 = call i32 @initcall_debug_report(%struct.device* %31, i32 %32, i32 (%struct.device*, i32)* %33, i32 %34)
  %36 = load i32, i32* %9, align 4
  ret i32 %36
}

declare dso_local i32 @initcall_debug_start(%struct.device*, i32 (%struct.device*, i32)*) #1

declare dso_local i32 @trace_device_pm_callback_start(%struct.device*, i8*, i32) #1

declare dso_local i32 @trace_device_pm_callback_end(%struct.device*, i32) #1

declare dso_local i32 @suspend_report_result(i32 (%struct.device*, i32)*, i32) #1

declare dso_local i32 @initcall_debug_report(%struct.device*, i32, i32 (%struct.device*, i32)*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
