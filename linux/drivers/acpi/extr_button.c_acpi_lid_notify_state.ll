; ModuleID = '/home/carl/AnghaBench/linux/drivers/acpi/extr_button.c_acpi_lid_notify_state.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/acpi/extr_button.c_acpi_lid_notify_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_device = type { i32 }
%struct.acpi_button = type { i32, i32, i32 }

@lid_init_state = common dso_local global i64 0, align 8
@ACPI_BUTTON_LID_INIT_IGNORE = common dso_local global i64 0, align 8
@lid_report_interval = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"The lid device is not compliant to SW_LID.\0A\00", align 1
@SW_LID = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [13 x i8] c"ACPI LID %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"open\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"closed\00", align 1
@acpi_lid_notifier = common dso_local global i32 0, align 4
@NOTIFY_DONE = common dso_local global i32 0, align 4
@NOTIFY_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.acpi_device*, i32)* @acpi_lid_notify_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @acpi_lid_notify_state(%struct.acpi_device* %0, i32 %1) #0 {
  %3 = alloca %struct.acpi_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.acpi_button*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.acpi_device* %0, %struct.acpi_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load %struct.acpi_device*, %struct.acpi_device** %3, align 8
  %10 = call %struct.acpi_button* @acpi_driver_data(%struct.acpi_device* %9)
  store %struct.acpi_button* %10, %struct.acpi_button** %5, align 8
  %11 = load i64, i64* @lid_init_state, align 8
  %12 = load i64, i64* @ACPI_BUTTON_LID_INIT_IGNORE, align 8
  %13 = icmp ne i64 %11, %12
  br i1 %13, label %24, label %14

14:                                               ; preds = %2
  %15 = load %struct.acpi_button*, %struct.acpi_button** %5, align 8
  %16 = getelementptr inbounds %struct.acpi_button, %struct.acpi_button* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* %4, align 4
  %19 = icmp ne i32 %18, 0
  %20 = xor i1 %19, true
  %21 = xor i1 %20, true
  %22 = zext i1 %21 to i32
  %23 = icmp ne i32 %17, %22
  br i1 %23, label %24, label %25

24:                                               ; preds = %14, %2
  store i32 1, i32* %8, align 4
  br label %26

25:                                               ; preds = %14
  store i32 0, i32* %8, align 4
  br label %26

26:                                               ; preds = %25, %24
  %27 = load %struct.acpi_button*, %struct.acpi_button** %5, align 8
  %28 = getelementptr inbounds %struct.acpi_button, %struct.acpi_button* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @lid_report_interval, align 4
  %31 = call i32 @ms_to_ktime(i32 %30)
  %32 = call i32 @ktime_add(i32 %29, i32 %31)
  store i32 %32, i32* %7, align 4
  %33 = load %struct.acpi_button*, %struct.acpi_button** %5, align 8
  %34 = getelementptr inbounds %struct.acpi_button, %struct.acpi_button* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* %4, align 4
  %37 = icmp ne i32 %36, 0
  %38 = xor i1 %37, true
  %39 = xor i1 %38, true
  %40 = zext i1 %39 to i32
  %41 = icmp eq i32 %35, %40
  br i1 %41, label %42, label %68

42:                                               ; preds = %26
  %43 = call i32 (...) @ktime_get()
  %44 = load i32, i32* %7, align 4
  %45 = call i64 @ktime_after(i32 %43, i32 %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %68

47:                                               ; preds = %42
  %48 = call i32 @pr_warn_once(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0))
  %49 = load i64, i64* @lid_init_state, align 8
  %50 = load i64, i64* @ACPI_BUTTON_LID_INIT_IGNORE, align 8
  %51 = icmp eq i64 %49, %50
  br i1 %51, label %52, label %67

52:                                               ; preds = %47
  store i32 1, i32* %8, align 4
  %53 = load i32, i32* %4, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %66, label %55

55:                                               ; preds = %52
  %56 = load %struct.acpi_button*, %struct.acpi_button** %5, align 8
  %57 = getelementptr inbounds %struct.acpi_button, %struct.acpi_button* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* @SW_LID, align 4
  %60 = load i32, i32* %4, align 4
  %61 = call i32 @input_report_switch(i32 %58, i32 %59, i32 %60)
  %62 = load %struct.acpi_button*, %struct.acpi_button** %5, align 8
  %63 = getelementptr inbounds %struct.acpi_button, %struct.acpi_button* %62, i32 0, i32 2
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @input_sync(i32 %64)
  br label %66

66:                                               ; preds = %55, %52
  br label %67

