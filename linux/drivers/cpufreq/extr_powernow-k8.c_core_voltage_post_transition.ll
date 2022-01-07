; ModuleID = '/home/carl/AnghaBench/linux/drivers/cpufreq/extr_powernow-k8.c_core_voltage_post_transition.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/cpufreq/extr_powernow-k8.c_core_voltage_post_transition.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.powernow_k8_data = type { i64, i64 }

@.str = private unnamed_addr constant [51 x i8] c"ph3 (cpu%d): starting, currfid 0x%x, currvid 0x%x\0A\00", align 1
@.str.1 = private unnamed_addr constant [43 x i8] c"ph3: bad fid change, save 0x%x, curr 0x%x\0A\00", align 1
@.str.2 = private unnamed_addr constant [49 x i8] c"ph3: failed vid transition\0A, req 0x%x, curr 0x%x\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"ph3 failed, currvid 0x%x\0A\00", align 1
@.str.4 = private unnamed_addr constant [34 x i8] c"ph3 failed, currfid changed 0x%x\0A\00", align 1
@.str.5 = private unnamed_addr constant [42 x i8] c"ph3 complete, currfid 0x%x, currvid 0x%x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.powernow_k8_data*, i64)* @core_voltage_post_transition to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @core_voltage_post_transition(%struct.powernow_k8_data* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.powernow_k8_data*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store %struct.powernow_k8_data* %0, %struct.powernow_k8_data** %4, align 8
  store i64 %1, i64* %5, align 8
  %8 = load %struct.powernow_k8_data*, %struct.powernow_k8_data** %4, align 8
  %9 = getelementptr inbounds %struct.powernow_k8_data, %struct.powernow_k8_data* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  store i64 %10, i64* %6, align 8
  %11 = load i64, i64* %5, align 8
  store i64 %11, i64* %7, align 8
  %12 = call i32 (...) @smp_processor_id()
  %13 = sext i32 %12 to i64
  %14 = load %struct.powernow_k8_data*, %struct.powernow_k8_data** %4, align 8
  %15 = getelementptr inbounds %struct.powernow_k8_data, %struct.powernow_k8_data* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load %struct.powernow_k8_data*, %struct.powernow_k8_data** %4, align 8
  %18 = getelementptr inbounds %struct.powernow_k8_data, %struct.powernow_k8_data* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = call i32 (i8*, i64, ...) @pr_debug(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0), i64 %13, i64 %16, i64 %19)
  %21 = load i64, i64* %5, align 8
  %22 = load %struct.powernow_k8_data*, %struct.powernow_k8_data** %4, align 8
  %23 = getelementptr inbounds %struct.powernow_k8_data, %struct.powernow_k8_data* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %21, %24
  br i1 %25, label %26, label %57

26:                                               ; preds = %2
  %27 = load %struct.powernow_k8_data*, %struct.powernow_k8_data** %4, align 8
  %28 = load i64, i64* %5, align 8
  %29 = call i64 @write_new_vid(%struct.powernow_k8_data* %27, i64 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %26
  store i32 1, i32* %3, align 4
  br label %92

32:                                               ; preds = %26
  %33 = load i64, i64* %6, align 8
  %34 = load %struct.powernow_k8_data*, %struct.powernow_k8_data** %4, align 8
  %35 = getelementptr inbounds %struct.powernow_k8_data, %struct.powernow_k8_data* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %33, %36
  br i1 %37, label %38, label %44

38:                                               ; preds = %32
  %39 = load i64, i64* %6, align 8
  %40 = load %struct.powernow_k8_data*, %struct.powernow_k8_data** %4, align 8
  %41 = getelementptr inbounds %struct.powernow_k8_data, %struct.powernow_k8_data* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = call i32 @pr_err(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0), i64 %39, i64 %42)
  store i32 1, i32* %3, align 4
  br label %92

