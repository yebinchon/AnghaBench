; ModuleID = '/home/carl/AnghaBench/linux/drivers/acpi/extr_scan.c_acpi_bus_get_parent.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/acpi/extr_scan.c_acpi_bus_get_parent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_device = type { i32 }

@acpi_root = common dso_local global %struct.acpi_device* null, align 8
@AE_NULL_ENTRY = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.acpi_device* (i32)* @acpi_bus_get_parent to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.acpi_device* @acpi_bus_get_parent(i32 %0) #0 {
  %2 = alloca %struct.acpi_device*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.acpi_device*, align 8
  %5 = alloca i64, align 8
  store i32 %0, i32* %3, align 4
  store %struct.acpi_device* null, %struct.acpi_device** %4, align 8
  %6 = load i32, i32* %3, align 4
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %10, label %8

8:                                                ; preds = %1
  %9 = load %struct.acpi_device*, %struct.acpi_device** @acpi_root, align 8
  store %struct.acpi_device* %9, %struct.acpi_device** %2, align 8
  br label %33

10:                                               ; preds = %1
  br label %11

11:                                               ; preds = %27, %10
  %12 = load i32, i32* %3, align 4
  %13 = call i64 @acpi_get_parent(i32 %12, i32* %3)
  store i64 %13, i64* %5, align 8
  %14 = load i64, i64* %5, align 8
  %15 = call i64 @ACPI_FAILURE(i64 %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %26

17:                                               ; preds = %11
  %18 = load i64, i64* %5, align 8
  %19 = load i64, i64* @AE_NULL_ENTRY, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %22

21:                                               ; preds = %17
  br label %24

22:                                               ; preds = %17
  %23 = load %struct.acpi_device*, %struct.acpi_device** @acpi_root, align 8
  br label %24

24:                                               ; preds = %22, %21
  %25 = phi %struct.acpi_device* [ null, %21 ], [ %23, %22 ]
  store %struct.acpi_device* %25, %struct.acpi_device** %2, align 8
  br label %33

26:                                               ; preds = %11
  br label %27

27:                                               ; preds = %26
  %28 = load i32, i32* %3, align 4
  %29 = call i64 @acpi_bus_get_device(i32 %28, %struct.acpi_device** %4)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %11, label %31

31:                                               ; preds = %27
  %32 = load %struct.acpi_device*, %struct.acpi_device** %4, align 8
  store %struct.acpi_device* %32, %struct.acpi_device** %2, align 8
  br label %33

33:                                               ; preds = %31, %24, %8
  %34 = load %struct.acpi_device*, %struct.acpi_device** %2, align 8
  ret %struct.acpi_device* %34
}

declare dso_local i64 @acpi_get_parent(i32, i32*) #1

declare dso_local i64 @ACPI_FAILURE(i64) #1

declare dso_local i64 @acpi_bus_get_device(i32, %struct.acpi_device**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
