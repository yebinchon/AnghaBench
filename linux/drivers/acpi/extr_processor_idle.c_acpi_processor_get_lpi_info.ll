; ModuleID = '/home/carl/AnghaBench/linux/drivers/acpi/extr_processor_idle.c_acpi_processor_get_lpi_info.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/acpi/extr_processor_idle.c_acpi_processor_get_lpi_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_processor = type { %struct.TYPE_6__, %struct.TYPE_5__, i32 }
%struct.TYPE_6__ = type { i32, i32 }
%struct.TYPE_5__ = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.acpi_device = type { i32 }
%struct.acpi_lpi_states_array = type { i32 }

@osc_pc_lpi_support_confirmed = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"_LPI\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@flat_state_cnt = common dso_local global i32 0, align 4
@ACPI_PROCESSOR_CONTAINER_HID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.acpi_processor*)* @acpi_processor_get_lpi_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @acpi_processor_get_lpi_info(%struct.acpi_processor* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.acpi_processor*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.acpi_device*, align 8
  %10 = alloca [2 x %struct.acpi_lpi_states_array], align 4
  %11 = alloca %struct.acpi_lpi_states_array*, align 8
  %12 = alloca %struct.acpi_lpi_states_array*, align 8
  %13 = alloca %struct.acpi_lpi_states_array*, align 8
  store %struct.acpi_processor* %0, %struct.acpi_processor** %3, align 8
  %14 = load %struct.acpi_processor*, %struct.acpi_processor** %3, align 8
  %15 = getelementptr inbounds %struct.acpi_processor, %struct.acpi_processor* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 8
  store i32 %16, i32* %7, align 4
  store %struct.acpi_device* null, %struct.acpi_device** %9, align 8
  %17 = load i32, i32* @osc_pc_lpi_support_confirmed, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %22, label %19

19:                                               ; preds = %1
  %20 = load i32, i32* @EOPNOTSUPP, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %2, align 4
  br label %116

22:                                               ; preds = %1
  %23 = load i32, i32* %7, align 4
  %24 = call i32 @acpi_has_method(i32 %23, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %29, label %26

26:                                               ; preds = %22
  %27 = load i32, i32* @EINVAL, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %2, align 4
  br label %116

29:                                               ; preds = %22
  store i32 0, i32* @flat_state_cnt, align 4
  %30 = getelementptr inbounds [2 x %struct.acpi_lpi_states_array], [2 x %struct.acpi_lpi_states_array]* %10, i64 0, i64 0
  store %struct.acpi_lpi_states_array* %30, %struct.acpi_lpi_states_array** %12, align 8
  %31 = getelementptr inbounds [2 x %struct.acpi_lpi_states_array], [2 x %struct.acpi_lpi_states_array]* %10, i64 0, i64 1
  store %struct.acpi_lpi_states_array* %31, %struct.acpi_lpi_states_array** %13, align 8
  %32 = load %struct.acpi_processor*, %struct.acpi_processor** %3, align 8
  %33 = getelementptr inbounds %struct.acpi_processor, %struct.acpi_processor* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 8
  store i32 %34, i32* %7, align 4
  %35 = load i32, i32* %7, align 4
  %36 = load %struct.acpi_lpi_states_array*, %struct.acpi_lpi_states_array** %12, align 8
  %37 = call i32 @acpi_processor_evaluate_lpi(i32 %35, %struct.acpi_lpi_states_array* %36)
  store i32 %37, i32* %4, align 4
  %38 = load i32, i32* %4, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %29
  %41 = load i32, i32* %4, align 4
  store i32 %41, i32* %2, align 4
  br label %116

42:                                               ; preds = %29
  %43 = load %struct.acpi_processor*, %struct.acpi_processor** %3, align 8
  %44 = load %struct.acpi_lpi_states_array*, %struct.acpi_lpi_states_array** %12, align 8
  %45 = call i32 @flatten_lpi_states(%struct.acpi_processor* %43, %struct.acpi_lpi_states_array* %44, %struct.acpi_lpi_states_array* null)
  %46 = load i32, i32* %7, align 4
  %47 = call i32 @acpi_get_parent(i32 %46, i32* %8)
  store i32 %47, i32* %6, align 4
  br label %48

48:                                               ; preds = %74, %42
  %49 = load i32, i32* %6, align 4
  %50 = call i64 @ACPI_SUCCESS(i32 %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %84

52:                                               ; preds = %48
  %53 = load i32, i32* %8, align 4
  %54 = call i32 @acpi_bus_get_device(i32 %53, %struct.acpi_device** %9)
  %55 = load i32, i32* %8, align 4
  store i32 %55, i32* %7, align 4
  %56 = load %struct.acpi_device*, %struct.acpi_device** %9, align 8
  %57 = call i32 @acpi_device_hid(%struct.acpi_device* %56)
  %58 = load i32, i32* @ACPI_PROCESSOR_CONTAINER_HID, align 4
  %59 = call i64 @strcmp(i32 %57, i32 %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %52
  br label %84

62:                                               ; preds = %52
  %63 = load i32, i32* %7, align 4
  %64 = call i32 @acpi_has_method(i32 %63, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %67, label %66

66:                                               ; preds = %62
  br label %84

67:                                               ; preds = %62
  %68 = load i32, i32* %7, align 4
  %69 = load %struct.acpi_lpi_states_array*, %struct.acpi_lpi_states_array** %13, align 8
  %70 = call i32 @acpi_processor_evaluate_lpi(i32 %68, %struct.acpi_lpi_states_array* %69)
  store i32 %70, i32* %4, align 4
  %71 = load i32, i32* %4, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %74

73:                                               ; preds = %67
  br label %84

74:                                               ; preds = %67
  %75 = load %struct.acpi_processor*, %struct.acpi_processor** %3, align 8
  %76 = load %struct.acpi_lpi_states_array*, %struct.acpi_lpi_states_array** %13, align 8
  %77 = load %struct.acpi_lpi_states_array*, %struct.acpi_lpi_states_array** %12, align 8
  %78 = call i32 @flatten_lpi_states(%struct.acpi_processor* %75, %struct.acpi_lpi_states_array* %76, %struct.acpi_lpi_states_array* %77)
  %79 = load %struct.acpi_lpi_states_array*, %struct.acpi_lpi_states_array** %12, align 8
  store %struct.acpi_lpi_states_array* %79, %struct.acpi_lpi_states_array** %11, align 8
  %80 = load %struct.acpi_lpi_states_array*, %struct.acpi_lpi_states_array** %13, align 8
  store %struct.acpi_lpi_states_array* %80, %struct.acpi_lpi_states_array** %12, align 8
  %81 = load %struct.acpi_lpi_states_array*, %struct.acpi_lpi_states_array** %11, align 8
  store %struct.acpi_lpi_states_array* %81, %struct.acpi_lpi_states_array** %13, align 8
  %82 = load i32, i32* %7, align 4
  %83 = call i32 @acpi_get_parent(i32 %82, i32* %8)
  store i32 %83, i32* %6, align 4
  br label %48

84:                                               ; preds = %73, %66, %61, %48
  %85 = load i32, i32* @flat_state_cnt, align 4
  %86 = load %struct.acpi_processor*, %struct.acpi_processor** %3, align 8
  %87 = getelementptr inbounds %struct.acpi_processor, %struct.acpi_processor* %86, i32 0, i32 1
  %88 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %87, i32 0, i32 0
  store i32 %85, i32* %88, align 8
  store i32 0, i32* %5, align 4
  br label %89

89:                                               ; preds = %106, %84
  %90 = load i32, i32* %5, align 4
  %91 = load %struct.acpi_processor*, %struct.acpi_processor** %3, align 8
  %92 = getelementptr inbounds %struct.acpi_processor, %struct.acpi_processor* %91, i32 0, i32 1
  %93 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = icmp slt i32 %90, %94
  br i1 %95, label %96, label %109

96:                                               ; preds = %89
  %97 = load i32, i32* %5, align 4
  %98 = load %struct.acpi_processor*, %struct.acpi_processor** %3, align 8
  %99 = getelementptr inbounds %struct.acpi_processor, %struct.acpi_processor* %98, i32 0, i32 1
  %100 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %99, i32 0, i32 1
  %101 = load %struct.TYPE_4__*, %struct.TYPE_4__** %100, align 8
  %102 = load i32, i32* %5, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %101, i64 %103
  %105 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %104, i32 0, i32 0
  store i32 %97, i32* %105, align 4
  br label %106

106:                                              ; preds = %96
  %107 = load i32, i32* %5, align 4
  %108 = add nsw i32 %107, 1
  store i32 %108, i32* %5, align 4
  br label %89

109:                                              ; preds = %89
  %110 = load %struct.acpi_processor*, %struct.acpi_processor** %3, align 8
  %111 = getelementptr inbounds %struct.acpi_processor, %struct.acpi_processor* %110, i32 0, i32 0
  %112 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %111, i32 0, i32 0
  store i32 1, i32* %112, align 8
  %113 = load %struct.acpi_processor*, %struct.acpi_processor** %3, align 8
  %114 = getelementptr inbounds %struct.acpi_processor, %struct.acpi_processor* %113, i32 0, i32 0
  %115 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %114, i32 0, i32 1
  store i32 1, i32* %115, align 4
  store i32 0, i32* %2, align 4
  br label %116

116:                                              ; preds = %109, %40, %26, %19
  %117 = load i32, i32* %2, align 4
  ret i32 %117
}

declare dso_local i32 @acpi_has_method(i32, i8*) #1

declare dso_local i32 @acpi_processor_evaluate_lpi(i32, %struct.acpi_lpi_states_array*) #1

declare dso_local i32 @flatten_lpi_states(%struct.acpi_processor*, %struct.acpi_lpi_states_array*, %struct.acpi_lpi_states_array*) #1

declare dso_local i32 @acpi_get_parent(i32, i32*) #1

declare dso_local i64 @ACPI_SUCCESS(i32) #1

declare dso_local i32 @acpi_bus_get_device(i32, %struct.acpi_device**) #1

declare dso_local i64 @strcmp(i32, i32) #1

declare dso_local i32 @acpi_device_hid(%struct.acpi_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
