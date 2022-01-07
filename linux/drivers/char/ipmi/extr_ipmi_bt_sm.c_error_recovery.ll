; ModuleID = '/home/carl/AnghaBench/linux/drivers/char/ipmi/extr_ipmi_bt_sm.c_error_recovery.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/char/ipmi/extr_ipmi_bt_sm.c_error_recovery.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.si_sm_data = type { i32, i32, i8, i32, %struct.TYPE_2__*, i32, i32, i32 }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [8 x i8] c"timeout\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"internal error\00", align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"IPMI BT: %s in %s %s \00", align 1
@STATE2TXT = common dso_local global i32 0, align 4
@STATUS2TXT = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [17 x i8] c"%d retries left\0A\00", align 1
@BT_STATE_RESTART = common dso_local global i32 0, align 4
@SI_SM_CALL_WITHOUT_DELAY = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [43 x i8] c"failed %d retries, sending error response\0A\00", align 1
@.str.5 = private unnamed_addr constant [24 x i8] c"stuck, try power cycle\0A\00", align 1
@.str.6 = private unnamed_addr constant [25 x i8] c"BT reset (takes 5 secs)\0A\00", align 1
@BT_STATE_RESET1 = common dso_local global i32 0, align 4
@BT_STATE_IDLE = common dso_local global i32 0, align 4
@BT_B_BUSY = common dso_local global i8 0, align 1
@IPMI_NODE_BUSY_ERR = common dso_local global i8 0, align 1
@BT_STATE_LONG_BUSY = common dso_local global i32 0, align 4
@SI_SM_TRANSACTION_COMPLETE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.si_sm_data*, i8, i8)* @error_recovery to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @error_recovery(%struct.si_sm_data* %0, i8 zeroext %1, i8 zeroext %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.si_sm_data*, align 8
  %6 = alloca i8, align 1
  %7 = alloca i8, align 1
  %8 = alloca i8*, align 8
  store %struct.si_sm_data* %0, %struct.si_sm_data** %5, align 8
  store i8 %1, i8* %6, align 1
  store i8 %2, i8* %7, align 1
  %9 = load %struct.si_sm_data*, %struct.si_sm_data** %5, align 8
  %10 = getelementptr inbounds %struct.si_sm_data, %struct.si_sm_data* %9, i32 0, i32 6
  %11 = load i32, i32* %10, align 4
  %12 = load %struct.si_sm_data*, %struct.si_sm_data** %5, align 8
  %13 = getelementptr inbounds %struct.si_sm_data, %struct.si_sm_data* %12, i32 0, i32 7
  store i32 %11, i32* %13, align 8
  %14 = load i8, i8* %7, align 1
  %15 = zext i8 %14 to i32
  switch i32 %15, label %17 [
    i32 128, label %16
  ]

16:                                               ; preds = %3
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8** %8, align 8
  br label %18

17:                                               ; preds = %3
  store i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i8** %8, align 8
  br label %18

18:                                               ; preds = %17, %16
  %19 = load %struct.si_sm_data*, %struct.si_sm_data** %5, align 8
  %20 = getelementptr inbounds %struct.si_sm_data, %struct.si_sm_data* %19, i32 0, i32 4
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i8*, i8** %8, align 8
  %25 = load i32, i32* @STATE2TXT, align 4
  %26 = load i32, i32* @STATUS2TXT, align 4
  %27 = call i32 (i32, i8*, ...) @dev_warn(i32 %23, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0), i8* %24, i32 %25, i32 %26)
  %28 = load %struct.si_sm_data*, %struct.si_sm_data** %5, align 8
  %29 = getelementptr inbounds %struct.si_sm_data, %struct.si_sm_data* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* %29, align 8
  %32 = load %struct.si_sm_data*, %struct.si_sm_data** %5, align 8
  %33 = getelementptr inbounds %struct.si_sm_data, %struct.si_sm_data* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = load %struct.si_sm_data*, %struct.si_sm_data** %5, align 8
  %36 = getelementptr inbounds %struct.si_sm_data, %struct.si_sm_data* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = icmp slt i32 %34, %37
  br i1 %38, label %39, label %52

39:                                               ; preds = %18
  %40 = load %struct.si_sm_data*, %struct.si_sm_data** %5, align 8
  %41 = getelementptr inbounds %struct.si_sm_data, %struct.si_sm_data* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.si_sm_data*, %struct.si_sm_data** %5, align 8
  %44 = getelementptr inbounds %struct.si_sm_data, %struct.si_sm_data* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = sub nsw i32 %42, %45
  %47 = call i32 @pr_cont(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0), i32 %46)
  %48 = load i32, i32* @BT_STATE_RESTART, align 4
  %49 = load %struct.si_sm_data*, %struct.si_sm_data** %5, align 8
  %50 = getelementptr inbounds %struct.si_sm_data, %struct.si_sm_data* %49, i32 0, i32 3
  store i32 %48, i32* %50, align 4
  %51 = load i32, i32* @SI_SM_CALL_WITHOUT_DELAY, align 4
  store i32 %51, i32* %4, align 4
  br label %122