44:                                               ; preds = %32
  %45 = load %struct.powernow_k8_data*, %struct.powernow_k8_data** %4, align 8
  %46 = getelementptr inbounds %struct.powernow_k8_data, %struct.powernow_k8_data* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* %5, align 8
  %49 = icmp ne i64 %47, %48
  br i1 %49, label %50, label %56

50:                                               ; preds = %44
  %51 = load i64, i64* %5, align 8
  %52 = load %struct.powernow_k8_data*, %struct.powernow_k8_data** %4, align 8
  %53 = getelementptr inbounds %struct.powernow_k8_data, %struct.powernow_k8_data* %52, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  %55 = call i32 @pr_err(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.2, i64 0, i64 0), i64 %51, i64 %54)
  store i32 1, i32* %3, align 4
  br label %92

56:                                               ; preds = %44
  br label %57

57:                                               ; preds = %56, %2
  %58 = load %struct.powernow_k8_data*, %struct.powernow_k8_data** %4, align 8
  %59 = call i64 @query_current_values_with_pending_wait(%struct.powernow_k8_data* %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %57
  store i32 1, i32* %3, align 4
  br label %92

62:                                               ; preds = %57
  %63 = load i64, i64* %7, align 8
  %64 = load %struct.powernow_k8_data*, %struct.powernow_k8_data** %4, align 8
  %65 = getelementptr inbounds %struct.powernow_k8_data, %struct.powernow_k8_data* %64, i32 0, i32 1
  %66 = load i64, i64* %65, align 8
  %67 = icmp ne i64 %63, %66
  br i1 %67, label %68, label %73

68:                                               ; preds = %62
  %69 = load %struct.powernow_k8_data*, %struct.powernow_k8_data** %4, align 8
  %70 = getelementptr inbounds %struct.powernow_k8_data, %struct.powernow_k8_data* %69, i32 0, i32 1
  %71 = load i64, i64* %70, align 8
  %72 = call i32 (i8*, i64, ...) @pr_debug(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0), i64 %71)
  store i32 1, i32* %3, align 4
  br label %92

73:                                               ; preds = %62
  %74 = load i64, i64* %6, align 8
  %75 = load %struct.powernow_k8_data*, %struct.powernow_k8_data** %4, align 8
  %76 = getelementptr inbounds %struct.powernow_k8_data, %struct.powernow_k8_data* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = icmp ne i64 %74, %77
  br i1 %78, label %79, label %84

79:                                               ; preds = %73
  %80 = load %struct.powernow_k8_data*, %struct.powernow_k8_data** %4, align 8
  %81 = getelementptr inbounds %struct.powernow_k8_data, %struct.powernow_k8_data* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = call i32 (i8*, i64, ...) @pr_debug(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.4, i64 0, i64 0), i64 %82)
  store i32 1, i32* %3, align 4
  br label %92

84:                                               ; preds = %73
  %85 = load %struct.powernow_k8_data*, %struct.powernow_k8_data** %4, align 8
  %86 = getelementptr inbounds %struct.powernow_k8_data, %struct.powernow_k8_data* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = load %struct.powernow_k8_data*, %struct.powernow_k8_data** %4, align 8
  %89 = getelementptr inbounds %struct.powernow_k8_data, %struct.powernow_k8_data* %88, i32 0, i32 1
  %90 = load i64, i64* %89, align 8
  %91 = call i32 (i8*, i64, ...) @pr_debug(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.5, i64 0, i64 0), i64 %87, i64 %90)
  store i32 0, i32* %3, align 4
  br label %92

92:                                               ; preds = %84, %79, %68, %61, %50, %38, %31
  %93 = load i32, i32* %3, align 4
  ret i32 %93
}

declare dso_local i32 @pr_debug(i8*, i64, ...) #1

declare dso_local i32 @smp_processor_id(...) #1

declare dso_local i64 @write_new_vid(%struct.powernow_k8_data*, i64) #1

declare dso_local i32 @pr_err(i8*, i64, i64) #1

declare dso_local i64 @query_current_values_with_pending_wait(%struct.powernow_k8_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
