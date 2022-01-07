; ModuleID = '/home/carl/AnghaBench/linux/drivers/char/ipmi/extr_ipmi_bt_sm.c_bt_get_result.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/char/ipmi/extr_ipmi_bt_sm.c_bt_get_result.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.si_sm_data = type { i32, i8*, %struct.TYPE_2__*, i64 }
%struct.TYPE_2__ = type { i32 }

@IPMI_MAX_MSG_LENGTH = common dso_local global i32 0, align 4
@IPMI_ERR_UNSPECIFIED = common dso_local global i32 0, align 4
@IPMI_ERR_MSG_TRUNCATED = common dso_local global i8 0, align 1
@bt_debug = common dso_local global i32 0, align 4
@BT_DEBUG_MSG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"result %d bytes:\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c" %02x\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.si_sm_data*, i8*, i32)* @bt_get_result to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bt_get_result(%struct.si_sm_data* %0, i8* %1, i32 %2) #0 {
  %4 = alloca %struct.si_sm_data*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.si_sm_data* %0, %struct.si_sm_data** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load %struct.si_sm_data*, %struct.si_sm_data** %4, align 8
  %10 = getelementptr inbounds %struct.si_sm_data, %struct.si_sm_data* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = sub nsw i32 %11, 2
  store i32 %12, i32* %8, align 4
  %13 = load i32, i32* %8, align 4
  %14 = icmp slt i32 %13, 3
  br i1 %14, label %19, label %15

15:                                               ; preds = %3
  %16 = load i32, i32* %8, align 4
  %17 = load i32, i32* @IPMI_MAX_MSG_LENGTH, align 4
  %18 = icmp sgt i32 %16, %17
  br i1 %18, label %19, label %23

19:                                               ; preds = %15, %3
  %20 = load %struct.si_sm_data*, %struct.si_sm_data** %4, align 8
  %21 = load i32, i32* @IPMI_ERR_UNSPECIFIED, align 4
  %22 = call i32 @force_result(%struct.si_sm_data* %20, i32 %21)
  store i32 3, i32* %8, align 4
  br label %23

23:                                               ; preds = %19, %15
  %24 = load %struct.si_sm_data*, %struct.si_sm_data** %4, align 8
  %25 = getelementptr inbounds %struct.si_sm_data, %struct.si_sm_data* %24, i32 0, i32 1
  %26 = load i8*, i8** %25, align 8
  %27 = getelementptr inbounds i8, i8* %26, i64 1
  %28 = load i8, i8* %27, align 1
  %29 = load i8*, i8** %5, align 8
  %30 = getelementptr inbounds i8, i8* %29, i64 0
  store i8 %28, i8* %30, align 1
  %31 = load %struct.si_sm_data*, %struct.si_sm_data** %4, align 8
  %32 = getelementptr inbounds %struct.si_sm_data, %struct.si_sm_data* %31, i32 0, i32 1
  %33 = load i8*, i8** %32, align 8
  %34 = getelementptr inbounds i8, i8* %33, i64 3
  %35 = load i8, i8* %34, align 1
  %36 = load i8*, i8** %5, align 8
  %37 = getelementptr inbounds i8, i8* %36, i64 1
  store i8 %35, i8* %37, align 1
  %38 = load i32, i32* %6, align 4
  %39 = load i32, i32* %8, align 4
  %40 = icmp ult i32 %38, %39
  br i1 %40, label %46, label %41

41:                                               ; preds = %23
  %42 = load %struct.si_sm_data*, %struct.si_sm_data** %4, align 8
  %43 = getelementptr inbounds %struct.si_sm_data, %struct.si_sm_data* %42, i32 0, i32 3
  %44 = load i64, i64* %43, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %50

46:                                               ; preds = %41, %23
  %47 = load i8, i8* @IPMI_ERR_MSG_TRUNCATED, align 1
  %48 = load i8*, i8** %5, align 8
  %49 = getelementptr inbounds i8, i8* %48, i64 2
  store i8 %47, i8* %49, align 1
  store i32 3, i32* %8, align 4
  br label %60

50:                                               ; preds = %41
  %51 = load i8*, i8** %5, align 8
  %52 = getelementptr inbounds i8, i8* %51, i64 2
  %53 = load %struct.si_sm_data*, %struct.si_sm_data** %4, align 8
  %54 = getelementptr inbounds %struct.si_sm_data, %struct.si_sm_data* %53, i32 0, i32 1
  %55 = load i8*, i8** %54, align 8
  %56 = getelementptr inbounds i8, i8* %55, i64 4
  %57 = load i32, i32* %8, align 4
  %58 = sub nsw i32 %57, 2
  %59 = call i32 @memcpy(i8* %52, i8* %56, i32 %58)
  br label %60

60:                                               ; preds = %50, %46
  %61 = load i32, i32* @bt_debug, align 4
  %62 = load i32, i32* @BT_DEBUG_MSG, align 4
  %63 = and i32 %61, %62
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %90

65:                                               ; preds = %60
  %66 = load %struct.si_sm_data*, %struct.si_sm_data** %4, align 8
  %67 = getelementptr inbounds %struct.si_sm_data, %struct.si_sm_data* %66, i32 0, i32 2
  %68 = load %struct.TYPE_2__*, %struct.TYPE_2__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = load i32, i32* %8, align 4
  %72 = call i32 @dev_dbg(i32 %70, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32 %71)
  store i32 0, i32* %7, align 4
  br label %73

73:                                               ; preds = %85, %65
  %74 = load i32, i32* %7, align 4
  %75 = load i32, i32* %8, align 4
  %76 = icmp slt i32 %74, %75
  br i1 %76, label %77, label %88

77:                                               ; preds = %73
  %78 = load i8*, i8** %5, align 8
  %79 = load i32, i32* %7, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds i8, i8* %78, i64 %80
  %82 = load i8, i8* %81, align 1
  %83 = zext i8 %82 to i32
  %84 = call i32 (i8*, ...) @pr_cont(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 %83)
  br label %85

85:                                               ; preds = %77
  %86 = load i32, i32* %7, align 4
  %87 = add nsw i32 %86, 1
  store i32 %87, i32* %7, align 4
  br label %73

88:                                               ; preds = %73
  %89 = call i32 (i8*, ...) @pr_cont(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  br label %90

90:                                               ; preds = %88, %60
  %91 = load i32, i32* %8, align 4
  ret i32 %91
}

declare dso_local i32 @force_result(%struct.si_sm_data*, i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32) #1

declare dso_local i32 @pr_cont(i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
