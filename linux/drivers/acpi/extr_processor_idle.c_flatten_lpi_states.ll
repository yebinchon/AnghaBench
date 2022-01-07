; ModuleID = '/home/carl/AnghaBench/linux/drivers/acpi/extr_processor_idle.c_flatten_lpi_states.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/acpi/extr_processor_idle.c_flatten_lpi_states.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_processor = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.acpi_lpi_state* }
%struct.acpi_lpi_state = type { i32, i64, i64 }
%struct.acpi_lpi_states_array = type { i32, i32, %struct.acpi_lpi_state*, %struct.acpi_lpi_state** }

@ACPI_LPI_STATE_FLAGS_ENABLED = common dso_local global i32 0, align 4
@flat_state_cnt = common dso_local global i64 0, align 8
@ACPI_PROCESSOR_MAX_POWER = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [43 x i8] c"Limiting number of LPI states to max (%d)\0A\00", align 1
@.str.1 = private unnamed_addr constant [53 x i8] c"Please increase ACPI_PROCESSOR_MAX_POWER if needed.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.acpi_processor*, %struct.acpi_lpi_states_array*, %struct.acpi_lpi_states_array*)* @flatten_lpi_states to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @flatten_lpi_states(%struct.acpi_processor* %0, %struct.acpi_lpi_states_array* %1, %struct.acpi_lpi_states_array* %2) #0 {
  %4 = alloca %struct.acpi_processor*, align 8
  %5 = alloca %struct.acpi_lpi_states_array*, align 8
  %6 = alloca %struct.acpi_lpi_states_array*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.acpi_lpi_state*, align 8
  %11 = alloca %struct.acpi_lpi_state*, align 8
  %12 = alloca %struct.acpi_lpi_state*, align 8
  store %struct.acpi_processor* %0, %struct.acpi_processor** %4, align 8
  store %struct.acpi_lpi_states_array* %1, %struct.acpi_lpi_states_array** %5, align 8
  store %struct.acpi_lpi_states_array* %2, %struct.acpi_lpi_states_array** %6, align 8
  %13 = load %struct.acpi_lpi_states_array*, %struct.acpi_lpi_states_array** %5, align 8
  %14 = getelementptr inbounds %struct.acpi_lpi_states_array, %struct.acpi_lpi_states_array* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  store i32 %15, i32* %9, align 4
  %16 = load %struct.acpi_lpi_states_array*, %struct.acpi_lpi_states_array** %5, align 8
  %17 = getelementptr inbounds %struct.acpi_lpi_states_array, %struct.acpi_lpi_states_array* %16, i32 0, i32 2
  %18 = load %struct.acpi_lpi_state*, %struct.acpi_lpi_state** %17, align 8
  store %struct.acpi_lpi_state* %18, %struct.acpi_lpi_state** %11, align 8
  %19 = load %struct.acpi_lpi_states_array*, %struct.acpi_lpi_states_array** %5, align 8
  %20 = getelementptr inbounds %struct.acpi_lpi_states_array, %struct.acpi_lpi_states_array* %19, i32 0, i32 1
  store i32 0, i32* %20, align 4
  store i32 0, i32* %8, align 4
  br label %21

21:                                               ; preds = %100, %3
  %22 = load i32, i32* %8, align 4
  %23 = load i32, i32* %9, align 4
  %24 = icmp slt i32 %22, %23
  br i1 %24, label %25, label %105

25:                                               ; preds = %21
  %26 = load %struct.acpi_lpi_state*, %struct.acpi_lpi_state** %11, align 8
  %27 = getelementptr inbounds %struct.acpi_lpi_state, %struct.acpi_lpi_state* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = load i32, i32* @ACPI_LPI_STATE_FLAGS_ENABLED, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %33, label %32

32:                                               ; preds = %25
  br label %100

33:                                               ; preds = %25
  %34 = load i64, i64* @flat_state_cnt, align 8
  %35 = load i64, i64* @ACPI_PROCESSOR_MAX_POWER, align 8
  %36 = icmp uge i64 %34, %35
  br i1 %36, label %37, label %41

37:                                               ; preds = %33
  %38 = load i64, i64* @ACPI_PROCESSOR_MAX_POWER, align 8
  %39 = call i32 (i8*, ...) @pr_warn(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i64 %38)
  %40 = call i32 (i8*, ...) @pr_warn(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.1, i64 0, i64 0))
  br label %105

41:                                               ; preds = %33
  %42 = load %struct.acpi_processor*, %struct.acpi_processor** %4, align 8
  %43 = getelementptr inbounds %struct.acpi_processor, %struct.acpi_processor* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  %45 = load %struct.acpi_lpi_state*, %struct.acpi_lpi_state** %44, align 8
  %46 = load i64, i64* @flat_state_cnt, align 8
  %47 = getelementptr inbounds %struct.acpi_lpi_state, %struct.acpi_lpi_state* %45, i64 %46
  store %struct.acpi_lpi_state* %47, %struct.acpi_lpi_state** %12, align 8
  %48 = load %struct.acpi_lpi_states_array*, %struct.acpi_lpi_states_array** %6, align 8
  %49 = icmp ne %struct.acpi_lpi_states_array* %48, null
  br i1 %49, label %59, label %50

50:                                               ; preds = %41
  %51 = load %struct.acpi_lpi_state*, %struct.acpi_lpi_state** %12, align 8
  %52 = load %struct.acpi_lpi_state*, %struct.acpi_lpi_state** %11, align 8
  %53 = call i32 @memcpy(%struct.acpi_lpi_state* %51, %struct.acpi_lpi_state* %52, i32 24)
  %54 = load %struct.acpi_lpi_states_array*, %struct.acpi_lpi_states_array** %5, align 8
  %55 = load %struct.acpi_lpi_state*, %struct.acpi_lpi_state** %12, align 8
  %56 = call i32 @stash_composite_state(%struct.acpi_lpi_states_array* %54, %struct.acpi_lpi_state* %55)
  %57 = load i64, i64* @flat_state_cnt, align 8
  %58 = add i64 %57, 1
  store i64 %58, i64* @flat_state_cnt, align 8
  br label %100

