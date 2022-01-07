; ModuleID = '/home/carl/AnghaBench/linux/drivers/atm/extr_horizon.c_atm_pcr_check.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/atm/extr_horizon.c_atm_pcr_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.atm_trafprm = type { i32, i32, i32 }

@ATM_MAX_PCR = common dso_local global i32 0, align 4
@DBG_QOS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"luser gave min_pcr = ATM_MAX_PCR\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"luser gave negative min_pcr\00", align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"pcr less than min_pcr\00", align 1
@.str.3 = private unnamed_addr constant [28 x i8] c"luser gave negative max_pcr\00", align 1
@.str.4 = private unnamed_addr constant [25 x i8] c"pcr greater than max_pcr\00", align 1
@.str.5 = private unnamed_addr constant [12 x i8] c"xBR(pcr) OK\00", align 1
@.str.6 = private unnamed_addr constant [43 x i8] c"pcr=%u, tp: min_pcr=%d, pcr=%d, max_pcr=%d\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.atm_trafprm*, i32)* @atm_pcr_check to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @atm_pcr_check(%struct.atm_trafprm* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.atm_trafprm*, align 8
  %5 = alloca i32, align 4
  store %struct.atm_trafprm* %0, %struct.atm_trafprm** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load %struct.atm_trafprm*, %struct.atm_trafprm** %4, align 8
  %7 = getelementptr inbounds %struct.atm_trafprm, %struct.atm_trafprm* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = load i32, i32* @ATM_MAX_PCR, align 4
  %10 = icmp eq i32 %8, %9
  br i1 %10, label %11, label %14

11:                                               ; preds = %2
  %12 = load i32, i32* @DBG_QOS, align 4
  %13 = call i32 (i32, i8*, ...) @PRINTD(i32 %12, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  br label %77

14:                                               ; preds = %2
  %15 = load %struct.atm_trafprm*, %struct.atm_trafprm** %4, align 8
  %16 = getelementptr inbounds %struct.atm_trafprm, %struct.atm_trafprm* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = icmp ult i32 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %14
  %20 = load i32, i32* @DBG_QOS, align 4
  %21 = call i32 (i32, i8*, ...) @PRINTD(i32 %20, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  br label %76

22:                                               ; preds = %14
  %23 = load %struct.atm_trafprm*, %struct.atm_trafprm** %4, align 8
  %24 = getelementptr inbounds %struct.atm_trafprm, %struct.atm_trafprm* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %36

27:                                               ; preds = %22
  %28 = load %struct.atm_trafprm*, %struct.atm_trafprm** %4, align 8
  %29 = getelementptr inbounds %struct.atm_trafprm, %struct.atm_trafprm* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* %5, align 4
  %32 = icmp ugt i32 %30, %31
  br i1 %32, label %33, label %36

33:                                               ; preds = %27
  %34 = load i32, i32* @DBG_QOS, align 4
  %35 = call i32 (i32, i8*, ...) @PRINTD(i32 %34, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0))
  br label %75

36:                                               ; preds = %27, %22
  %37 = load %struct.atm_trafprm*, %struct.atm_trafprm** %4, align 8
  %38 = getelementptr inbounds %struct.atm_trafprm, %struct.atm_trafprm* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* @ATM_MAX_PCR, align 4
  %41 = icmp ne i32 %39, %40
  br i1 %41, label %42, label %50

42:                                               ; preds = %36
  %43 = load %struct.atm_trafprm*, %struct.atm_trafprm** %4, align 8
  %44 = getelementptr inbounds %struct.atm_trafprm, %struct.atm_trafprm* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = icmp ult i32 %45, 0
  br i1 %46, label %47, label %50

47:                                               ; preds = %42
  %48 = load i32, i32* @DBG_QOS, align 4
  %49 = call i32 (i32, i8*, ...) @PRINTD(i32 %48, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0))
  br label %74

50:                                               ; preds = %42, %36
  %51 = load %struct.atm_trafprm*, %struct.atm_trafprm** %4, align 8
  %52 = getelementptr inbounds %struct.atm_trafprm, %struct.atm_trafprm* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %70

55:                                               ; preds = %50
  %56 = load %struct.atm_trafprm*, %struct.atm_trafprm** %4, align 8
  %57 = getelementptr inbounds %struct.atm_trafprm, %struct.atm_trafprm* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* @ATM_MAX_PCR, align 4
  %60 = icmp ne i32 %58, %59
  br i1 %60, label %61, label %70

61:                                               ; preds = %55
  %62 = load %struct.atm_trafprm*, %struct.atm_trafprm** %4, align 8
  %63 = getelementptr inbounds %struct.atm_trafprm, %struct.atm_trafprm* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = load i32, i32* %5, align 4
  %66 = icmp ult i32 %64, %65
  br i1 %66, label %67, label %70

67:                                               ; preds = %61
  %68 = load i32, i32* @DBG_QOS, align 4
  %69 = call i32 (i32, i8*, ...) @PRINTD(i32 %68, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i64 0, i64 0))
  br label %73

70:                                               ; preds = %61, %55, %50
  %71 = load i32, i32* @DBG_QOS, align 4
  %72 = call i32 (i32, i8*, ...) @PRINTD(i32 %71, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %92

73:                                               ; preds = %67
  br label %74

74:                                               ; preds = %73, %47
  br label %75

75:                                               ; preds = %74, %33
  br label %76

76:                                               ; preds = %75, %19
  br label %77

77:                                               ; preds = %76, %11
  %78 = load i32, i32* @DBG_QOS, align 4
  %79 = load i32, i32* %5, align 4
  %80 = load %struct.atm_trafprm*, %struct.atm_trafprm** %4, align 8
  %81 = getelementptr inbounds %struct.atm_trafprm, %struct.atm_trafprm* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = load %struct.atm_trafprm*, %struct.atm_trafprm** %4, align 8
  %84 = getelementptr inbounds %struct.atm_trafprm, %struct.atm_trafprm* %83, i32 0, i32 2
  %85 = load i32, i32* %84, align 4
  %86 = load %struct.atm_trafprm*, %struct.atm_trafprm** %4, align 8
  %87 = getelementptr inbounds %struct.atm_trafprm, %struct.atm_trafprm* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = call i32 (i32, i8*, ...) @PRINTD(i32 %78, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.6, i64 0, i64 0), i32 %79, i32 %82, i32 %85, i32 %88)
  %90 = load i32, i32* @EINVAL, align 4
  %91 = sub nsw i32 0, %90
  store i32 %91, i32* %3, align 4
  br label %92

92:                                               ; preds = %77, %70
  %93 = load i32, i32* %3, align 4
  ret i32 %93
}

declare dso_local i32 @PRINTD(i32, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
