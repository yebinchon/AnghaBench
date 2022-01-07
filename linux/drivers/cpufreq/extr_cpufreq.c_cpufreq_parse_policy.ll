; ModuleID = '/home/carl/AnghaBench/linux/drivers/cpufreq/extr_cpufreq.c_cpufreq_parse_policy.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/cpufreq/extr_cpufreq.c_cpufreq_parse_policy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cpufreq_policy = type { i32 }

@.str = private unnamed_addr constant [12 x i8] c"performance\00", align 1
@CPUFREQ_NAME_LEN = common dso_local global i32 0, align 4
@CPUFREQ_POLICY_PERFORMANCE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [10 x i8] c"powersave\00", align 1
@CPUFREQ_POLICY_POWERSAVE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.cpufreq_policy*)* @cpufreq_parse_policy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cpufreq_parse_policy(i8* %0, %struct.cpufreq_policy* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.cpufreq_policy*, align 8
  store i8* %0, i8** %4, align 8
  store %struct.cpufreq_policy* %1, %struct.cpufreq_policy** %5, align 8
  %6 = load i8*, i8** %4, align 8
  %7 = load i32, i32* @CPUFREQ_NAME_LEN, align 4
  %8 = call i32 @strncasecmp(i8* %6, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 %7)
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %14, label %10

10:                                               ; preds = %2
  %11 = load i32, i32* @CPUFREQ_POLICY_PERFORMANCE, align 4
  %12 = load %struct.cpufreq_policy*, %struct.cpufreq_policy** %5, align 8
  %13 = getelementptr inbounds %struct.cpufreq_policy, %struct.cpufreq_policy* %12, i32 0, i32 0
  store i32 %11, i32* %13, align 4
  store i32 0, i32* %3, align 4
  br label %26

14:                                               ; preds = %2
  %15 = load i8*, i8** %4, align 8
  %16 = load i32, i32* @CPUFREQ_NAME_LEN, align 4
  %17 = call i32 @strncasecmp(i8* %15, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i32 %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %23, label %19

19:                                               ; preds = %14
  %20 = load i32, i32* @CPUFREQ_POLICY_POWERSAVE, align 4
  %21 = load %struct.cpufreq_policy*, %struct.cpufreq_policy** %5, align 8
  %22 = getelementptr inbounds %struct.cpufreq_policy, %struct.cpufreq_policy* %21, i32 0, i32 0
  store i32 %20, i32* %22, align 4
  store i32 0, i32* %3, align 4
  br label %26

23:                                               ; preds = %14
  %24 = load i32, i32* @EINVAL, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %3, align 4
  br label %26

26:                                               ; preds = %23, %19, %10
  %27 = load i32, i32* %3, align 4
  ret i32 %27
}

declare dso_local i32 @strncasecmp(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
