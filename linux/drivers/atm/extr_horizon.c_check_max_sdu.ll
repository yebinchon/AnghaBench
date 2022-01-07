; ModuleID = '/home/carl/AnghaBench/linux/drivers/atm/extr_horizon.c_check_max_sdu.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/atm/extr_horizon.c_check_max_sdu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.atm_trafprm = type { i32 }

@DBG_FLOW = common dso_local global i32 0, align 4
@DBG_QOS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"check_max_sdu\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"defaulting max_sdu\00", align 1
@ATM_AAL0_SDU = common dso_local global i32 0, align 4
@DBG_ERR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [18 x i8] c"rejecting max_sdu\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@ATM_MAX_AAL34_PDU = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [14 x i8] c"%sing max_sdu\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"capp\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"default\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.atm_trafprm*, i32)* @check_max_sdu to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @check_max_sdu(i32 %0, %struct.atm_trafprm* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.atm_trafprm*, align 8
  %7 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store %struct.atm_trafprm* %1, %struct.atm_trafprm** %6, align 8
  store i32 %2, i32* %7, align 4
  %8 = load i32, i32* @DBG_FLOW, align 4
  %9 = load i32, i32* @DBG_QOS, align 4
  %10 = or i32 %8, %9
  %11 = call i32 (i32, i8*, ...) @PRINTD(i32 %10, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  %12 = load i32, i32* %5, align 4
  switch i32 %12, label %87 [
    i32 130, label %13
    i32 129, label %39
    i32 128, label %63
  ]

13:                                               ; preds = %3
  %14 = load %struct.atm_trafprm*, %struct.atm_trafprm** %6, align 8
  %15 = getelementptr inbounds %struct.atm_trafprm, %struct.atm_trafprm* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %24, label %18

18:                                               ; preds = %13
  %19 = load i32, i32* @DBG_QOS, align 4
  %20 = call i32 (i32, i8*, ...) @PRINTD(i32 %19, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0))
  %21 = load i32, i32* @ATM_AAL0_SDU, align 4
  %22 = load %struct.atm_trafprm*, %struct.atm_trafprm** %6, align 8
  %23 = getelementptr inbounds %struct.atm_trafprm, %struct.atm_trafprm* %22, i32 0, i32 0
  store i32 %21, i32* %23, align 4
  br label %38

24:                                               ; preds = %13
  %25 = load %struct.atm_trafprm*, %struct.atm_trafprm** %6, align 8
  %26 = getelementptr inbounds %struct.atm_trafprm, %struct.atm_trafprm* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @ATM_AAL0_SDU, align 4
  %29 = icmp ne i32 %27, %28
  br i1 %29, label %30, label %37

30:                                               ; preds = %24
  %31 = load i32, i32* @DBG_QOS, align 4
  %32 = load i32, i32* @DBG_ERR, align 4
  %33 = or i32 %31, %32
  %34 = call i32 (i32, i8*, ...) @PRINTD(i32 %33, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0))
  %35 = load i32, i32* @EINVAL, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %4, align 4
  br label %88

37:                                               ; preds = %24
  br label %38

38:                                               ; preds = %37, %18
  br label %87

39:                                               ; preds = %3
  %40 = load %struct.atm_trafprm*, %struct.atm_trafprm** %6, align 8
  %41 = getelementptr inbounds %struct.atm_trafprm, %struct.atm_trafprm* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %50, label %44

44:                                               ; preds = %39
  %45 = load %struct.atm_trafprm*, %struct.atm_trafprm** %6, align 8
  %46 = getelementptr inbounds %struct.atm_trafprm, %struct.atm_trafprm* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* @ATM_MAX_AAL34_PDU, align 4
  %49 = icmp ugt i32 %47, %48
  br i1 %49, label %50, label %62

50:                                               ; preds = %44, %39
  %51 = load i32, i32* @DBG_QOS, align 4
  %52 = load %struct.atm_trafprm*, %struct.atm_trafprm** %6, align 8
  %53 = getelementptr inbounds %struct.atm_trafprm, %struct.atm_trafprm* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = icmp ne i32 %54, 0
  %56 = zext i1 %55 to i64
  %57 = select i1 %55, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0)
  %58 = call i32 (i32, i8*, ...) @PRINTD(i32 %51, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0), i8* %57)
  %59 = load i32, i32* @ATM_MAX_AAL34_PDU, align 4
  %60 = load %struct.atm_trafprm*, %struct.atm_trafprm** %6, align 8
  %61 = getelementptr inbounds %struct.atm_trafprm, %struct.atm_trafprm* %60, i32 0, i32 0
  store i32 %59, i32* %61, align 4
  br label %62

62:                                               ; preds = %50, %44
  br label %87

63:                                               ; preds = %3
  %64 = load %struct.atm_trafprm*, %struct.atm_trafprm** %6, align 8
  %65 = getelementptr inbounds %struct.atm_trafprm, %struct.atm_trafprm* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %74, label %68

68:                                               ; preds = %63
  %69 = load %struct.atm_trafprm*, %struct.atm_trafprm** %6, align 8
  %70 = getelementptr inbounds %struct.atm_trafprm, %struct.atm_trafprm* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = load i32, i32* %7, align 4
  %73 = icmp ugt i32 %71, %72
  br i1 %73, label %74, label %86

74:                                               ; preds = %68, %63
  %75 = load i32, i32* @DBG_QOS, align 4
  %76 = load %struct.atm_trafprm*, %struct.atm_trafprm** %6, align 8
  %77 = getelementptr inbounds %struct.atm_trafprm, %struct.atm_trafprm* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = icmp ne i32 %78, 0
  %80 = zext i1 %79 to i64
  %81 = select i1 %79, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0)
  %82 = call i32 (i32, i8*, ...) @PRINTD(i32 %75, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0), i8* %81)
  %83 = load i32, i32* %7, align 4
  %84 = load %struct.atm_trafprm*, %struct.atm_trafprm** %6, align 8
  %85 = getelementptr inbounds %struct.atm_trafprm, %struct.atm_trafprm* %84, i32 0, i32 0
  store i32 %83, i32* %85, align 4
  br label %86

86:                                               ; preds = %74, %68
  br label %87

87:                                               ; preds = %3, %86, %62, %38
  store i32 0, i32* %4, align 4
  br label %88

88:                                               ; preds = %87, %30
  %89 = load i32, i32* %4, align 4
  ret i32 %89
}

declare dso_local i32 @PRINTD(i32, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
