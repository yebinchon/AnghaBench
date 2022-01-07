; ModuleID = '/home/carl/AnghaBench/linux/drivers/acpi/extr_dock.c_write_undock.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/acpi/extr_dock.c_write_undock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { %struct.dock_station* }
%struct.dock_station = type { i32 }
%struct.device_attribute = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@ACPI_NOTIFY_EJECT_REQUEST = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*, i64)* @write_undock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @write_undock(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device_attribute*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.dock_station*, align 8
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %12 = load %struct.device*, %struct.device** %6, align 8
  %13 = getelementptr inbounds %struct.device, %struct.device* %12, i32 0, i32 0
  %14 = load %struct.dock_station*, %struct.dock_station** %13, align 8
  store %struct.dock_station* %14, %struct.dock_station** %11, align 8
  %15 = load i64, i64* %9, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %20, label %17

17:                                               ; preds = %4
  %18 = load i32, i32* @EINVAL, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %5, align 4
  br label %38

20:                                               ; preds = %4
  %21 = call i32 (...) @acpi_scan_lock_acquire()
  %22 = load %struct.dock_station*, %struct.dock_station** %11, align 8
  %23 = call i32 @begin_undock(%struct.dock_station* %22)
  %24 = load %struct.dock_station*, %struct.dock_station** %11, align 8
  %25 = load i32, i32* @ACPI_NOTIFY_EJECT_REQUEST, align 4
  %26 = call i32 @handle_eject_request(%struct.dock_station* %24, i32 %25)
  store i32 %26, i32* %10, align 4
  %27 = call i32 (...) @acpi_scan_lock_release()
  %28 = load i32, i32* %10, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %20
  %31 = load i32, i32* %10, align 4
  %32 = sext i32 %31 to i64
  br label %35

33:                                               ; preds = %20
  %34 = load i64, i64* %9, align 8
  br label %35

35:                                               ; preds = %33, %30
  %36 = phi i64 [ %32, %30 ], [ %34, %33 ]
  %37 = trunc i64 %36 to i32
  store i32 %37, i32* %5, align 4
  br label %38

38:                                               ; preds = %35, %17
  %39 = load i32, i32* %5, align 4
  ret i32 %39
}

declare dso_local i32 @acpi_scan_lock_acquire(...) #1

declare dso_local i32 @begin_undock(%struct.dock_station*) #1

declare dso_local i32 @handle_eject_request(%struct.dock_station*, i32) #1

declare dso_local i32 @acpi_scan_lock_release(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
