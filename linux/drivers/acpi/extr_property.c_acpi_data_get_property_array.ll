; ModuleID = '/home/carl/AnghaBench/linux/drivers/acpi/extr_property.c_acpi_data_get_property_array.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/acpi/extr_property.c_acpi_data_get_property_array.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_device_data = type { i32 }
%union.acpi_object = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64 }

@ACPI_TYPE_PACKAGE = common dso_local global i32 0, align 4
@ACPI_TYPE_ANY = common dso_local global i64 0, align 8
@EPROTO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.acpi_device_data*, i8*, i64, %union.acpi_object**)* @acpi_data_get_property_array to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @acpi_data_get_property_array(%struct.acpi_device_data* %0, i8* %1, i64 %2, %union.acpi_object** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.acpi_device_data*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %union.acpi_object**, align 8
  %10 = alloca %union.acpi_object*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.acpi_device_data* %0, %struct.acpi_device_data** %6, align 8
  store i8* %1, i8** %7, align 8
  store i64 %2, i64* %8, align 8
  store %union.acpi_object** %3, %union.acpi_object*** %9, align 8
  %13 = load %struct.acpi_device_data*, %struct.acpi_device_data** %6, align 8
  %14 = load i8*, i8** %7, align 8
  %15 = load i32, i32* @ACPI_TYPE_PACKAGE, align 4
  %16 = call i32 @acpi_data_get_property(%struct.acpi_device_data* %13, i8* %14, i32 %15, %union.acpi_object** %10)
  store i32 %16, i32* %11, align 4
  %17 = load i32, i32* %11, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %4
  %20 = load i32, i32* %11, align 4
  store i32 %20, i32* %5, align 4
  br label %60

21:                                               ; preds = %4
  %22 = load i64, i64* %8, align 8
  %23 = load i64, i64* @ACPI_TYPE_ANY, align 8
  %24 = icmp ne i64 %22, %23
  br i1 %24, label %25, label %53

25:                                               ; preds = %21
  store i32 0, i32* %12, align 4
  br label %26

26:                                               ; preds = %49, %25
  %27 = load i32, i32* %12, align 4
  %28 = load %union.acpi_object*, %union.acpi_object** %10, align 8
  %29 = bitcast %union.acpi_object* %28 to %struct.TYPE_4__*
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = icmp slt i32 %27, %31
  br i1 %32, label %33, label %52

33:                                               ; preds = %26
  %34 = load %union.acpi_object*, %union.acpi_object** %10, align 8
  %35 = bitcast %union.acpi_object* %34 to %struct.TYPE_4__*
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 1
  %37 = load %struct.TYPE_3__*, %struct.TYPE_3__** %36, align 8
  %38 = load i32, i32* %12, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i64 %39
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* %8, align 8
  %44 = icmp ne i64 %42, %43
  br i1 %44, label %45, label %48

45:                                               ; preds = %33
  %46 = load i32, i32* @EPROTO, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %5, align 4
  br label %60

48:                                               ; preds = %33
  br label %49

49:                                               ; preds = %48
  %50 = load i32, i32* %12, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %12, align 4
  br label %26

52:                                               ; preds = %26
  br label %53

53:                                               ; preds = %52, %21
  %54 = load %union.acpi_object**, %union.acpi_object*** %9, align 8
  %55 = icmp ne %union.acpi_object** %54, null
  br i1 %55, label %56, label %59

56:                                               ; preds = %53
  %57 = load %union.acpi_object*, %union.acpi_object** %10, align 8
  %58 = load %union.acpi_object**, %union.acpi_object*** %9, align 8
  store %union.acpi_object* %57, %union.acpi_object** %58, align 8
  br label %59

59:                                               ; preds = %56, %53
  store i32 0, i32* %5, align 4
  br label %60

60:                                               ; preds = %59, %45, %19
  %61 = load i32, i32* %5, align 4
  ret i32 %61
}

declare dso_local i32 @acpi_data_get_property(%struct.acpi_device_data*, i8*, i32, %union.acpi_object**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
