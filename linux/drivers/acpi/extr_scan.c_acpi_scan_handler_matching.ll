; ModuleID = '/home/carl/AnghaBench/linux/drivers/acpi/extr_scan.c_acpi_scan_handler_matching.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/acpi/extr_scan.c_acpi_scan_handler_matching.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_scan_handler = type { i32 (i8*, %struct.acpi_device_id**)*, %struct.acpi_device_id.0* }
%struct.acpi_device_id = type opaque
%struct.acpi_device_id.0 = type { i64* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.acpi_scan_handler*, i8*, %struct.acpi_device_id.0**)* @acpi_scan_handler_matching to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @acpi_scan_handler_matching(%struct.acpi_scan_handler* %0, i8* %1, %struct.acpi_device_id.0** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.acpi_scan_handler*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.acpi_device_id.0**, align 8
  %8 = alloca %struct.acpi_device_id.0*, align 8
  store %struct.acpi_scan_handler* %0, %struct.acpi_scan_handler** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.acpi_device_id.0** %2, %struct.acpi_device_id.0*** %7, align 8
  %9 = load %struct.acpi_scan_handler*, %struct.acpi_scan_handler** %5, align 8
  %10 = getelementptr inbounds %struct.acpi_scan_handler, %struct.acpi_scan_handler* %9, i32 0, i32 0
  %11 = load i32 (i8*, %struct.acpi_device_id**)*, i32 (i8*, %struct.acpi_device_id**)** %10, align 8
  %12 = icmp ne i32 (i8*, %struct.acpi_device_id**)* %11, null
  br i1 %12, label %13, label %21

13:                                               ; preds = %3
  %14 = load %struct.acpi_scan_handler*, %struct.acpi_scan_handler** %5, align 8
  %15 = getelementptr inbounds %struct.acpi_scan_handler, %struct.acpi_scan_handler* %14, i32 0, i32 0
  %16 = load i32 (i8*, %struct.acpi_device_id**)*, i32 (i8*, %struct.acpi_device_id**)** %15, align 8
  %17 = load i8*, i8** %6, align 8
  %18 = load %struct.acpi_device_id.0**, %struct.acpi_device_id.0*** %7, align 8
  %19 = bitcast %struct.acpi_device_id.0** %18 to %struct.acpi_device_id**
  %20 = call i32 %16(i8* %17, %struct.acpi_device_id** %19)
  store i32 %20, i32* %4, align 4
  br label %52

21:                                               ; preds = %3
  %22 = load %struct.acpi_scan_handler*, %struct.acpi_scan_handler** %5, align 8
  %23 = getelementptr inbounds %struct.acpi_scan_handler, %struct.acpi_scan_handler* %22, i32 0, i32 1
  %24 = load %struct.acpi_device_id.0*, %struct.acpi_device_id.0** %23, align 8
  store %struct.acpi_device_id.0* %24, %struct.acpi_device_id.0** %8, align 8
  br label %25

25:                                               ; preds = %48, %21
  %26 = load %struct.acpi_device_id.0*, %struct.acpi_device_id.0** %8, align 8
  %27 = getelementptr inbounds %struct.acpi_device_id.0, %struct.acpi_device_id.0* %26, i32 0, i32 0
  %28 = load i64*, i64** %27, align 8
  %29 = getelementptr inbounds i64, i64* %28, i64 0
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %51

32:                                               ; preds = %25
  %33 = load %struct.acpi_device_id.0*, %struct.acpi_device_id.0** %8, align 8
  %34 = getelementptr inbounds %struct.acpi_device_id.0, %struct.acpi_device_id.0* %33, i32 0, i32 0
  %35 = load i64*, i64** %34, align 8
  %36 = bitcast i64* %35 to i8*
  %37 = load i8*, i8** %6, align 8
  %38 = call i32 @strcmp(i8* %36, i8* %37)
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %47, label %40

40:                                               ; preds = %32
  %41 = load %struct.acpi_device_id.0**, %struct.acpi_device_id.0*** %7, align 8
  %42 = icmp ne %struct.acpi_device_id.0** %41, null
  br i1 %42, label %43, label %46

43:                                               ; preds = %40
  %44 = load %struct.acpi_device_id.0*, %struct.acpi_device_id.0** %8, align 8
  %45 = load %struct.acpi_device_id.0**, %struct.acpi_device_id.0*** %7, align 8
  store %struct.acpi_device_id.0* %44, %struct.acpi_device_id.0** %45, align 8
  br label %46

46:                                               ; preds = %43, %40
  store i32 1, i32* %4, align 4
  br label %52

47:                                               ; preds = %32
  br label %48

48:                                               ; preds = %47
  %49 = load %struct.acpi_device_id.0*, %struct.acpi_device_id.0** %8, align 8
  %50 = getelementptr inbounds %struct.acpi_device_id.0, %struct.acpi_device_id.0* %49, i32 1
  store %struct.acpi_device_id.0* %50, %struct.acpi_device_id.0** %8, align 8
  br label %25

51:                                               ; preds = %25
  store i32 0, i32* %4, align 4
  br label %52

52:                                               ; preds = %51, %46, %13
  %53 = load i32, i32* %4, align 4
  ret i32 %53
}

declare dso_local i32 @strcmp(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
