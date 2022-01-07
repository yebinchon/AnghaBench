; ModuleID = '/home/carl/AnghaBench/linux/drivers/char/ipmi/extr_ipmi_bt_sm.c_bt_detect.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/char/ipmi/extr_ipmi_bt_sm.c_bt_detect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.si_sm_data = type { i8, i8, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@__const.bt_detect.GetBT_CAP = private unnamed_addr constant [2 x i8] c"\186", align 1
@BT_STATUS = common dso_local global i32 0, align 4
@BT_INTMASK_R = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"Can't start capabilities transaction: %d\0A\00", align 1
@SI_SM_CALL_WITHOUT_DELAY = common dso_local global i32 0, align 4
@SI_SM_CALL_WITH_DELAY = common dso_local global i32 0, align 4
@SI_SM_CALL_WITH_TICK_DELAY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"bt cap response too short: %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [27 x i8] c"Error fetching bt cap: %x\0A\00", align 1
@.str.3 = private unnamed_addr constant [22 x i8] c"using default values\0A\00", align 1
@USEC_PER_SEC = common dso_local global i8 0, align 1
@.str.4 = private unnamed_addr constant [29 x i8] c"req2rsp=%ld secs retries=%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.si_sm_data*)* @bt_detect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bt_detect(%struct.si_sm_data* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.si_sm_data*, align 8
  %4 = alloca [2 x i8], align 1
  %5 = alloca [8 x i8], align 1
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.si_sm_data* %0, %struct.si_sm_data** %3, align 8
  %8 = bitcast [2 x i8]* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %8, i8* align 1 getelementptr inbounds ([2 x i8], [2 x i8]* @__const.bt_detect.GetBT_CAP, i32 0, i32 0), i64 2, i1 false)
  %9 = load i32, i32* @BT_STATUS, align 4
  %10 = icmp eq i32 %9, 255
  br i1 %10, label %11, label %15

11:                                               ; preds = %1
  %12 = load i32, i32* @BT_INTMASK_R, align 4
  %13 = icmp eq i32 %12, 255
  br i1 %13, label %14, label %15

14:                                               ; preds = %11
  store i32 1, i32* %2, align 4
  br label %128

15:                                               ; preds = %11, %1
  %16 = load %struct.si_sm_data*, %struct.si_sm_data** %3, align 8
  %17 = call i32 @reset_flags(%struct.si_sm_data* %16)
  %18 = load %struct.si_sm_data*, %struct.si_sm_data** %3, align 8
  %19 = getelementptr inbounds [2 x i8], [2 x i8]* %4, i64 0, i64 0
  %20 = call i32 @bt_start_transaction(%struct.si_sm_data* %18, i8* %19, i32 2)
  store i32 %20, i32* %7, align 4
  %21 = load i32, i32* %7, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %31

23:                                               ; preds = %15
  %24 = load %struct.si_sm_data*, %struct.si_sm_data** %3, align 8
  %25 = getelementptr inbounds %struct.si_sm_data, %struct.si_sm_data* %24, i32 0, i32 2
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* %7, align 4
  %30 = call i32 (i32, i8*, ...) @dev_warn(i32 %28, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i32 %29)
  br label %89

31:                                               ; preds = %15
  %32 = load i32, i32* @SI_SM_CALL_WITHOUT_DELAY, align 4
  store i32 %32, i32* %6, align 4
  br label %33

33:                                               ; preds = %55, %31
  %34 = load i32, i32* %6, align 4
  %35 = load i32, i32* @SI_SM_CALL_WITH_DELAY, align 4
  %36 = icmp eq i32 %34, %35
  br i1 %36, label %41, label %37

37:                                               ; preds = %33
  %38 = load i32, i32* %6, align 4
  %39 = load i32, i32* @SI_SM_CALL_WITH_TICK_DELAY, align 4
  %40 = icmp eq i32 %38, %39
  br i1 %40, label %41, label %46

41:                                               ; preds = %37, %33
  %42 = call i32 @schedule_timeout_uninterruptible(i32 1)
  %43 = load %struct.si_sm_data*, %struct.si_sm_data** %3, align 8
  %44 = call i32 @jiffies_to_usecs(i32 1)
  %45 = call i32 @bt_event(%struct.si_sm_data* %43, i32 %44)
  store i32 %45, i32* %6, align 4
  br label %55

46:                                               ; preds = %37
  %47 = load i32, i32* %6, align 4
  %48 = load i32, i32* @SI_SM_CALL_WITHOUT_DELAY, align 4
  %49 = icmp eq i32 %47, %48
  br i1 %49, label %50, label %53

50:                                               ; preds = %46
  %51 = load %struct.si_sm_data*, %struct.si_sm_data** %3, align 8
  %52 = call i32 @bt_event(%struct.si_sm_data* %51, i32 0)
  store i32 %52, i32* %6, align 4
  br label %54

53:                                               ; preds = %46
  br label %56

54:                                               ; preds = %50
  br label %55

55:                                               ; preds = %54, %41
  br label %33

56:                                               ; preds = %53
  %57 = load %struct.si_sm_data*, %struct.si_sm_data** %3, align 8
  %58 = getelementptr inbounds [8 x i8], [8 x i8]* %5, i64 0, i64 0
  %59 = call i32 @bt_get_result(%struct.si_sm_data* %57, i8* %58, i32 8)
  store i32 %59, i32* %7, align 4
  %60 = load %struct.si_sm_data*, %struct.si_sm_data** %3, align 8
  %61 = load %struct.si_sm_data*, %struct.si_sm_data** %3, align 8
  %62 = getelementptr inbounds %struct.si_sm_data, %struct.si_sm_data* %61, i32 0, i32 2
  %63 = load %struct.TYPE_2__*, %struct.TYPE_2__** %62, align 8
  %64 = call i32 @bt_init_data(%struct.si_sm_data* %60, %struct.TYPE_2__* %63)
  %65 = load i32, i32* %7, align 4
  %66 = icmp slt i32 %65, 8
  br i1 %66, label %67, label %75

