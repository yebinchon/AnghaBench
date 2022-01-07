; ModuleID = '/home/carl/AnghaBench/linux/drivers/cpufreq/extr_powernow-k8.c_check_supported_cpu.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/cpufreq/extr_powernow-k8.c_check_supported_cpu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ENODEV = common dso_local global i32 0, align 4
@CPUID_PROCESSOR_SIGNATURE = common dso_local global i32 0, align 4
@CPUID_XFAM = common dso_local global i32 0, align 4
@CPUID_XFAM_K8 = common dso_local global i32 0, align 4
@CPUID_USE_XFAM_XMOD = common dso_local global i32 0, align 4
@CPUID_XMOD = common dso_local global i32 0, align 4
@CPUID_XMOD_REV_MASK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"Processor cpuid %x not supported\0A\00", align 1
@CPUID_GET_MAX_CAPABILITIES = common dso_local global i32 0, align 4
@CPUID_FREQ_VOLT_CAPABILITIES = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [43 x i8] c"No frequency change capabilities detected\0A\00", align 1
@P_STATE_TRANSITION_CAPABLE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [39 x i8] c"Power state transitions not supported\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @check_supported_cpu to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @check_supported_cpu(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  store i8* %0, i8** %2, align 8
  %8 = load i8*, i8** %2, align 8
  %9 = bitcast i8* %8 to i32*
  store i32* %9, i32** %7, align 8
  %10 = load i32, i32* @ENODEV, align 4
  %11 = sub nsw i32 0, %10
  %12 = load i32*, i32** %7, align 8
  store i32 %11, i32* %12, align 4
  %13 = load i32, i32* @CPUID_PROCESSOR_SIGNATURE, align 4
  %14 = call i32 @cpuid_eax(i32 %13)
  store i32 %14, i32* %3, align 4
  %15 = load i32, i32* %3, align 4
  %16 = load i32, i32* @CPUID_XFAM, align 4
  %17 = and i32 %15, %16
  %18 = load i32, i32* @CPUID_XFAM_K8, align 4
  %19 = icmp eq i32 %17, %18
  br i1 %19, label %20, label %55

20:                                               ; preds = %1
  %21 = load i32, i32* %3, align 4
  %22 = load i32, i32* @CPUID_USE_XFAM_XMOD, align 4
  %23 = and i32 %21, %22
  %24 = load i32, i32* @CPUID_USE_XFAM_XMOD, align 4
  %25 = icmp ne i32 %23, %24
  br i1 %25, label %32, label %26

26:                                               ; preds = %20
  %27 = load i32, i32* %3, align 4
  %28 = load i32, i32* @CPUID_XMOD, align 4
  %29 = and i32 %27, %28
  %30 = load i32, i32* @CPUID_XMOD_REV_MASK, align 4
  %31 = icmp sgt i32 %29, %30
  br i1 %31, label %32, label %35

32:                                               ; preds = %26, %20
  %33 = load i32, i32* %3, align 4
  %34 = call i32 (i8*, ...) @pr_info(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %33)
  br label %55

35:                                               ; preds = %26
  %36 = load i32, i32* @CPUID_GET_MAX_CAPABILITIES, align 4
  %37 = call i32 @cpuid_eax(i32 %36)
  store i32 %37, i32* %3, align 4
  %38 = load i32, i32* %3, align 4
  %39 = load i32, i32* @CPUID_FREQ_VOLT_CAPABILITIES, align 4
  %40 = icmp slt i32 %38, %39
  br i1 %40, label %41, label %43

41:                                               ; preds = %35
  %42 = call i32 (i8*, ...) @pr_info(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0))
  br label %55

43:                                               ; preds = %35
  %44 = load i32, i32* @CPUID_FREQ_VOLT_CAPABILITIES, align 4
  %45 = call i32 @cpuid(i32 %44, i32* %3, i32* %4, i32* %5, i32* %6)
  %46 = load i32, i32* %6, align 4
  %47 = load i32, i32* @P_STATE_TRANSITION_CAPABLE, align 4
  %48 = and i32 %46, %47
  %49 = load i32, i32* @P_STATE_TRANSITION_CAPABLE, align 4
  %50 = icmp ne i32 %48, %49
  br i1 %50, label %51, label %53

51:                                               ; preds = %43
  %52 = call i32 (i8*, ...) @pr_info(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0))
  br label %55

53:                                               ; preds = %43
  %54 = load i32*, i32** %7, align 8
  store i32 0, i32* %54, align 4
  br label %55

55:                                               ; preds = %32, %41, %51, %53, %1
  ret void
}

declare dso_local i32 @cpuid_eax(i32) #1

declare dso_local i32 @pr_info(i8*, ...) #1

declare dso_local i32 @cpuid(i32, i32*, i32*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
