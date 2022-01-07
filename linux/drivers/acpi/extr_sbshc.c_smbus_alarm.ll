; ModuleID = '/home/carl/AnghaBench/linux/drivers/acpi/extr_sbshc.c_smbus_alarm.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/acpi/extr_sbshc.c_smbus_alarm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_smb_hc = type { i32, i32, i32 }
%union.acpi_smb_status = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i64, i64 }

@ACPI_SMB_STATUS = common dso_local global i32 0, align 4
@SMBUS_OK = common dso_local global i64 0, align 8
@ACPI_SMB_ALARM_ADDRESS = common dso_local global i32 0, align 4
@OSL_NOTIFY_HANDLER = common dso_local global i32 0, align 4
@acpi_smbus_callback = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @smbus_alarm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @smbus_alarm(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca %struct.acpi_smb_hc*, align 8
  %5 = alloca %union.acpi_smb_status, align 8
  %6 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  %7 = load i8*, i8** %3, align 8
  %8 = bitcast i8* %7 to %struct.acpi_smb_hc*
  store %struct.acpi_smb_hc* %8, %struct.acpi_smb_hc** %4, align 8
  %9 = load %struct.acpi_smb_hc*, %struct.acpi_smb_hc** %4, align 8
  %10 = load i32, i32* @ACPI_SMB_STATUS, align 4
  %11 = bitcast %union.acpi_smb_status* %5 to i32*
  %12 = call i64 @smb_hc_read(%struct.acpi_smb_hc* %9, i32 %10, i32* %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %64

15:                                               ; preds = %1
  %16 = bitcast %union.acpi_smb_status* %5 to %struct.TYPE_2__*
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 2
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %32

20:                                               ; preds = %15
  %21 = bitcast %union.acpi_smb_status* %5 to %struct.TYPE_2__*
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @SMBUS_OK, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %32

26:                                               ; preds = %20
  %27 = load %struct.acpi_smb_hc*, %struct.acpi_smb_hc** %4, align 8
  %28 = getelementptr inbounds %struct.acpi_smb_hc, %struct.acpi_smb_hc* %27, i32 0, i32 0
  store i32 1, i32* %28, align 4
  %29 = load %struct.acpi_smb_hc*, %struct.acpi_smb_hc** %4, align 8
  %30 = getelementptr inbounds %struct.acpi_smb_hc, %struct.acpi_smb_hc* %29, i32 0, i32 2
  %31 = call i32 @wake_up(i32* %30)
  br label %32

32:                                               ; preds = %26, %20, %15
  %33 = bitcast %union.acpi_smb_status* %5 to %struct.TYPE_2__*
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %38, label %37

37:                                               ; preds = %32
  store i32 0, i32* %2, align 4
  br label %64

38:                                               ; preds = %32
  %39 = load %struct.acpi_smb_hc*, %struct.acpi_smb_hc** %4, align 8
  %40 = getelementptr inbounds %struct.acpi_smb_hc, %struct.acpi_smb_hc* %39, i32 0, i32 1
  %41 = call i32 @mutex_lock(i32* %40)
  %42 = load %struct.acpi_smb_hc*, %struct.acpi_smb_hc** %4, align 8
  %43 = load i32, i32* @ACPI_SMB_ALARM_ADDRESS, align 4
  %44 = call i64 @smb_hc_read(%struct.acpi_smb_hc* %42, i32 %43, i32* %6)
  %45 = bitcast %union.acpi_smb_status* %5 to %struct.TYPE_2__*
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 1
  store i64 0, i64* %46, align 8
  %47 = load %struct.acpi_smb_hc*, %struct.acpi_smb_hc** %4, align 8
  %48 = load i32, i32* @ACPI_SMB_STATUS, align 4
  %49 = bitcast %union.acpi_smb_status* %5 to i32*
  %50 = load i32, i32* %49, align 8
  %51 = call i32 @smb_hc_write(%struct.acpi_smb_hc* %47, i32 %48, i32 %50)
  %52 = load i32, i32* %6, align 4
  %53 = ashr i32 %52, 1
  switch i32 %53, label %59 [
    i32 129, label %54
    i32 128, label %54
    i32 130, label %54
  ]

54:                                               ; preds = %38, %38, %38
  %55 = load i32, i32* @OSL_NOTIFY_HANDLER, align 4
  %56 = load i32, i32* @acpi_smbus_callback, align 4
  %57 = load %struct.acpi_smb_hc*, %struct.acpi_smb_hc** %4, align 8
  %58 = call i32 @acpi_os_execute(i32 %55, i32 %56, %struct.acpi_smb_hc* %57)
  br label %59

59:                                               ; preds = %38, %54
  br label %60

60:                                               ; preds = %59
  %61 = load %struct.acpi_smb_hc*, %struct.acpi_smb_hc** %4, align 8
  %62 = getelementptr inbounds %struct.acpi_smb_hc, %struct.acpi_smb_hc* %61, i32 0, i32 1
  %63 = call i32 @mutex_unlock(i32* %62)
  store i32 0, i32* %2, align 4
  br label %64

64:                                               ; preds = %60, %37, %14
  %65 = load i32, i32* %2, align 4
  ret i32 %65
}

declare dso_local i64 @smb_hc_read(%struct.acpi_smb_hc*, i32, i32*) #1

declare dso_local i32 @wake_up(i32*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @smb_hc_write(%struct.acpi_smb_hc*, i32, i32) #1

declare dso_local i32 @acpi_os_execute(i32, i32, %struct.acpi_smb_hc*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
