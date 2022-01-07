; ModuleID = '/home/carl/AnghaBench/linux/drivers/acpi/extr_scan.c_acpi_bus_get_power_flags.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/acpi/extr_scan.c_acpi_bus_get_power_flags.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_device = type { %struct.TYPE_10__, %struct.TYPE_9__, i32 }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_9__ = type { %struct.TYPE_8__*, %struct.TYPE_6__ }
%struct.TYPE_8__ = type { i32, %struct.TYPE_7__, i32 }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i32, i32, i32 }

@.str = private unnamed_addr constant [5 x i8] c"_PS0\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"_PR0\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"_PSC\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"_IRC\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"_DSW\00", align 1
@ACPI_STATE_D0 = common dso_local global i64 0, align 8
@ACPI_STATE_D3_HOT = common dso_local global i64 0, align 8
@ACPI_STATE_D3_COLD = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.acpi_device*)* @acpi_bus_get_power_flags to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @acpi_bus_get_power_flags(%struct.acpi_device* %0) #0 {
  %2 = alloca %struct.acpi_device*, align 8
  %3 = alloca i64, align 8
  store %struct.acpi_device* %0, %struct.acpi_device** %2, align 8
  %4 = load %struct.acpi_device*, %struct.acpi_device** %2, align 8
  %5 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %4, i32 0, i32 2
  %6 = load i32, i32* %5, align 8
  %7 = call i64 @acpi_has_method(i32 %6, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %16, label %9

9:                                                ; preds = %1
  %10 = load %struct.acpi_device*, %struct.acpi_device** %2, align 8
  %11 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %10, i32 0, i32 2
  %12 = load i32, i32* %11, align 8
  %13 = call i64 @acpi_has_method(i32 %12, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %9
  br label %123

16:                                               ; preds = %9, %1
  %17 = load %struct.acpi_device*, %struct.acpi_device** %2, align 8
  %18 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %18, i32 0, i32 0
  store i32 1, i32* %19, align 8
  %20 = load %struct.acpi_device*, %struct.acpi_device** %2, align 8
  %21 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 8
  %23 = call i64 @acpi_has_method(i32 %22, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %30

25:                                               ; preds = %16
  %26 = load %struct.acpi_device*, %struct.acpi_device** %2, align 8
  %27 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 0
  store i32 1, i32* %29, align 8
  br label %30

30:                                               ; preds = %25, %16
  %31 = load %struct.acpi_device*, %struct.acpi_device** %2, align 8
  %32 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 8
  %34 = call i64 @acpi_has_method(i32 %33, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0))
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %41

36:                                               ; preds = %30
  %37 = load %struct.acpi_device*, %struct.acpi_device** %2, align 8
  %38 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 1
  store i32 1, i32* %40, align 4
  br label %41

41:                                               ; preds = %36, %30
  %42 = load %struct.acpi_device*, %struct.acpi_device** %2, align 8
  %43 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 8
  %45 = call i64 @acpi_has_method(i32 %44, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0))
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %52

47:                                               ; preds = %41
  %48 = load %struct.acpi_device*, %struct.acpi_device** %2, align 8
  %49 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %48, i32 0, i32 1
  %50 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %49, i32 0, i32 1
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 2
  store i32 1, i32* %51, align 8
  br label %52

52:                                               ; preds = %47, %41
  %53 = load i64, i64* @ACPI_STATE_D0, align 8
  store i64 %53, i64* %3, align 8
  br label %54

54:                                               ; preds = %62, %52
  %55 = load i64, i64* %3, align 8
  %56 = load i64, i64* @ACPI_STATE_D3_HOT, align 8
  %57 = icmp ule i64 %55, %56
  br i1 %57, label %58, label %65

58:                                               ; preds = %54
  %59 = load %struct.acpi_device*, %struct.acpi_device** %2, align 8
  %60 = load i64, i64* %3, align 8
  %61 = call i32 @acpi_bus_init_power_state(%struct.acpi_device* %59, i64 %60)
  br label %62

62:                                               ; preds = %58
  %63 = load i64, i64* %3, align 8
  %64 = add i64 %63, 1
  store i64 %64, i64* %3, align 8
  br label %54

65:                                               ; preds = %54
  %66 = load %struct.acpi_device*, %struct.acpi_device** %2, align 8
  %67 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %66, i32 0, i32 1
  %68 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %67, i32 0, i32 0
  %69 = load %struct.TYPE_8__*, %struct.TYPE_8__** %68, align 8
  %70 = load i64, i64* @ACPI_STATE_D3_COLD, align 8
  %71 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %69, i64 %70
  %72 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %71, i32 0, i32 2
  %73 = call i32 @INIT_LIST_HEAD(i32* %72)
  %74 = load %struct.acpi_device*, %struct.acpi_device** %2, align 8
  %75 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %74, i32 0, i32 1
  %76 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %75, i32 0, i32 0
  %77 = load %struct.TYPE_8__*, %struct.TYPE_8__** %76, align 8
  %78 = load i64, i64* @ACPI_STATE_D3_HOT, align 8
  %79 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %77, i64 %78
  %80 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %79, i32 0, i32 2
  %81 = call i32 @list_empty(i32* %80)
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %92, label %83

83:                                               ; preds = %65
  %84 = load %struct.acpi_device*, %struct.acpi_device** %2, align 8
  %85 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %84, i32 0, i32 1
  %86 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %85, i32 0, i32 0
  %87 = load %struct.TYPE_8__*, %struct.TYPE_8__** %86, align 8
  %88 = load i64, i64* @ACPI_STATE_D3_COLD, align 8
  %89 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %87, i64 %88
  %90 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %89, i32 0, i32 1
  %91 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %90, i32 0, i32 0
  store i32 1, i32* %91, align 4
  br label %92

92:                                               ; preds = %83, %65
  %93 = load %struct.acpi_device*, %struct.acpi_device** %2, align 8
  %94 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %93, i32 0, i32 1
  %95 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %94, i32 0, i32 0
  %96 = load %struct.TYPE_8__*, %struct.TYPE_8__** %95, align 8
  %97 = load i64, i64* @ACPI_STATE_D0, align 8
  %98 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %96, i64 %97
  %99 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %98, i32 0, i32 1
  %100 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %99, i32 0, i32 0
  store i32 1, i32* %100, align 4
  %101 = load %struct.acpi_device*, %struct.acpi_device** %2, align 8
  %102 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %101, i32 0, i32 1
  %103 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %102, i32 0, i32 0
  %104 = load %struct.TYPE_8__*, %struct.TYPE_8__** %103, align 8
  %105 = load i64, i64* @ACPI_STATE_D0, align 8
  %106 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %104, i64 %105
  %107 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %106, i32 0, i32 0
  store i32 100, i32* %107, align 4
  %108 = load %struct.acpi_device*, %struct.acpi_device** %2, align 8
  %109 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %108, i32 0, i32 1
  %110 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %109, i32 0, i32 0
  %111 = load %struct.TYPE_8__*, %struct.TYPE_8__** %110, align 8
  %112 = load i64, i64* @ACPI_STATE_D3_HOT, align 8
  %113 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %111, i64 %112
  %114 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %113, i32 0, i32 1
  %115 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %114, i32 0, i32 0
  store i32 1, i32* %115, align 4
  %116 = load %struct.acpi_device*, %struct.acpi_device** %2, align 8
  %117 = call i64 @acpi_bus_init_power(%struct.acpi_device* %116)
  %118 = icmp ne i64 %117, 0
  br i1 %118, label %119, label %123

119:                                              ; preds = %92
  %120 = load %struct.acpi_device*, %struct.acpi_device** %2, align 8
  %121 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %120, i32 0, i32 0
  %122 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %121, i32 0, i32 0
  store i32 0, i32* %122, align 8
  br label %123

123:                                              ; preds = %15, %119, %92
  ret void
}

declare dso_local i64 @acpi_has_method(i32, i8*) #1

declare dso_local i32 @acpi_bus_init_power_state(%struct.acpi_device*, i64) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @list_empty(i32*) #1

declare dso_local i64 @acpi_bus_init_power(%struct.acpi_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