67:                                               ; preds = %56
  %68 = load %struct.si_sm_data*, %struct.si_sm_data** %3, align 8
  %69 = getelementptr inbounds %struct.si_sm_data, %struct.si_sm_data* %68, i32 0, i32 2
  %70 = load %struct.TYPE_2__*, %struct.TYPE_2__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = load i32, i32* %7, align 4
  %74 = call i32 (i32, i8*, ...) @dev_warn(i32 %72, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i32 %73)
  br label %89

75:                                               ; preds = %56
  %76 = getelementptr inbounds [8 x i8], [8 x i8]* %5, i64 0, i64 2
  %77 = load i8, i8* %76, align 1
  %78 = icmp ne i8 %77, 0
  br i1 %78, label %79, label %96

79:                                               ; preds = %75
  %80 = load %struct.si_sm_data*, %struct.si_sm_data** %3, align 8
  %81 = getelementptr inbounds %struct.si_sm_data, %struct.si_sm_data* %80, i32 0, i32 2
  %82 = load %struct.TYPE_2__*, %struct.TYPE_2__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = getelementptr inbounds [8 x i8], [8 x i8]* %5, i64 0, i64 2
  %86 = load i8, i8* %85, align 1
  %87 = zext i8 %86 to i32
  %88 = call i32 (i32, i8*, ...) @dev_warn(i32 %84, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0), i32 %87)
  br label %89

89:                                               ; preds = %79, %67, %23
  %90 = load %struct.si_sm_data*, %struct.si_sm_data** %3, align 8
  %91 = getelementptr inbounds %struct.si_sm_data, %struct.si_sm_data* %90, i32 0, i32 2
  %92 = load %struct.TYPE_2__*, %struct.TYPE_2__** %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = call i32 (i32, i8*, ...) @dev_warn(i32 %94, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0))
  br label %110

96:                                               ; preds = %75
  %97 = getelementptr inbounds [8 x i8], [8 x i8]* %5, i64 0, i64 6
  %98 = load i8, i8* %97, align 1
  %99 = zext i8 %98 to i32
  %100 = load i8, i8* @USEC_PER_SEC, align 1
  %101 = zext i8 %100 to i32
  %102 = mul nsw i32 %99, %101
  %103 = trunc i32 %102 to i8
  %104 = load %struct.si_sm_data*, %struct.si_sm_data** %3, align 8
  %105 = getelementptr inbounds %struct.si_sm_data, %struct.si_sm_data* %104, i32 0, i32 0
  store i8 %103, i8* %105, align 8
  %106 = getelementptr inbounds [8 x i8], [8 x i8]* %5, i64 0, i64 7
  %107 = load i8, i8* %106, align 1
  %108 = load %struct.si_sm_data*, %struct.si_sm_data** %3, align 8
  %109 = getelementptr inbounds %struct.si_sm_data, %struct.si_sm_data* %108, i32 0, i32 1
  store i8 %107, i8* %109, align 1
  br label %110

110:                                              ; preds = %96, %89
  %111 = load %struct.si_sm_data*, %struct.si_sm_data** %3, align 8
  %112 = getelementptr inbounds %struct.si_sm_data, %struct.si_sm_data* %111, i32 0, i32 2
  %113 = load %struct.TYPE_2__*, %struct.TYPE_2__** %112, align 8
  %114 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 4
  %116 = load %struct.si_sm_data*, %struct.si_sm_data** %3, align 8
  %117 = getelementptr inbounds %struct.si_sm_data, %struct.si_sm_data* %116, i32 0, i32 0
  %118 = load i8, i8* %117, align 8
  %119 = zext i8 %118 to i32
  %120 = load i8, i8* @USEC_PER_SEC, align 1
  %121 = zext i8 %120 to i32
  %122 = sdiv i32 %119, %121
  %123 = trunc i32 %122 to i8
  %124 = load %struct.si_sm_data*, %struct.si_sm_data** %3, align 8
  %125 = getelementptr inbounds %struct.si_sm_data, %struct.si_sm_data* %124, i32 0, i32 1
  %126 = load i8, i8* %125, align 1
  %127 = call i32 @dev_info(i32 %115, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i64 0, i64 0), i8 zeroext %123, i8 zeroext %126)
  store i32 0, i32* %2, align 4
  br label %128

128:                                              ; preds = %110, %14
  %129 = load i32, i32* %2, align 4
  ret i32 %129
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @reset_flags(%struct.si_sm_data*) #2

declare dso_local i32 @bt_start_transaction(%struct.si_sm_data*, i8*, i32) #2

declare dso_local i32 @dev_warn(i32, i8*, ...) #2

declare dso_local i32 @schedule_timeout_uninterruptible(i32) #2

declare dso_local i32 @bt_event(%struct.si_sm_data*, i32) #2

declare dso_local i32 @jiffies_to_usecs(i32) #2

declare dso_local i32 @bt_get_result(%struct.si_sm_data*, i8*, i32) #2

declare dso_local i32 @bt_init_data(%struct.si_sm_data*, %struct.TYPE_2__*) #2

declare dso_local i32 @dev_info(i32, i8*, i8 zeroext, i8 zeroext) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
