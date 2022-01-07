; ModuleID = '/home/carl/AnghaBench/linux/drivers/cpufreq/extr_speedstep-lib.c_pentium3_get_frequency.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/cpufreq/extr_speedstep-lib.c_pentium3_get_frequency.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.anon = type { i32, i32 }
%struct.anon.0 = type { i32, i32 }

@pentium3_get_frequency.msr_decode_mult = internal constant [15 x %struct.anon] [%struct.anon { i32 30, i32 1 }, %struct.anon { i32 35, i32 5 }, %struct.anon { i32 40, i32 2 }, %struct.anon { i32 45, i32 6 }, %struct.anon { i32 50, i32 0 }, %struct.anon { i32 55, i32 4 }, %struct.anon { i32 60, i32 11 }, %struct.anon { i32 65, i32 15 }, %struct.anon { i32 70, i32 9 }, %struct.anon { i32 75, i32 13 }, %struct.anon { i32 80, i32 10 }, %struct.anon { i32 85, i32 38 }, %struct.anon { i32 90, i32 32 }, %struct.anon { i32 100, i32 43 }, %struct.anon { i32 0, i32 255 }], align 16
@pentium3_get_frequency.msr_decode_fsb = internal constant [4 x %struct.anon.0] [%struct.anon.0 { i32 66, i32 0 }, %struct.anon.0 { i32 100, i32 2 }, %struct.anon.0 { i32 133, i32 1 }, %struct.anon.0 { i32 0, i32 255 }], align 16
@MSR_IA32_EBL_CR_POWERON = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"P3 - MSR_IA32_EBL_CR_POWERON: 0x%x 0x%x\0A\00", align 1
@SPEEDSTEP_CPU_PIII_C_EARLY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"workaround for early PIIIs\0A\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"speed is %u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @pentium3_get_frequency to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pentium3_get_frequency(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %8 = load i32, i32* @MSR_IA32_EBL_CR_POWERON, align 4
  %9 = load i32, i32* %4, align 4
  %10 = load i32, i32* %5, align 4
  %11 = call i32 @rdmsr(i32 %8, i32 %9, i32 %10)
  %12 = load i32, i32* %4, align 4
  %13 = load i32, i32* %5, align 4
  %14 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 %12, i32 %13)
  %15 = load i32, i32* %4, align 4
  store i32 %15, i32* %5, align 4
  %16 = load i32, i32* %5, align 4
  %17 = and i32 %16, 786432
  store i32 %17, i32* %5, align 4
  %18 = load i32, i32* %5, align 4
  %19 = ashr i32 %18, 18
  store i32 %19, i32* %5, align 4
  br label %20

20:                                               ; preds = %36, %1
  %21 = load i32, i32* %5, align 4
  %22 = load i32, i32* %6, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds [4 x %struct.anon.0], [4 x %struct.anon.0]* @pentium3_get_frequency.msr_decode_fsb, i64 0, i64 %23
  %25 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = icmp ne i32 %21, %26
  br i1 %27, label %28, label %39

28:                                               ; preds = %20
  %29 = load i32, i32* %6, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds [4 x %struct.anon.0], [4 x %struct.anon.0]* @pentium3_get_frequency.msr_decode_fsb, i64 0, i64 %30
  %32 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = icmp eq i32 %33, 255
  br i1 %34, label %35, label %36

35:                                               ; preds = %28
  store i32 0, i32* %2, align 4
  br label %98

36:                                               ; preds = %28
  %37 = load i32, i32* %6, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %6, align 4
  br label %20

39:                                               ; preds = %20
  %40 = load i32, i32* %3, align 4
  %41 = load i32, i32* @SPEEDSTEP_CPU_PIII_C_EARLY, align 4
  %42 = icmp eq i32 %40, %41
  br i1 %42, label %43, label %47

43:                                               ; preds = %39
  %44 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  %45 = load i32, i32* %4, align 4
  %46 = and i32 %45, 62914560
  store i32 %46, i32* %4, align 4
  br label %50

47:                                               ; preds = %39
  %48 = load i32, i32* %4, align 4
  %49 = and i32 %48, 197132288
  store i32 %49, i32* %4, align 4
  br label %50

50:                                               ; preds = %47, %43
  %51 = load i32, i32* %4, align 4
  %52 = ashr i32 %51, 22
  store i32 %52, i32* %4, align 4
  br label %53

53:                                               ; preds = %69, %50
  %54 = load i32, i32* %4, align 4
  %55 = load i32, i32* %7, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds [15 x %struct.anon], [15 x %struct.anon]* @pentium3_get_frequency.msr_decode_mult, i64 0, i64 %56
  %58 = getelementptr inbounds %struct.anon, %struct.anon* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = icmp ne i32 %54, %59
  br i1 %60, label %61, label %72

61:                                               ; preds = %53
  %62 = load i32, i32* %7, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds [15 x %struct.anon], [15 x %struct.anon]* @pentium3_get_frequency.msr_decode_mult, i64 0, i64 %63
  %65 = getelementptr inbounds %struct.anon, %struct.anon* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = icmp eq i32 %66, 255
  br i1 %67, label %68, label %69

68:                                               ; preds = %61
  store i32 0, i32* %2, align 4
  br label %98

69:                                               ; preds = %61
  %70 = load i32, i32* %7, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %7, align 4
  br label %53

72:                                               ; preds = %53
  %73 = load i32, i32* %7, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds [15 x %struct.anon], [15 x %struct.anon]* @pentium3_get_frequency.msr_decode_mult, i64 0, i64 %74
  %76 = getelementptr inbounds %struct.anon, %struct.anon* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = load i32, i32* %6, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds [4 x %struct.anon.0], [4 x %struct.anon.0]* @pentium3_get_frequency.msr_decode_fsb, i64 0, i64 %79
  %81 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = mul i32 %77, %82
  %84 = mul i32 %83, 100
  %85 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i32 %84)
  %86 = load i32, i32* %7, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds [15 x %struct.anon], [15 x %struct.anon]* @pentium3_get_frequency.msr_decode_mult, i64 0, i64 %87
  %89 = getelementptr inbounds %struct.anon, %struct.anon* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = load i32, i32* %6, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds [4 x %struct.anon.0], [4 x %struct.anon.0]* @pentium3_get_frequency.msr_decode_fsb, i64 0, i64 %92
  %94 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  %96 = mul i32 %90, %95
  %97 = mul i32 %96, 100
  store i32 %97, i32* %2, align 4
  br label %98

98:                                               ; preds = %72, %68, %35
  %99 = load i32, i32* %2, align 4
  ret i32 %99
}

declare dso_local i32 @rdmsr(i32, i32, i32) #1

declare dso_local i32 @pr_debug(i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
