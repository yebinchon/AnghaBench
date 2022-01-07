; ModuleID = '/home/carl/AnghaBench/linux/drivers/char/ipmi/extr_ipmi_bt_sm.c_bt_start_transaction.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/char/ipmi/extr_ipmi_bt_sm.c_bt_start_transaction.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.si_sm_data = type { i64, i32*, i32, i32, i32, i64, i64, i64, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@IPMI_REQ_LEN_INVALID_ERR = common dso_local global i32 0, align 4
@IPMI_MAX_MSG_LENGTH = common dso_local global i32 0, align 4
@IPMI_REQ_LEN_EXCEEDED_ERR = common dso_local global i32 0, align 4
@BT_STATE_LONG_BUSY = common dso_local global i64 0, align 8
@IPMI_NODE_BUSY_ERR = common dso_local global i32 0, align 4
@BT_STATE_IDLE = common dso_local global i64 0, align 8
@IPMI_NOT_IN_MY_STATE_ERR = common dso_local global i32 0, align 4
@bt_debug = common dso_local global i32 0, align 4
@BT_DEBUG_MSG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"+++++++++++++++++ New command\0A\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"NetFn/LUN CMD [%d data]:\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c" %02x\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@BT_STATE_XACTION_START = common dso_local global i64 0, align 8
@IPMI_ERR_UNSPECIFIED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.si_sm_data*, i8*, i32)* @bt_start_transaction to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bt_start_transaction(%struct.si_sm_data* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.si_sm_data*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.si_sm_data* %0, %struct.si_sm_data** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load i32, i32* %7, align 4
  %10 = icmp ult i32 %9, 2
  br i1 %10, label %11, label %13

11:                                               ; preds = %3
  %12 = load i32, i32* @IPMI_REQ_LEN_INVALID_ERR, align 4
  store i32 %12, i32* %4, align 4
  br label %125

13:                                               ; preds = %3
  %14 = load i32, i32* %7, align 4
  %15 = load i32, i32* @IPMI_MAX_MSG_LENGTH, align 4
  %16 = icmp ugt i32 %14, %15
  br i1 %16, label %17, label %19

17:                                               ; preds = %13
  %18 = load i32, i32* @IPMI_REQ_LEN_EXCEEDED_ERR, align 4
  store i32 %18, i32* %4, align 4
  br label %125

19:                                               ; preds = %13
  %20 = load %struct.si_sm_data*, %struct.si_sm_data** %5, align 8
  %21 = getelementptr inbounds %struct.si_sm_data, %struct.si_sm_data* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @BT_STATE_LONG_BUSY, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %27

25:                                               ; preds = %19
  %26 = load i32, i32* @IPMI_NODE_BUSY_ERR, align 4
  store i32 %26, i32* %4, align 4
  br label %125

27:                                               ; preds = %19
  %28 = load %struct.si_sm_data*, %struct.si_sm_data** %5, align 8
  %29 = getelementptr inbounds %struct.si_sm_data, %struct.si_sm_data* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @BT_STATE_IDLE, align 8
  %32 = icmp ne i64 %30, %31
  br i1 %32, label %33, label %35

33:                                               ; preds = %27
  %34 = load i32, i32* @IPMI_NOT_IN_MY_STATE_ERR, align 4
  store i32 %34, i32* %4, align 4
  br label %125

35:                                               ; preds = %27
  %36 = load i32, i32* @bt_debug, align 4
  %37 = load i32, i32* @BT_DEBUG_MSG, align 4
  %38 = and i32 %36, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %72

40:                                               ; preds = %35
  %41 = load %struct.si_sm_data*, %struct.si_sm_data** %5, align 8
  %42 = getelementptr inbounds %struct.si_sm_data, %struct.si_sm_data* %41, i32 0, i32 9
  %43 = load %struct.TYPE_2__*, %struct.TYPE_2__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call i32 (i32, i8*, ...) @dev_dbg(i32 %45, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %47 = load %struct.si_sm_data*, %struct.si_sm_data** %5, align 8
  %48 = getelementptr inbounds %struct.si_sm_data, %struct.si_sm_data* %47, i32 0, i32 9
  %49 = load %struct.TYPE_2__*, %struct.TYPE_2__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* %7, align 4
  %53 = sub i32 %52, 2
  %54 = call i32 (i32, i8*, ...) @dev_dbg(i32 %51, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 %53)
  store i32 0, i32* %8, align 4
  br label %55

55:                                               ; preds = %67, %40
  %56 = load i32, i32* %8, align 4
  %57 = load i32, i32* %7, align 4
  %58 = icmp ult i32 %56, %57
  br i1 %58, label %59, label %70

59:                                               ; preds = %55
  %60 = load i8*, i8** %6, align 8
  %61 = load i32, i32* %8, align 4
  %62 = zext i32 %61 to i64
  %63 = getelementptr inbounds i8, i8* %60, i64 %62
  %64 = load i8, i8* %63, align 1
  %65 = zext i8 %64 to i32
  %66 = call i32 (i8*, ...) @pr_cont(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i32 %65)
  br label %67

67:                                               ; preds = %59
  %68 = load i32, i32* %8, align 4
  %69 = add i32 %68, 1
  store i32 %69, i32* %8, align 4
  br label %55

70:                                               ; preds = %55
  %71 = call i32 (i8*, ...) @pr_cont(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  br label %72

72:                                               ; preds = %70, %35
  %73 = load i32, i32* %7, align 4
  %74 = add i32 %73, 1
  %75 = load %struct.si_sm_data*, %struct.si_sm_data** %5, align 8
  %76 = getelementptr inbounds %struct.si_sm_data, %struct.si_sm_data* %75, i32 0, i32 1
  %77 = load i32*, i32** %76, align 8
  %78 = getelementptr inbounds i32, i32* %77, i64 0
  store i32 %74, i32* %78, align 4
  %79 = load i8*, i8** %6, align 8
  %80 = load i8, i8* %79, align 1
  %81 = zext i8 %80 to i32
  %82 = load %struct.si_sm_data*, %struct.si_sm_data** %5, align 8
  %83 = getelementptr inbounds %struct.si_sm_data, %struct.si_sm_data* %82, i32 0, i32 1
  %84 = load i32*, i32** %83, align 8
  %85 = getelementptr inbounds i32, i32* %84, i64 1
  store i32 %81, i32* %85, align 4
  %86 = load %struct.si_sm_data*, %struct.si_sm_data** %5, align 8
  %87 = getelementptr inbounds %struct.si_sm_data, %struct.si_sm_data* %86, i32 0, i32 8
  %88 = load i32, i32* %87, align 8
  %89 = add nsw i32 %88, 1
  store i32 %89, i32* %87, align 8
  %90 = load %struct.si_sm_data*, %struct.si_sm_data** %5, align 8
  %91 = getelementptr inbounds %struct.si_sm_data, %struct.si_sm_data* %90, i32 0, i32 1
  %92 = load i32*, i32** %91, align 8
  %93 = getelementptr inbounds i32, i32* %92, i64 2
  store i32 %88, i32* %93, align 4
  %94 = load %struct.si_sm_data*, %struct.si_sm_data** %5, align 8
  %95 = getelementptr inbounds %struct.si_sm_data, %struct.si_sm_data* %94, i32 0, i32 1
  %96 = load i32*, i32** %95, align 8
  %97 = getelementptr inbounds i32, i32* %96, i64 3
  %98 = bitcast i32* %97 to i8*
  %99 = load i8*, i8** %6, align 8
  %100 = getelementptr inbounds i8, i8* %99, i64 1
  %101 = load i32, i32* %7, align 4
  %102 = sub i32 %101, 1
  %103 = call i32 @memcpy(i8* %98, i8* %100, i32 %102)
  %104 = load i32, i32* %7, align 4
  %105 = add i32 %104, 2
  %106 = load %struct.si_sm_data*, %struct.si_sm_data** %5, align 8
  %107 = getelementptr inbounds %struct.si_sm_data, %struct.si_sm_data* %106, i32 0, i32 2
  store i32 %105, i32* %107, align 8
  %108 = load %struct.si_sm_data*, %struct.si_sm_data** %5, align 8
  %109 = getelementptr inbounds %struct.si_sm_data, %struct.si_sm_data* %108, i32 0, i32 7
  store i64 0, i64* %109, align 8
  %110 = load %struct.si_sm_data*, %struct.si_sm_data** %5, align 8
  %111 = getelementptr inbounds %struct.si_sm_data, %struct.si_sm_data* %110, i32 0, i32 6
  store i64 0, i64* %111, align 8
  %112 = load %struct.si_sm_data*, %struct.si_sm_data** %5, align 8
  %113 = getelementptr inbounds %struct.si_sm_data, %struct.si_sm_data* %112, i32 0, i32 5
  store i64 0, i64* %113, align 8
  %114 = load i64, i64* @BT_STATE_XACTION_START, align 8
  %115 = load %struct.si_sm_data*, %struct.si_sm_data** %5, align 8
  %116 = getelementptr inbounds %struct.si_sm_data, %struct.si_sm_data* %115, i32 0, i32 0
  store i64 %114, i64* %116, align 8
  %117 = load %struct.si_sm_data*, %struct.si_sm_data** %5, align 8
  %118 = getelementptr inbounds %struct.si_sm_data, %struct.si_sm_data* %117, i32 0, i32 3
  %119 = load i32, i32* %118, align 4
  %120 = load %struct.si_sm_data*, %struct.si_sm_data** %5, align 8
  %121 = getelementptr inbounds %struct.si_sm_data, %struct.si_sm_data* %120, i32 0, i32 4
  store i32 %119, i32* %121, align 8
  %122 = load %struct.si_sm_data*, %struct.si_sm_data** %5, align 8
  %123 = load i32, i32* @IPMI_ERR_UNSPECIFIED, align 4
  %124 = call i32 @force_result(%struct.si_sm_data* %122, i32 %123)
  store i32 0, i32* %4, align 4
  br label %125

125:                                              ; preds = %72, %33, %25, %17, %11
  %126 = load i32, i32* %4, align 4
  ret i32 %126
}

declare dso_local i32 @dev_dbg(i32, i8*, ...) #1

declare dso_local i32 @pr_cont(i8*, ...) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @force_result(%struct.si_sm_data*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
