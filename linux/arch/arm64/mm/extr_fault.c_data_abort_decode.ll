; ModuleID = '/home/carl/AnghaBench/linux/arch/arm64/mm/extr_fault.c_data_abort_decode.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm64/mm/extr_fault.c_data_abort_decode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [18 x i8] c"Data abort info:\0A\00", align 1
@ESR_ELx_ISV = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"  Access size = %u byte(s)\0A\00", align 1
@ESR_ELx_SAS = common dso_local global i32 0, align 4
@ESR_ELx_SAS_SHIFT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [24 x i8] c"  SSE = %lu, SRT = %lu\0A\00", align 1
@ESR_ELx_SSE = common dso_local global i32 0, align 4
@ESR_ELx_SSE_SHIFT = common dso_local global i32 0, align 4
@ESR_ELx_SRT_MASK = common dso_local global i32 0, align 4
@ESR_ELx_SRT_SHIFT = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [22 x i8] c"  SF = %lu, AR = %lu\0A\00", align 1
@ESR_ELx_SF = common dso_local global i32 0, align 4
@ESR_ELx_SF_SHIFT = common dso_local global i32 0, align 4
@ESR_ELx_AR = common dso_local global i32 0, align 4
@ESR_ELx_AR_SHIFT = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [26 x i8] c"  ISV = 0, ISS = 0x%08lx\0A\00", align 1
@ESR_ELx_ISS_MASK = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [23 x i8] c"  CM = %lu, WnR = %lu\0A\00", align 1
@ESR_ELx_CM = common dso_local global i32 0, align 4
@ESR_ELx_CM_SHIFT = common dso_local global i32 0, align 4
@ESR_ELx_WNR = common dso_local global i32 0, align 4
@ESR_ELx_WNR_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @data_abort_decode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @data_abort_decode(i32 %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = call i32 (i8*, ...) @pr_alert(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %4 = load i32, i32* %2, align 4
  %5 = load i32, i32* @ESR_ELx_ISV, align 4
  %6 = and i32 %4, %5
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %8, label %38

8:                                                ; preds = %1
  %9 = load i32, i32* %2, align 4
  %10 = load i32, i32* @ESR_ELx_SAS, align 4
  %11 = and i32 %9, %10
  %12 = load i32, i32* @ESR_ELx_SAS_SHIFT, align 4
  %13 = lshr i32 %11, %12
  %14 = shl i32 1, %13
  %15 = call i32 (i8*, ...) @pr_alert(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i32 %14)
  %16 = load i32, i32* %2, align 4
  %17 = load i32, i32* @ESR_ELx_SSE, align 4
  %18 = and i32 %16, %17
  %19 = load i32, i32* @ESR_ELx_SSE_SHIFT, align 4
  %20 = lshr i32 %18, %19
  %21 = load i32, i32* %2, align 4
  %22 = load i32, i32* @ESR_ELx_SRT_MASK, align 4
  %23 = and i32 %21, %22
  %24 = load i32, i32* @ESR_ELx_SRT_SHIFT, align 4
  %25 = lshr i32 %23, %24
  %26 = call i32 (i8*, ...) @pr_alert(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0), i32 %20, i32 %25)
  %27 = load i32, i32* %2, align 4
  %28 = load i32, i32* @ESR_ELx_SF, align 4
  %29 = and i32 %27, %28
  %30 = load i32, i32* @ESR_ELx_SF_SHIFT, align 4
  %31 = lshr i32 %29, %30
  %32 = load i32, i32* %2, align 4
  %33 = load i32, i32* @ESR_ELx_AR, align 4
  %34 = and i32 %32, %33
  %35 = load i32, i32* @ESR_ELx_AR_SHIFT, align 4
  %36 = lshr i32 %34, %35
  %37 = call i32 (i8*, ...) @pr_alert(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0), i32 %31, i32 %36)
  br label %43

38:                                               ; preds = %1
  %39 = load i32, i32* %2, align 4
  %40 = load i32, i32* @ESR_ELx_ISS_MASK, align 4
  %41 = and i32 %39, %40
  %42 = call i32 (i8*, ...) @pr_alert(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i64 0, i64 0), i32 %41)
  br label %43

43:                                               ; preds = %38, %8
  %44 = load i32, i32* %2, align 4
  %45 = load i32, i32* @ESR_ELx_CM, align 4
  %46 = and i32 %44, %45
  %47 = load i32, i32* @ESR_ELx_CM_SHIFT, align 4
  %48 = lshr i32 %46, %47
  %49 = load i32, i32* %2, align 4
  %50 = load i32, i32* @ESR_ELx_WNR, align 4
  %51 = and i32 %49, %50
  %52 = load i32, i32* @ESR_ELx_WNR_SHIFT, align 4
  %53 = lshr i32 %51, %52
  %54 = call i32 (i8*, ...) @pr_alert(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5, i64 0, i64 0), i32 %48, i32 %53)
  ret void
}

declare dso_local i32 @pr_alert(i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
