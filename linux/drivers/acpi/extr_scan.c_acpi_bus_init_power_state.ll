; ModuleID = '/home/carl/AnghaBench/linux/drivers/acpi/extr_scan.c_acpi_bus_init_power_state.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/acpi/extr_scan.c_acpi_bus_init_power_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_device = type { i32, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__, %struct.acpi_device_power_state* }
%struct.TYPE_6__ = type { i32 }
%struct.acpi_device_power_state = type { i32, i32, %struct.TYPE_8__, i32 }
%struct.TYPE_8__ = type { i32, i32 }
%struct.acpi_buffer = type { %union.acpi_object*, i64, i32*, i32 }
%union.acpi_object = type { i64 }
%struct.TYPE_5__ = type { i64 }

@ACPI_ALLOCATE_BUFFER = common dso_local global i32 0, align 4
@ACPI_TYPE_PACKAGE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.acpi_device*, i32)* @acpi_bus_init_power_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @acpi_bus_init_power_state(%struct.acpi_device* %0, i32 %1) #0 {
  %3 = alloca %struct.acpi_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.acpi_device_power_state*, align 8
  %6 = alloca [5 x i8], align 1
  %7 = alloca %struct.acpi_buffer, align 8
  %8 = alloca i32, align 4
  %9 = alloca %union.acpi_object*, align 8
  %10 = alloca i32, align 4
  store %struct.acpi_device* %0, %struct.acpi_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %11 = load %struct.acpi_device*, %struct.acpi_device** %3, align 8
  %12 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %11, i32 0, i32 1
  %13 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %12, i32 0, i32 1
  %14 = load %struct.acpi_device_power_state*, %struct.acpi_device_power_state** %13, align 8
  %15 = load i32, i32* %4, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds %struct.acpi_device_power_state, %struct.acpi_device_power_state* %14, i64 %16
  store %struct.acpi_device_power_state* %17, %struct.acpi_device_power_state** %5, align 8
  %18 = getelementptr inbounds [5 x i8], [5 x i8]* %6, i64 0, i64 0
  store i8 95, i8* %18, align 1
  %19 = getelementptr inbounds i8, i8* %18, i64 1
  store i8 80, i8* %19, align 1
  %20 = getelementptr inbounds i8, i8* %19, i64 1
  store i8 82, i8* %20, align 1
  %21 = getelementptr inbounds i8, i8* %20, i64 1
  %22 = load i32, i32* %4, align 4
  %23 = add nsw i32 48, %22
  %24 = trunc i32 %23 to i8
  store i8 %24, i8* %21, align 1
  %25 = getelementptr inbounds i8, i8* %21, i64 1
  store i8 0, i8* %25, align 1
  %26 = getelementptr inbounds %struct.acpi_buffer, %struct.acpi_buffer* %7, i32 0, i32 0
  %27 = load i32, i32* @ACPI_ALLOCATE_BUFFER, align 4
  %28 = sext i32 %27 to i64
  %29 = inttoptr i64 %28 to %union.acpi_object*
  store %union.acpi_object* %29, %union.acpi_object** %26, align 8
  %30 = getelementptr inbounds %struct.acpi_buffer, %struct.acpi_buffer* %7, i32 0, i32 1
  store i64 0, i64* %30, align 8
  %31 = getelementptr inbounds %struct.acpi_buffer, %struct.acpi_buffer* %7, i32 0, i32 2
  store i32* null, i32** %31, align 8
  %32 = getelementptr inbounds %struct.acpi_buffer, %struct.acpi_buffer* %7, i32 0, i32 3
  store i32 0, i32* %32, align 8
  %33 = load %struct.acpi_device_power_state*, %struct.acpi_device_power_state** %5, align 8
  %34 = getelementptr inbounds %struct.acpi_device_power_state, %struct.acpi_device_power_state* %33, i32 0, i32 3
  %35 = call i32 @INIT_LIST_HEAD(i32* %34)
  %36 = load %struct.acpi_device*, %struct.acpi_device** %3, align 8
  %37 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = getelementptr inbounds [5 x i8], [5 x i8]* %6, i64 0, i64 0
  %40 = call i32 @acpi_evaluate_object(i32 %38, i8* %39, i32* null, %struct.acpi_buffer* %7)
  store i32 %40, i32* %8, align 4
  %41 = load i32, i32* %8, align 4
  %42 = call i64 @ACPI_SUCCESS(i32 %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %82

44:                                               ; preds = %2
  %45 = getelementptr inbounds %struct.acpi_buffer, %struct.acpi_buffer* %7, i32 0, i32 0
  %46 = load %union.acpi_object*, %union.acpi_object** %45, align 8
  store %union.acpi_object* %46, %union.acpi_object** %9, align 8
  %47 = getelementptr inbounds %struct.acpi_buffer, %struct.acpi_buffer* %7, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %78

50:                                               ; preds = %44
  %51 = load %union.acpi_object*, %union.acpi_object** %9, align 8
  %52 = icmp ne %union.acpi_object* %51, null
  br i1 %52, label %53, label %78

53:                                               ; preds = %50
  %54 = load %union.acpi_object*, %union.acpi_object** %9, align 8
  %55 = bitcast %union.acpi_object* %54 to i64*
  %56 = load i64, i64* %55, align 8
  %57 = load i64, i64* @ACPI_TYPE_PACKAGE, align 8
  %58 = icmp eq i64 %56, %57
  br i1 %58, label %59, label %78

59:                                               ; preds = %53
  %60 = load %union.acpi_object*, %union.acpi_object** %9, align 8
  %61 = bitcast %union.acpi_object* %60 to %struct.TYPE_5__*
  %62 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %78

65:                                               ; preds = %59
  %66 = load %union.acpi_object*, %union.acpi_object** %9, align 8
  %67 = load %struct.acpi_device_power_state*, %struct.acpi_device_power_state** %5, align 8
  %68 = getelementptr inbounds %struct.acpi_device_power_state, %struct.acpi_device_power_state* %67, i32 0, i32 3
  %69 = call i32 @acpi_extract_power_resources(%union.acpi_object* %66, i32 0, i32* %68)
  store i32 %69, i32* %10, align 4
  %70 = load i32, i32* %10, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %77, label %72

72:                                               ; preds = %65
  %73 = load %struct.acpi_device*, %struct.acpi_device** %3, align 8
  %74 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %73, i32 0, i32 1
  %75 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %75, i32 0, i32 0
  store i32 1, i32* %76, align 8
  br label %77

77:                                               ; preds = %72, %65
  br label %78

78:                                               ; preds = %77, %59, %53, %50, %44
  %79 = getelementptr inbounds %struct.acpi_buffer, %struct.acpi_buffer* %7, i32 0, i32 0
  %80 = load %union.acpi_object*, %union.acpi_object** %79, align 8
  %81 = call i32 @ACPI_FREE(%union.acpi_object* %80)
  br label %82

82:                                               ; preds = %78, %2
  %83 = getelementptr inbounds [5 x i8], [5 x i8]* %6, i64 0, i64 2
  store i8 83, i8* %83, align 1
  %84 = load %struct.acpi_device*, %struct.acpi_device** %3, align 8
  %85 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = getelementptr inbounds [5 x i8], [5 x i8]* %6, i64 0, i64 0
  %88 = call i64 @acpi_has_method(i32 %86, i8* %87)
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %94

90:                                               ; preds = %82
  %91 = load %struct.acpi_device_power_state*, %struct.acpi_device_power_state** %5, align 8
  %92 = getelementptr inbounds %struct.acpi_device_power_state, %struct.acpi_device_power_state* %91, i32 0, i32 2
  %93 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %92, i32 0, i32 0
  store i32 1, i32* %93, align 4
  br label %94

94:                                               ; preds = %90, %82
  %95 = load %struct.acpi_device_power_state*, %struct.acpi_device_power_state** %5, align 8
  %96 = getelementptr inbounds %struct.acpi_device_power_state, %struct.acpi_device_power_state* %95, i32 0, i32 3
  %97 = call i32 @list_empty(i32* %96)
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %105

99:                                               ; preds = %94
  %100 = load %struct.acpi_device_power_state*, %struct.acpi_device_power_state** %5, align 8
  %101 = getelementptr inbounds %struct.acpi_device_power_state, %struct.acpi_device_power_state* %100, i32 0, i32 2
  %102 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %109

105:                                              ; preds = %99, %94
  %106 = load %struct.acpi_device_power_state*, %struct.acpi_device_power_state** %5, align 8
  %107 = getelementptr inbounds %struct.acpi_device_power_state, %struct.acpi_device_power_state* %106, i32 0, i32 2
  %108 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %107, i32 0, i32 1
  store i32 1, i32* %108, align 4
  br label %109

109:                                              ; preds = %105, %99
  %110 = load %struct.acpi_device_power_state*, %struct.acpi_device_power_state** %5, align 8
  %111 = getelementptr inbounds %struct.acpi_device_power_state, %struct.acpi_device_power_state* %110, i32 0, i32 0
  store i32 -1, i32* %111, align 4
  %112 = load %struct.acpi_device_power_state*, %struct.acpi_device_power_state** %5, align 8
  %113 = getelementptr inbounds %struct.acpi_device_power_state, %struct.acpi_device_power_state* %112, i32 0, i32 1
  store i32 -1, i32* %113, align 4
  ret void
}

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @acpi_evaluate_object(i32, i8*, i32*, %struct.acpi_buffer*) #1

declare dso_local i64 @ACPI_SUCCESS(i32) #1

declare dso_local i32 @acpi_extract_power_resources(%union.acpi_object*, i32, i32*) #1

declare dso_local i32 @ACPI_FREE(%union.acpi_object*) #1

declare dso_local i64 @acpi_has_method(i32, i8*) #1

declare dso_local i32 @list_empty(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