67:                                               ; preds = %66, %47
  br label %68

68:                                               ; preds = %67, %42, %26
  %69 = load i32, i32* %8, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %103

71:                                               ; preds = %68
  %72 = load %struct.acpi_device*, %struct.acpi_device** %3, align 8
  %73 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = load i32, i32* %4, align 4
  %76 = icmp ne i32 %75, 0
  %77 = zext i1 %76 to i64
  %78 = select i1 %76, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0)
  %79 = call i32 @acpi_handle_debug(i32 %74, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i8* %78)
  %80 = load %struct.acpi_button*, %struct.acpi_button** %5, align 8
  %81 = getelementptr inbounds %struct.acpi_button, %struct.acpi_button* %80, i32 0, i32 2
  %82 = load i32, i32* %81, align 4
  %83 = load i32, i32* @SW_LID, align 4
  %84 = load i32, i32* %4, align 4
  %85 = icmp ne i32 %84, 0
  %86 = xor i1 %85, true
  %87 = zext i1 %86 to i32
  %88 = call i32 @input_report_switch(i32 %82, i32 %83, i32 %87)
  %89 = load %struct.acpi_button*, %struct.acpi_button** %5, align 8
  %90 = getelementptr inbounds %struct.acpi_button, %struct.acpi_button* %89, i32 0, i32 2
  %91 = load i32, i32* %90, align 4
  %92 = call i32 @input_sync(i32 %91)
  %93 = load i32, i32* %4, align 4
  %94 = icmp ne i32 %93, 0
  %95 = xor i1 %94, true
  %96 = xor i1 %95, true
  %97 = zext i1 %96 to i32
  %98 = load %struct.acpi_button*, %struct.acpi_button** %5, align 8
  %99 = getelementptr inbounds %struct.acpi_button, %struct.acpi_button* %98, i32 0, i32 0
  store i32 %97, i32* %99, align 4
  %100 = call i32 (...) @ktime_get()
  %101 = load %struct.acpi_button*, %struct.acpi_button** %5, align 8
  %102 = getelementptr inbounds %struct.acpi_button, %struct.acpi_button* %101, i32 0, i32 1
  store i32 %100, i32* %102, align 4
  br label %103

103:                                              ; preds = %71, %68
  %104 = load i32, i32* %4, align 4
  %105 = load %struct.acpi_device*, %struct.acpi_device** %3, align 8
  %106 = call i32 @blocking_notifier_call_chain(i32* @acpi_lid_notifier, i32 %104, %struct.acpi_device* %105)
  store i32 %106, i32* %6, align 4
  %107 = load i32, i32* %6, align 4
  %108 = load i32, i32* @NOTIFY_DONE, align 4
  %109 = icmp eq i32 %107, %108
  br i1 %109, label %110, label %114

110:                                              ; preds = %103
  %111 = load i32, i32* %4, align 4
  %112 = load %struct.acpi_device*, %struct.acpi_device** %3, align 8
  %113 = call i32 @blocking_notifier_call_chain(i32* @acpi_lid_notifier, i32 %111, %struct.acpi_device* %112)
  store i32 %113, i32* %6, align 4
  br label %114

114:                                              ; preds = %110, %103
  %115 = load i32, i32* %6, align 4
  %116 = load i32, i32* @NOTIFY_DONE, align 4
  %117 = icmp eq i32 %115, %116
  br i1 %117, label %122, label %118

118:                                              ; preds = %114
  %119 = load i32, i32* %6, align 4
  %120 = load i32, i32* @NOTIFY_OK, align 4
  %121 = icmp eq i32 %119, %120
  br i1 %121, label %122, label %123

122:                                              ; preds = %118, %114
  store i32 0, i32* %6, align 4
  br label %123

123:                                              ; preds = %122, %118
  %124 = load i32, i32* %6, align 4
  ret i32 %124
}

declare dso_local %struct.acpi_button* @acpi_driver_data(%struct.acpi_device*) #1

declare dso_local i32 @ktime_add(i32, i32) #1

declare dso_local i32 @ms_to_ktime(i32) #1

declare dso_local i64 @ktime_after(i32, i32) #1

declare dso_local i32 @ktime_get(...) #1

declare dso_local i32 @pr_warn_once(i8*) #1

declare dso_local i32 @input_report_switch(i32, i32, i32) #1

declare dso_local i32 @input_sync(i32) #1

declare dso_local i32 @acpi_handle_debug(i32, i8*, i8*) #1

declare dso_local i32 @blocking_notifier_call_chain(i32*, i32, %struct.acpi_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
