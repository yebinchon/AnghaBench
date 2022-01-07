; ModuleID = '/home/carl/AnghaBench/linux/drivers/acpi/extr_property.c_acpi_enumerate_nondev_subnodes.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/acpi/extr_property.c_acpi_enumerate_nondev_subnodes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.acpi_object = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i64 }
%struct.acpi_device_data = type { i32 }
%struct.fwnode_handle = type { i32 }
%struct.TYPE_3__ = type { i32, %union.acpi_object* }

@ACPI_TYPE_BUFFER = common dso_local global i64 0, align 8
@ACPI_TYPE_PACKAGE = common dso_local global i64 0, align 8
@ads_guid = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %union.acpi_object*, %struct.acpi_device_data*, %struct.fwnode_handle*)* @acpi_enumerate_nondev_subnodes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @acpi_enumerate_nondev_subnodes(i32 %0, %union.acpi_object* %1, %struct.acpi_device_data* %2, %struct.fwnode_handle* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %union.acpi_object*, align 8
  %8 = alloca %struct.acpi_device_data*, align 8
  %9 = alloca %struct.fwnode_handle*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %union.acpi_object*, align 8
  %12 = alloca %union.acpi_object*, align 8
  store i32 %0, i32* %6, align 4
  store %union.acpi_object* %1, %union.acpi_object** %7, align 8
  store %struct.acpi_device_data* %2, %struct.acpi_device_data** %8, align 8
  store %struct.fwnode_handle* %3, %struct.fwnode_handle** %9, align 8
  store i32 0, i32* %10, align 4
  br label %13

13:                                               ; preds = %70, %4
  %14 = load i32, i32* %10, align 4
  %15 = load %union.acpi_object*, %union.acpi_object** %7, align 8
  %16 = bitcast %union.acpi_object* %15 to %struct.TYPE_3__*
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = icmp slt i32 %14, %18
  br i1 %19, label %20, label %73

20:                                               ; preds = %13
  %21 = load %union.acpi_object*, %union.acpi_object** %7, align 8
  %22 = bitcast %union.acpi_object* %21 to %struct.TYPE_3__*
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 1
  %24 = load %union.acpi_object*, %union.acpi_object** %23, align 8
  %25 = load i32, i32* %10, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds %union.acpi_object, %union.acpi_object* %24, i64 %26
  store %union.acpi_object* %27, %union.acpi_object** %11, align 8
  %28 = load %union.acpi_object*, %union.acpi_object** %7, align 8
  %29 = bitcast %union.acpi_object* %28 to %struct.TYPE_3__*
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 1
  %31 = load %union.acpi_object*, %union.acpi_object** %30, align 8
  %32 = load i32, i32* %10, align 4
  %33 = add nsw i32 %32, 1
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %union.acpi_object, %union.acpi_object* %31, i64 %34
  store %union.acpi_object* %35, %union.acpi_object** %12, align 8
  %36 = load %union.acpi_object*, %union.acpi_object** %11, align 8
  %37 = bitcast %union.acpi_object* %36 to i64*
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @ACPI_TYPE_BUFFER, align 8
  %40 = icmp ne i64 %38, %39
  br i1 %40, label %53, label %41

41:                                               ; preds = %20
  %42 = load %union.acpi_object*, %union.acpi_object** %11, align 8
  %43 = bitcast %union.acpi_object* %42 to %struct.TYPE_4__*
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = icmp ne i32 %45, 16
  br i1 %46, label %53, label %47

47:                                               ; preds = %41
  %48 = load %union.acpi_object*, %union.acpi_object** %12, align 8
  %49 = bitcast %union.acpi_object* %48 to i64*
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* @ACPI_TYPE_PACKAGE, align 8
  %52 = icmp ne i64 %50, %51
  br i1 %52, label %53, label %54

53:                                               ; preds = %47, %41, %20
  br label %73

54:                                               ; preds = %47
  %55 = load %union.acpi_object*, %union.acpi_object** %11, align 8
  %56 = bitcast %union.acpi_object* %55 to %struct.TYPE_4__*
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 1
  %58 = load i64, i64* %57, align 8
  %59 = inttoptr i64 %58 to i32*
  %60 = call i32 @guid_equal(i32* %59, i32* @ads_guid)
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %63, label %62

62:                                               ; preds = %54
  br label %70

63:                                               ; preds = %54
  %64 = load i32, i32* %6, align 4
  %65 = load %union.acpi_object*, %union.acpi_object** %12, align 8
  %66 = load %struct.acpi_device_data*, %struct.acpi_device_data** %8, align 8
  %67 = getelementptr inbounds %struct.acpi_device_data, %struct.acpi_device_data* %66, i32 0, i32 0
  %68 = load %struct.fwnode_handle*, %struct.fwnode_handle** %9, align 8
  %69 = call i32 @acpi_add_nondev_subnodes(i32 %64, %union.acpi_object* %65, i32* %67, %struct.fwnode_handle* %68)
  store i32 %69, i32* %5, align 4
  br label %74

70:                                               ; preds = %62
  %71 = load i32, i32* %10, align 4
  %72 = add nsw i32 %71, 2
  store i32 %72, i32* %10, align 4
  br label %13

73:                                               ; preds = %53, %13
  store i32 0, i32* %5, align 4
  br label %74

74:                                               ; preds = %73, %63
  %75 = load i32, i32* %5, align 4
  ret i32 %75
}

declare dso_local i32 @guid_equal(i32*, i32*) #1

declare dso_local i32 @acpi_add_nondev_subnodes(i32, %union.acpi_object*, i32*, %struct.fwnode_handle*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
