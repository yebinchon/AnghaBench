; ModuleID = '/home/carl/AnghaBench/linux/drivers/cpufreq/extr_cpufreq-nforce2.c_nforce2_target.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/cpufreq/extr_cpufreq-nforce2.c_nforce2_target.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cpufreq_policy = type { i32, i32, i32 }
%struct.cpufreq_freqs = type { i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@fid = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"Old CPU frequency %d kHz, new %d kHz\0A\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"Changing FSB to %d failed\0A\00", align 1
@.str.2 = private unnamed_addr constant [32 x i8] c"Changed FSB successfully to %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cpufreq_policy*, i32, i32)* @nforce2_target to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nforce2_target(%struct.cpufreq_policy* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.cpufreq_policy*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.cpufreq_freqs, align 4
  %9 = alloca i32, align 4
  store %struct.cpufreq_policy* %0, %struct.cpufreq_policy** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %10 = load i32, i32* %6, align 4
  %11 = load %struct.cpufreq_policy*, %struct.cpufreq_policy** %5, align 8
  %12 = getelementptr inbounds %struct.cpufreq_policy, %struct.cpufreq_policy* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = icmp ugt i32 %10, %13
  br i1 %14, label %21, label %15

15:                                               ; preds = %3
  %16 = load i32, i32* %6, align 4
  %17 = load %struct.cpufreq_policy*, %struct.cpufreq_policy** %5, align 8
  %18 = getelementptr inbounds %struct.cpufreq_policy, %struct.cpufreq_policy* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = icmp ult i32 %16, %19
  br i1 %20, label %21, label %24

21:                                               ; preds = %15, %3
  %22 = load i32, i32* @EINVAL, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %4, align 4
  br label %65

24:                                               ; preds = %15
  %25 = load i32, i32* %6, align 4
  %26 = load i32, i32* @fid, align 4
  %27 = mul nsw i32 %26, 100
  %28 = udiv i32 %25, %27
  store i32 %28, i32* %9, align 4
  %29 = load %struct.cpufreq_policy*, %struct.cpufreq_policy** %5, align 8
  %30 = getelementptr inbounds %struct.cpufreq_policy, %struct.cpufreq_policy* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @nforce2_get(i32 %31)
  %33 = getelementptr inbounds %struct.cpufreq_freqs, %struct.cpufreq_freqs* %8, i32 0, i32 0
  store i32 %32, i32* %33, align 4
  %34 = load i32, i32* %9, align 4
  %35 = load i32, i32* @fid, align 4
  %36 = mul i32 %34, %35
  %37 = mul i32 %36, 100
  %38 = getelementptr inbounds %struct.cpufreq_freqs, %struct.cpufreq_freqs* %8, i32 0, i32 1
  store i32 %37, i32* %38, align 4
  %39 = getelementptr inbounds %struct.cpufreq_freqs, %struct.cpufreq_freqs* %8, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = getelementptr inbounds %struct.cpufreq_freqs, %struct.cpufreq_freqs* %8, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = icmp eq i32 %40, %42
  br i1 %43, label %44, label %45

44:                                               ; preds = %24
  store i32 0, i32* %4, align 4
  br label %65

45:                                               ; preds = %24
  %46 = getelementptr inbounds %struct.cpufreq_freqs, %struct.cpufreq_freqs* %8, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = getelementptr inbounds %struct.cpufreq_freqs, %struct.cpufreq_freqs* %8, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = call i32 (i8*, i32, ...) @pr_debug(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %47, i32 %49)
  %51 = load %struct.cpufreq_policy*, %struct.cpufreq_policy** %5, align 8
  %52 = call i32 @cpufreq_freq_transition_begin(%struct.cpufreq_policy* %51, %struct.cpufreq_freqs* %8)
  %53 = load i32, i32* %9, align 4
  %54 = call i64 @nforce2_set_fsb(i32 %53)
  %55 = icmp slt i64 %54, 0
  br i1 %55, label %56, label %59

56:                                               ; preds = %45
  %57 = load i32, i32* %9, align 4
  %58 = call i32 @pr_err(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i32 %57)
  br label %62

59:                                               ; preds = %45
  %60 = load i32, i32* %9, align 4
  %61 = call i32 (i8*, i32, ...) @pr_debug(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0), i32 %60)
  br label %62

62:                                               ; preds = %59, %56
  %63 = load %struct.cpufreq_policy*, %struct.cpufreq_policy** %5, align 8
  %64 = call i32 @cpufreq_freq_transition_end(%struct.cpufreq_policy* %63, %struct.cpufreq_freqs* %8, i32 0)
  store i32 0, i32* %4, align 4
  br label %65

65:                                               ; preds = %62, %44, %21
  %66 = load i32, i32* %4, align 4
  ret i32 %66
}

declare dso_local i32 @nforce2_get(i32) #1

declare dso_local i32 @pr_debug(i8*, i32, ...) #1

declare dso_local i32 @cpufreq_freq_transition_begin(%struct.cpufreq_policy*, %struct.cpufreq_freqs*) #1

declare dso_local i64 @nforce2_set_fsb(i32) #1

declare dso_local i32 @pr_err(i8*, i32) #1

declare dso_local i32 @cpufreq_freq_transition_end(%struct.cpufreq_policy*, %struct.cpufreq_freqs*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