52:                                               ; preds = %18
  %53 = load %struct.si_sm_data*, %struct.si_sm_data** %5, align 8
  %54 = getelementptr inbounds %struct.si_sm_data, %struct.si_sm_data* %53, i32 0, i32 4
  %55 = load %struct.TYPE_2__*, %struct.TYPE_2__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.si_sm_data*, %struct.si_sm_data** %5, align 8
  %59 = getelementptr inbounds %struct.si_sm_data, %struct.si_sm_data* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = call i32 (i32, i8*, ...) @dev_warn(i32 %57, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.4, i64 0, i64 0), i32 %60)
  %62 = load %struct.si_sm_data*, %struct.si_sm_data** %5, align 8
  %63 = getelementptr inbounds %struct.si_sm_data, %struct.si_sm_data* %62, i32 0, i32 5
  %64 = load i32, i32* %63, align 8
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %73, label %66

66:                                               ; preds = %52
  %67 = load %struct.si_sm_data*, %struct.si_sm_data** %5, align 8
  %68 = getelementptr inbounds %struct.si_sm_data, %struct.si_sm_data* %67, i32 0, i32 4
  %69 = load %struct.TYPE_2__*, %struct.TYPE_2__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @dev_err(i32 %71, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.5, i64 0, i64 0))
  br label %97

73:                                               ; preds = %52
  %74 = load %struct.si_sm_data*, %struct.si_sm_data** %5, align 8
  %75 = getelementptr inbounds %struct.si_sm_data, %struct.si_sm_data* %74, i32 0, i32 2
  %76 = load i8, i8* %75, align 8
  %77 = zext i8 %76 to i32
  %78 = load %struct.si_sm_data*, %struct.si_sm_data** %5, align 8
  %79 = getelementptr inbounds %struct.si_sm_data, %struct.si_sm_data* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = and i32 %80, 255
  %82 = trunc i32 %81 to i8
  %83 = zext i8 %82 to i32
  %84 = icmp sle i32 %77, %83
  br i1 %84, label %85, label %96

85:                                               ; preds = %73
  %86 = load %struct.si_sm_data*, %struct.si_sm_data** %5, align 8
  %87 = getelementptr inbounds %struct.si_sm_data, %struct.si_sm_data* %86, i32 0, i32 4
  %88 = load %struct.TYPE_2__*, %struct.TYPE_2__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = call i32 (i32, i8*, ...) @dev_warn(i32 %90, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.6, i64 0, i64 0))
  %92 = load i32, i32* @BT_STATE_RESET1, align 4
  %93 = load %struct.si_sm_data*, %struct.si_sm_data** %5, align 8
  %94 = getelementptr inbounds %struct.si_sm_data, %struct.si_sm_data* %93, i32 0, i32 3
  store i32 %92, i32* %94, align 4
  %95 = load i32, i32* @SI_SM_CALL_WITHOUT_DELAY, align 4
  store i32 %95, i32* %4, align 4
  br label %122

96:                                               ; preds = %73
  br label %97

97:                                               ; preds = %96, %66
  %98 = load i32, i32* @BT_STATE_IDLE, align 4
  %99 = load %struct.si_sm_data*, %struct.si_sm_data** %5, align 8
  %100 = getelementptr inbounds %struct.si_sm_data, %struct.si_sm_data* %99, i32 0, i32 3
  store i32 %98, i32* %100, align 4
  %101 = load i8, i8* %7, align 1
  %102 = zext i8 %101 to i32
  switch i32 %102, label %116 [
    i32 128, label %103
  ]

103:                                              ; preds = %97
  %104 = load i8, i8* %6, align 1
  %105 = zext i8 %104 to i32
  %106 = load i8, i8* @BT_B_BUSY, align 1
  %107 = zext i8 %106 to i32
  %108 = and i32 %105, %107
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %115

110:                                              ; preds = %103
  %111 = load i8, i8* @IPMI_NODE_BUSY_ERR, align 1
  store i8 %111, i8* %7, align 1
  %112 = load i32, i32* @BT_STATE_LONG_BUSY, align 4
  %113 = load %struct.si_sm_data*, %struct.si_sm_data** %5, align 8
  %114 = getelementptr inbounds %struct.si_sm_data, %struct.si_sm_data* %113, i32 0, i32 3
  store i32 %112, i32* %114, align 4
  br label %115

115:                                              ; preds = %110, %103
  br label %117

116:                                              ; preds = %97
  br label %117

117:                                              ; preds = %116, %115
  %118 = load %struct.si_sm_data*, %struct.si_sm_data** %5, align 8
  %119 = load i8, i8* %7, align 1
  %120 = call i32 @force_result(%struct.si_sm_data* %118, i8 zeroext %119)
  %121 = load i32, i32* @SI_SM_TRANSACTION_COMPLETE, align 4
  store i32 %121, i32* %4, align 4
  br label %122

122:                                              ; preds = %117, %85, %39
  %123 = load i32, i32* %4, align 4
  ret i32 %123
}

declare dso_local i32 @dev_warn(i32, i8*, ...) #1

declare dso_local i32 @pr_cont(i8*, i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @force_result(%struct.si_sm_data*, i8 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
