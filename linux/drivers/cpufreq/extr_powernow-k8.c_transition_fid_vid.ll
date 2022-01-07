; ModuleID = '/home/carl/AnghaBench/linux/drivers/cpufreq/extr_powernow-k8.c_transition_fid_vid.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/cpufreq/extr_powernow-k8.c_transition_fid_vid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.powernow_k8_data = type { i64, i64 }

@.str = private unnamed_addr constant [47 x i8] c"failed (cpu%d): req 0x%x 0x%x, curr 0x%x 0x%x\0A\00", align 1
@.str.1 = private unnamed_addr constant [46 x i8] c"transitioned (cpu%d): new fid 0x%x, vid 0x%x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.powernow_k8_data*, i64, i64)* @transition_fid_vid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @transition_fid_vid(%struct.powernow_k8_data* %0, i64 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.powernow_k8_data*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store %struct.powernow_k8_data* %0, %struct.powernow_k8_data** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  %8 = load %struct.powernow_k8_data*, %struct.powernow_k8_data** %5, align 8
  %9 = load i64, i64* %7, align 8
  %10 = load i64, i64* %6, align 8
  %11 = call i64 @core_voltage_pre_transition(%struct.powernow_k8_data* %8, i64 %9, i64 %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %3
  store i32 1, i32* %4, align 4
  br label %63

14:                                               ; preds = %3
  %15 = load %struct.powernow_k8_data*, %struct.powernow_k8_data** %5, align 8
  %16 = load i64, i64* %6, align 8
  %17 = call i64 @core_frequency_transition(%struct.powernow_k8_data* %15, i64 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %14
  store i32 1, i32* %4, align 4
  br label %63

20:                                               ; preds = %14
  %21 = load %struct.powernow_k8_data*, %struct.powernow_k8_data** %5, align 8
  %22 = load i64, i64* %7, align 8
  %23 = call i64 @core_voltage_post_transition(%struct.powernow_k8_data* %21, i64 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %20
  store i32 1, i32* %4, align 4
  br label %63

26:                                               ; preds = %20
  %27 = load %struct.powernow_k8_data*, %struct.powernow_k8_data** %5, align 8
  %28 = call i64 @query_current_values_with_pending_wait(%struct.powernow_k8_data* %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %26
  store i32 1, i32* %4, align 4
  br label %63

31:                                               ; preds = %26
  %32 = load i64, i64* %6, align 8
  %33 = load %struct.powernow_k8_data*, %struct.powernow_k8_data** %5, align 8
  %34 = getelementptr inbounds %struct.powernow_k8_data, %struct.powernow_k8_data* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %32, %35
  br i1 %36, label %43, label %37

37:                                               ; preds = %31
  %38 = load i64, i64* %7, align 8
  %39 = load %struct.powernow_k8_data*, %struct.powernow_k8_data** %5, align 8
  %40 = getelementptr inbounds %struct.powernow_k8_data, %struct.powernow_k8_data* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %38, %41
  br i1 %42, label %43, label %54

43:                                               ; preds = %37, %31
  %44 = call i32 (...) @smp_processor_id()
  %45 = load i64, i64* %6, align 8
  %46 = load i64, i64* %7, align 8
  %47 = load %struct.powernow_k8_data*, %struct.powernow_k8_data** %5, align 8
  %48 = getelementptr inbounds %struct.powernow_k8_data, %struct.powernow_k8_data* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load %struct.powernow_k8_data*, %struct.powernow_k8_data** %5, align 8
  %51 = getelementptr inbounds %struct.powernow_k8_data, %struct.powernow_k8_data* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = call i32 @pr_err(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0), i32 %44, i64 %45, i64 %46, i64 %49, i64 %52)
  store i32 1, i32* %4, align 4
  br label %63

54:                                               ; preds = %37
  %55 = call i32 (...) @smp_processor_id()
  %56 = load %struct.powernow_k8_data*, %struct.powernow_k8_data** %5, align 8
  %57 = getelementptr inbounds %struct.powernow_k8_data, %struct.powernow_k8_data* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = load %struct.powernow_k8_data*, %struct.powernow_k8_data** %5, align 8
  %60 = getelementptr inbounds %struct.powernow_k8_data, %struct.powernow_k8_data* %59, i32 0, i32 1
  %61 = load i64, i64* %60, align 8
  %62 = call i32 @pr_debug(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i64 0, i64 0), i32 %55, i64 %58, i64 %61)
  store i32 0, i32* %4, align 4
  br label %63

63:                                               ; preds = %54, %43, %30, %25, %19, %13
  %64 = load i32, i32* %4, align 4
  ret i32 %64
}

declare dso_local i64 @core_voltage_pre_transition(%struct.powernow_k8_data*, i64, i64) #1

declare dso_local i64 @core_frequency_transition(%struct.powernow_k8_data*, i64) #1

declare dso_local i64 @core_voltage_post_transition(%struct.powernow_k8_data*, i64) #1

declare dso_local i64 @query_current_values_with_pending_wait(%struct.powernow_k8_data*) #1

declare dso_local i32 @pr_err(i8*, i32, i64, i64, i64, i64) #1

declare dso_local i32 @smp_processor_id(...) #1

declare dso_local i32 @pr_debug(i8*, i32, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
