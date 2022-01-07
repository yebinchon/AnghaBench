; ModuleID = '/home/carl/AnghaBench/linux/drivers/ata/extr_libata-zpodd.c_zpodd_wake_dev.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ata/extr_libata-zpodd.c_zpodd_wake_dev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ata_device = type { %struct.TYPE_2__*, %struct.zpodd* }
%struct.TYPE_2__ = type { %struct.device }
%struct.device = type { i32 }
%struct.zpodd = type { i32 }

@ACPI_NOTIFY_DEVICE_WAKE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i64, i8*)* @zpodd_wake_dev to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @zpodd_wake_dev(i32 %0, i64 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.ata_device*, align 8
  %8 = alloca %struct.zpodd*, align 8
  %9 = alloca %struct.device*, align 8
  store i32 %0, i32* %4, align 4
  store i64 %1, i64* %5, align 8
  store i8* %2, i8** %6, align 8
  %10 = load i8*, i8** %6, align 8
  %11 = bitcast i8* %10 to %struct.ata_device*
  store %struct.ata_device* %11, %struct.ata_device** %7, align 8
  %12 = load %struct.ata_device*, %struct.ata_device** %7, align 8
  %13 = getelementptr inbounds %struct.ata_device, %struct.ata_device* %12, i32 0, i32 1
  %14 = load %struct.zpodd*, %struct.zpodd** %13, align 8
  store %struct.zpodd* %14, %struct.zpodd** %8, align 8
  %15 = load %struct.ata_device*, %struct.ata_device** %7, align 8
  %16 = getelementptr inbounds %struct.ata_device, %struct.ata_device* %15, i32 0, i32 0
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  store %struct.device* %18, %struct.device** %9, align 8
  %19 = load i64, i64* %5, align 8
  %20 = load i64, i64* @ACPI_NOTIFY_DEVICE_WAKE, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %31

22:                                               ; preds = %3
  %23 = load %struct.device*, %struct.device** %9, align 8
  %24 = call i64 @pm_runtime_suspended(%struct.device* %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %31

26:                                               ; preds = %22
  %27 = load %struct.zpodd*, %struct.zpodd** %8, align 8
  %28 = getelementptr inbounds %struct.zpodd, %struct.zpodd* %27, i32 0, i32 0
  store i32 1, i32* %28, align 4
  %29 = load %struct.device*, %struct.device** %9, align 8
  %30 = call i32 @pm_runtime_resume(%struct.device* %29)
  br label %31

31:                                               ; preds = %26, %22, %3
  ret void
}

declare dso_local i64 @pm_runtime_suspended(%struct.device*) #1

declare dso_local i32 @pm_runtime_resume(%struct.device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
