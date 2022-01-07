; ModuleID = '/home/carl/AnghaBench/linux/drivers/acpi/extr_scan.c_acpi_wakeup_gpe_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/acpi/extr_scan.c_acpi_wakeup_gpe_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_device_id = type { i8*, i32 }
%struct.acpi_device = type { i32, i32, %struct.acpi_device_wakeup }
%struct.acpi_device_wakeup = type { i64, i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@acpi_wakeup_gpe_init.button_device_ids = internal constant [4 x %struct.acpi_device_id] [%struct.acpi_device_id { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i32 0, i32 0), i32 0 }, %struct.acpi_device_id { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i32 0, i32 0), i32 0 }, %struct.acpi_device_id { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i32 0, i32 0), i32 0 }, %struct.acpi_device_id { i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i32 0, i32 0), i32 0 }], align 16
@.str = private unnamed_addr constant [8 x i8] c"PNP0C0C\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"PNP0C0D\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"PNP0C0E\00", align 1
@.str.3 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@ACPI_STATE_S5 = common dso_local global i64 0, align 8
@ACPI_STATE_S4 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.acpi_device*)* @acpi_wakeup_gpe_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @acpi_wakeup_gpe_init(%struct.acpi_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.acpi_device*, align 8
  %4 = alloca %struct.acpi_device_wakeup*, align 8
  %5 = alloca i32, align 4
  store %struct.acpi_device* %0, %struct.acpi_device** %3, align 8
  %6 = load %struct.acpi_device*, %struct.acpi_device** %3, align 8
  %7 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %6, i32 0, i32 2
  store %struct.acpi_device_wakeup* %7, %struct.acpi_device_wakeup** %4, align 8
  %8 = load %struct.acpi_device_wakeup*, %struct.acpi_device_wakeup** %4, align 8
  %9 = getelementptr inbounds %struct.acpi_device_wakeup, %struct.acpi_device_wakeup* %8, i32 0, i32 3
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  store i64 0, i64* %10, align 8
  %11 = load %struct.acpi_device*, %struct.acpi_device** %3, align 8
  %12 = call i32 @acpi_match_device_ids(%struct.acpi_device* %11, %struct.acpi_device_id* getelementptr inbounds ([4 x %struct.acpi_device_id], [4 x %struct.acpi_device_id]* @acpi_wakeup_gpe_init.button_device_ids, i64 0, i64 0))
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %40, label %14

14:                                               ; preds = %1
  %15 = load %struct.acpi_device*, %struct.acpi_device** %3, align 8
  %16 = call i32 @acpi_match_device_ids(%struct.acpi_device* %15, %struct.acpi_device_id* getelementptr inbounds ([4 x %struct.acpi_device_id], [4 x %struct.acpi_device_id]* @acpi_wakeup_gpe_init.button_device_ids, i64 0, i64 1))
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %29, label %18

18:                                               ; preds = %14
  %19 = load %struct.acpi_device_wakeup*, %struct.acpi_device_wakeup** %4, align 8
  %20 = getelementptr inbounds %struct.acpi_device_wakeup, %struct.acpi_device_wakeup* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @ACPI_STATE_S5, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %28

24:                                               ; preds = %18
  %25 = load i64, i64* @ACPI_STATE_S4, align 8
  %26 = load %struct.acpi_device_wakeup*, %struct.acpi_device_wakeup** %4, align 8
  %27 = getelementptr inbounds %struct.acpi_device_wakeup, %struct.acpi_device_wakeup* %26, i32 0, i32 0
  store i64 %25, i64* %27, align 8
  br label %28

28:                                               ; preds = %24, %18
  br label %29

29:                                               ; preds = %28, %14
  %30 = load %struct.acpi_device_wakeup*, %struct.acpi_device_wakeup** %4, align 8
  %31 = getelementptr inbounds %struct.acpi_device_wakeup, %struct.acpi_device_wakeup* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.acpi_device_wakeup*, %struct.acpi_device_wakeup** %4, align 8
  %34 = getelementptr inbounds %struct.acpi_device_wakeup, %struct.acpi_device_wakeup* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 8
  %36 = call i32 @acpi_mark_gpe_for_wake(i32 %32, i32 %35)
  %37 = load %struct.acpi_device*, %struct.acpi_device** %3, align 8
  %38 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %37, i32 0, i32 1
  %39 = call i32 @device_set_wakeup_capable(i32* %38, i32 1)
  store i32 1, i32* %2, align 4
  br label %53

40:                                               ; preds = %1
  %41 = load %struct.acpi_device*, %struct.acpi_device** %3, align 8
  %42 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = load %struct.acpi_device_wakeup*, %struct.acpi_device_wakeup** %4, align 8
  %45 = getelementptr inbounds %struct.acpi_device_wakeup, %struct.acpi_device_wakeup* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.acpi_device_wakeup*, %struct.acpi_device_wakeup** %4, align 8
  %48 = getelementptr inbounds %struct.acpi_device_wakeup, %struct.acpi_device_wakeup* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 8
  %50 = call i32 @acpi_setup_gpe_for_wake(i32 %43, i32 %46, i32 %49)
  store i32 %50, i32* %5, align 4
  %51 = load i32, i32* %5, align 4
  %52 = call i32 @ACPI_SUCCESS(i32 %51)
  store i32 %52, i32* %2, align 4
  br label %53

53:                                               ; preds = %40, %29
  %54 = load i32, i32* %2, align 4
  ret i32 %54
}

declare dso_local i32 @acpi_match_device_ids(%struct.acpi_device*, %struct.acpi_device_id*) #1

declare dso_local i32 @acpi_mark_gpe_for_wake(i32, i32) #1

declare dso_local i32 @device_set_wakeup_capable(i32*, i32) #1

declare dso_local i32 @acpi_setup_gpe_for_wake(i32, i32, i32) #1

declare dso_local i32 @ACPI_SUCCESS(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