59:                                               ; preds = %41
  store i32 0, i32* %7, align 4
  br label %60

60:                                               ; preds = %96, %59
  %61 = load i32, i32* %7, align 4
  %62 = load %struct.acpi_lpi_states_array*, %struct.acpi_lpi_states_array** %6, align 8
  %63 = getelementptr inbounds %struct.acpi_lpi_states_array, %struct.acpi_lpi_states_array* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = icmp slt i32 %61, %64
  br i1 %65, label %66, label %99

66:                                               ; preds = %60
  %67 = load %struct.acpi_lpi_states_array*, %struct.acpi_lpi_states_array** %6, align 8
  %68 = getelementptr inbounds %struct.acpi_lpi_states_array, %struct.acpi_lpi_states_array* %67, i32 0, i32 3
  %69 = load %struct.acpi_lpi_state**, %struct.acpi_lpi_state*** %68, align 8
  %70 = load i32, i32* %7, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds %struct.acpi_lpi_state*, %struct.acpi_lpi_state** %69, i64 %71
  %73 = load %struct.acpi_lpi_state*, %struct.acpi_lpi_state** %72, align 8
  store %struct.acpi_lpi_state* %73, %struct.acpi_lpi_state** %10, align 8
  %74 = load %struct.acpi_lpi_state*, %struct.acpi_lpi_state** %11, align 8
  %75 = getelementptr inbounds %struct.acpi_lpi_state, %struct.acpi_lpi_state* %74, i32 0, i32 1
  %76 = load i64, i64* %75, align 8
  %77 = load %struct.acpi_lpi_state*, %struct.acpi_lpi_state** %10, align 8
  %78 = getelementptr inbounds %struct.acpi_lpi_state, %struct.acpi_lpi_state* %77, i32 0, i32 2
  %79 = load i64, i64* %78, align 8
  %80 = icmp sle i64 %76, %79
  br i1 %80, label %81, label %95

81:                                               ; preds = %66
  %82 = load %struct.acpi_lpi_state*, %struct.acpi_lpi_state** %10, align 8
  %83 = load %struct.acpi_lpi_state*, %struct.acpi_lpi_state** %11, align 8
  %84 = load %struct.acpi_lpi_state*, %struct.acpi_lpi_state** %12, align 8
  %85 = call i64 @combine_lpi_states(%struct.acpi_lpi_state* %82, %struct.acpi_lpi_state* %83, %struct.acpi_lpi_state* %84)
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %95

87:                                               ; preds = %81
  %88 = load %struct.acpi_lpi_states_array*, %struct.acpi_lpi_states_array** %5, align 8
  %89 = load %struct.acpi_lpi_state*, %struct.acpi_lpi_state** %12, align 8
  %90 = call i32 @stash_composite_state(%struct.acpi_lpi_states_array* %88, %struct.acpi_lpi_state* %89)
  %91 = load i64, i64* @flat_state_cnt, align 8
  %92 = add i64 %91, 1
  store i64 %92, i64* @flat_state_cnt, align 8
  %93 = load %struct.acpi_lpi_state*, %struct.acpi_lpi_state** %12, align 8
  %94 = getelementptr inbounds %struct.acpi_lpi_state, %struct.acpi_lpi_state* %93, i32 1
  store %struct.acpi_lpi_state* %94, %struct.acpi_lpi_state** %12, align 8
  br label %95

95:                                               ; preds = %87, %81, %66
  br label %96

96:                                               ; preds = %95
  %97 = load i32, i32* %7, align 4
  %98 = add nsw i32 %97, 1
  store i32 %98, i32* %7, align 4
  br label %60

99:                                               ; preds = %60
  br label %100

100:                                              ; preds = %99, %50, %32
  %101 = load i32, i32* %8, align 4
  %102 = add nsw i32 %101, 1
  store i32 %102, i32* %8, align 4
  %103 = load %struct.acpi_lpi_state*, %struct.acpi_lpi_state** %11, align 8
  %104 = getelementptr inbounds %struct.acpi_lpi_state, %struct.acpi_lpi_state* %103, i32 1
  store %struct.acpi_lpi_state* %104, %struct.acpi_lpi_state** %11, align 8
  br label %21

105:                                              ; preds = %37, %21
  %106 = load %struct.acpi_lpi_states_array*, %struct.acpi_lpi_states_array** %5, align 8
  %107 = getelementptr inbounds %struct.acpi_lpi_states_array, %struct.acpi_lpi_states_array* %106, i32 0, i32 2
  %108 = load %struct.acpi_lpi_state*, %struct.acpi_lpi_state** %107, align 8
  %109 = call i32 @kfree(%struct.acpi_lpi_state* %108)
  ret i32 0
}

declare dso_local i32 @pr_warn(i8*, ...) #1

declare dso_local i32 @memcpy(%struct.acpi_lpi_state*, %struct.acpi_lpi_state*, i32) #1

declare dso_local i32 @stash_composite_state(%struct.acpi_lpi_states_array*, %struct.acpi_lpi_state*) #1

declare dso_local i64 @combine_lpi_states(%struct.acpi_lpi_state*, %struct.acpi_lpi_state*, %struct.acpi_lpi_state*) #1

declare dso_local i32 @kfree(%struct.acpi_lpi_state*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
