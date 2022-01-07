; ModuleID = '/home/carl/AnghaBench/linux/drivers/cpufreq/extr_p4-clockmod.c_cpufreq_p4_setdc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/cpufreq/extr_p4-clockmod.c_cpufreq_p4_setdc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@DC_DISABLE = common dso_local global i32 0, align 4
@DC_RESV = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@MSR_IA32_THERM_STATUS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"CPU#%d currently thermal throttled\0A\00", align 1
@has_N44_O17_errata = common dso_local global i64* null, align 8
@DC_25PT = common dso_local global i32 0, align 4
@DC_DFLT = common dso_local global i32 0, align 4
@DC_38PT = common dso_local global i32 0, align 4
@MSR_IA32_THERM_CONTROL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"CPU#%d disabling modulation\0A\00", align 1
@.str.2 = private unnamed_addr constant [35 x i8] c"CPU#%d setting duty cycle to %d%%\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32)* @cpufreq_p4_setdc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cpufreq_p4_setdc(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %8 = load i32, i32* %5, align 4
  %9 = load i32, i32* @DC_DISABLE, align 4
  %10 = icmp ugt i32 %8, %9
  br i1 %10, label %15, label %11

11:                                               ; preds = %2
  %12 = load i32, i32* %5, align 4
  %13 = load i32, i32* @DC_RESV, align 4
  %14 = icmp eq i32 %12, %13
  br i1 %14, label %15, label %18

15:                                               ; preds = %11, %2
  %16 = load i32, i32* @EINVAL, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %3, align 4
  br label %81

18:                                               ; preds = %11
  %19 = load i32, i32* %4, align 4
  %20 = load i32, i32* @MSR_IA32_THERM_STATUS, align 4
  %21 = call i32 @rdmsr_on_cpu(i32 %19, i32 %20, i32* %6, i32* %7)
  %22 = load i32, i32* %6, align 4
  %23 = and i32 %22, 1
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %18
  %26 = load i32, i32* %4, align 4
  %27 = call i32 (i8*, i32, ...) @pr_debug(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %26)
  br label %28

28:                                               ; preds = %25, %18
  %29 = load i64*, i64** @has_N44_O17_errata, align 8
  %30 = load i32, i32* %4, align 4
  %31 = zext i32 %30 to i64
  %32 = getelementptr inbounds i64, i64* %29, i64 %31
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %45

35:                                               ; preds = %28
  %36 = load i32, i32* %5, align 4
  %37 = load i32, i32* @DC_25PT, align 4
  %38 = icmp eq i32 %36, %37
  br i1 %38, label %43, label %39

39:                                               ; preds = %35
  %40 = load i32, i32* %5, align 4
  %41 = load i32, i32* @DC_DFLT, align 4
  %42 = icmp eq i32 %40, %41
  br i1 %42, label %43, label %45

43:                                               ; preds = %39, %35
  %44 = load i32, i32* @DC_38PT, align 4
  store i32 %44, i32* %5, align 4
  br label %45

45:                                               ; preds = %43, %39, %28
  %46 = load i32, i32* %4, align 4
  %47 = load i32, i32* @MSR_IA32_THERM_CONTROL, align 4
  %48 = call i32 @rdmsr_on_cpu(i32 %46, i32 %47, i32* %6, i32* %7)
  %49 = load i32, i32* %5, align 4
  %50 = load i32, i32* @DC_DISABLE, align 4
  %51 = icmp eq i32 %49, %50
  br i1 %51, label %52, label %61

52:                                               ; preds = %45
  %53 = load i32, i32* %4, align 4
  %54 = call i32 (i8*, i32, ...) @pr_debug(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i32 %53)
  %55 = load i32, i32* %4, align 4
  %56 = load i32, i32* @MSR_IA32_THERM_CONTROL, align 4
  %57 = load i32, i32* %6, align 4
  %58 = and i32 %57, -17
  %59 = load i32, i32* %7, align 4
  %60 = call i32 @wrmsr_on_cpu(i32 %55, i32 %56, i32 %58, i32 %59)
  br label %80

61:                                               ; preds = %45
  %62 = load i32, i32* %4, align 4
  %63 = load i32, i32* %5, align 4
  %64 = mul i32 125, %63
  %65 = udiv i32 %64, 10
  %66 = call i32 (i8*, i32, ...) @pr_debug(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0), i32 %62, i32 %65)
  %67 = load i32, i32* %6, align 4
  %68 = and i32 %67, -15
  store i32 %68, i32* %6, align 4
  %69 = load i32, i32* %6, align 4
  %70 = or i32 %69, 16
  %71 = load i32, i32* %5, align 4
  %72 = and i32 %71, 7
  %73 = shl i32 %72, 1
  %74 = or i32 %70, %73
  store i32 %74, i32* %6, align 4
  %75 = load i32, i32* %4, align 4
  %76 = load i32, i32* @MSR_IA32_THERM_CONTROL, align 4
  %77 = load i32, i32* %6, align 4
  %78 = load i32, i32* %7, align 4
  %79 = call i32 @wrmsr_on_cpu(i32 %75, i32 %76, i32 %77, i32 %78)
  br label %80

80:                                               ; preds = %61, %52
  store i32 0, i32* %3, align 4
  br label %81

81:                                               ; preds = %80, %15
  %82 = load i32, i32* %3, align 4
  ret i32 %82
}

declare dso_local i32 @rdmsr_on_cpu(i32, i32, i32*, i32*) #1

declare dso_local i32 @pr_debug(i8*, i32, ...) #1

declare dso_local i32 @wrmsr_on_cpu(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
