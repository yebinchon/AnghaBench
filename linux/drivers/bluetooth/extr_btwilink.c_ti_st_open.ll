; ModuleID = '/home/carl/AnghaBench/linux/drivers/bluetooth/extr_btwilink.c_ti_st_open.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/bluetooth/extr_btwilink.c_ti_st_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32*, i32, i32, i32, %struct.ti_st* }
%struct.ti_st = type { i32, i32*, i32 }
%struct.hci_dev = type { i32 }

@.str = private unnamed_addr constant [6 x i8] c"%s %p\00", align 1
@MAX_BT_CHNL_IDS = common dso_local global i32 0, align 4
@ti_st_proto = common dso_local global %struct.TYPE_4__* null, align 8
@HCI_MAX_FRAME_SIZE = common dso_local global i32 0, align 4
@st_receive = common dso_local global i32 0, align 4
@st_reg_completion_cb = common dso_local global i32 0, align 4
@EINPROGRESS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [22 x i8] c"st_register failed %d\00", align 1
@.str.2 = private unnamed_addr constant [51 x i8] c"waiting for registration completion signal from ST\00", align 1
@BT_REGISTER_TIMEOUT = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [57 x i8] c"Timeout(%d sec),didn't get reg completion signal from ST\00", align 1
@ETIMEDOUT = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [49 x i8] c"ST registration completed with invalid status %d\00", align 1
@EAGAIN = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [28 x i8] c"undefined ST write function\00", align 1
@.str.6 = private unnamed_addr constant [37 x i8] c"st_unregister() failed with error %d\00", align 1
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hci_dev*)* @ti_st_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ti_st_open(%struct.hci_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.hci_dev*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.ti_st*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.hci_dev* %0, %struct.hci_dev** %3, align 8
  %8 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %9 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %12 = call i32 (i8*, ...) @BT_DBG(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 %10, %struct.hci_dev* %11)
  %13 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %14 = call %struct.ti_st* @hci_get_drvdata(%struct.hci_dev* %13)
  store %struct.ti_st* %14, %struct.ti_st** %5, align 8
  store i32 0, i32* %7, align 4
  br label %15

15:                                               ; preds = %136, %1
  %16 = load i32, i32* %7, align 4
  %17 = load i32, i32* @MAX_BT_CHNL_IDS, align 4
  %18 = icmp slt i32 %16, %17
  br i1 %18, label %19, label %139

19:                                               ; preds = %15
  %20 = load %struct.ti_st*, %struct.ti_st** %5, align 8
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** @ti_st_proto, align 8
  %22 = load i32, i32* %7, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i64 %23
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 4
  store %struct.ti_st* %20, %struct.ti_st** %25, align 8
  %26 = load i32, i32* @HCI_MAX_FRAME_SIZE, align 4
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** @ti_st_proto, align 8
  %28 = load i32, i32* %7, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i64 %29
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 3
  store i32 %26, i32* %31, align 8
  %32 = load i32, i32* @st_receive, align 4
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** @ti_st_proto, align 8
  %34 = load i32, i32* %7, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i64 %35
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 2
  store i32 %32, i32* %37, align 4
  %38 = load i32, i32* @st_reg_completion_cb, align 4
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** @ti_st_proto, align 8
  %40 = load i32, i32* %7, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i64 %41
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 1
  store i32 %38, i32* %43, align 8
  %44 = load %struct.ti_st*, %struct.ti_st** %5, align 8
  %45 = getelementptr inbounds %struct.ti_st, %struct.ti_st* %44, i32 0, i32 2
  %46 = call i32 @init_completion(i32* %45)
  %47 = load i32, i32* @EINPROGRESS, align 4
  %48 = sub nsw i32 0, %47
  %49 = load %struct.ti_st*, %struct.ti_st** %5, align 8
  %50 = getelementptr inbounds %struct.ti_st, %struct.ti_st* %49, i32 0, i32 0
  store i32 %48, i32* %50, align 8
  %51 = load %struct.TYPE_4__*, %struct.TYPE_4__** @ti_st_proto, align 8
  %52 = load i32, i32* %7, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i64 %53
  %55 = call i32 @st_register(%struct.TYPE_4__* %54)
  store i32 %55, i32* %6, align 4
  %56 = load i32, i32* %6, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %59, label %58

58:                                               ; preds = %19
  br label %96

59:                                               ; preds = %19
  %60 = load i32, i32* %6, align 4
  %61 = load i32, i32* @EINPROGRESS, align 4
  %62 = sub nsw i32 0, %61
  %63 = icmp ne i32 %60, %62
  br i1 %63, label %64, label %68

64:                                               ; preds = %59
  %65 = load i32, i32* %6, align 4
  %66 = call i32 (i8*, ...) @BT_ERR(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i32 %65)
  %67 = load i32, i32* %6, align 4
  store i32 %67, i32* %2, align 4
  br label %140

68:                                               ; preds = %59
  %69 = call i32 (i8*, ...) @BT_DBG(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.2, i64 0, i64 0))
  %70 = load %struct.ti_st*, %struct.ti_st** %5, align 8
  %71 = getelementptr inbounds %struct.ti_st, %struct.ti_st* %70, i32 0, i32 2
  %72 = load i32, i32* @BT_REGISTER_TIMEOUT, align 4
  %73 = call i32 @msecs_to_jiffies(i32 %72)
  %74 = call i64 @wait_for_completion_timeout(i32* %71, i32 %73)
  store i64 %74, i64* %4, align 8
  %75 = load i64, i64* %4, align 8
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %83, label %77

77:                                               ; preds = %68
  %78 = load i32, i32* @BT_REGISTER_TIMEOUT, align 4
  %79 = sdiv i32 %78, 1000
  %80 = call i32 (i8*, ...) @BT_ERR(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.3, i64 0, i64 0), i32 %79)
  %81 = load i32, i32* @ETIMEDOUT, align 4
  %82 = sub nsw i32 0, %81
  store i32 %82, i32* %2, align 4
  br label %140

83:                                               ; preds = %68
  %84 = load %struct.ti_st*, %struct.ti_st** %5, align 8
  %85 = getelementptr inbounds %struct.ti_st, %struct.ti_st* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %95

88:                                               ; preds = %83
  %89 = load %struct.ti_st*, %struct.ti_st** %5, align 8
  %90 = getelementptr inbounds %struct.ti_st, %struct.ti_st* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = call i32 (i8*, ...) @BT_ERR(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.4, i64 0, i64 0), i32 %91)
  %93 = load i32, i32* @EAGAIN, align 4
  %94 = sub nsw i32 0, %93
  store i32 %94, i32* %2, align 4
  br label %140

95:                                               ; preds = %83
  br label %96

96:                                               ; preds = %95, %58
  %97 = load %struct.TYPE_4__*, %struct.TYPE_4__** @ti_st_proto, align 8
  %98 = load i32, i32* %7, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %97, i64 %99
  %101 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %100, i32 0, i32 0
  %102 = load i32*, i32** %101, align 8
  %103 = load %struct.ti_st*, %struct.ti_st** %5, align 8
  %104 = getelementptr inbounds %struct.ti_st, %struct.ti_st* %103, i32 0, i32 1
  store i32* %102, i32** %104, align 8
  %105 = load %struct.ti_st*, %struct.ti_st** %5, align 8
  %106 = getelementptr inbounds %struct.ti_st, %struct.ti_st* %105, i32 0, i32 1
  %107 = load i32*, i32** %106, align 8
  %108 = icmp ne i32* %107, null
  br i1 %108, label %135, label %109

109:                                              ; preds = %96
  %110 = call i32 (i8*, ...) @BT_ERR(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.5, i64 0, i64 0))
  store i32 0, i32* %7, align 4
  br label %111

111:                                              ; preds = %129, %109
  %112 = load i32, i32* %7, align 4
  %113 = load i32, i32* @MAX_BT_CHNL_IDS, align 4
  %114 = icmp slt i32 %112, %113
  br i1 %114, label %115, label %132

115:                                              ; preds = %111
  %116 = load %struct.TYPE_4__*, %struct.TYPE_4__** @ti_st_proto, align 8
  %117 = load i32, i32* %7, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %116, i64 %118
  %120 = call i32 @st_unregister(%struct.TYPE_4__* %119)
  store i32 %120, i32* %6, align 4
  %121 = load i32, i32* %6, align 4
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %126

123:                                              ; preds = %115
  %124 = load i32, i32* %6, align 4
  %125 = call i32 (i8*, ...) @BT_ERR(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.6, i64 0, i64 0), i32 %124)
  br label %126

126:                                              ; preds = %123, %115
  %127 = load %struct.ti_st*, %struct.ti_st** %5, align 8
  %128 = getelementptr inbounds %struct.ti_st, %struct.ti_st* %127, i32 0, i32 1
  store i32* null, i32** %128, align 8
  br label %129

129:                                              ; preds = %126
  %130 = load i32, i32* %7, align 4
  %131 = add nsw i32 %130, 1
  store i32 %131, i32* %7, align 4
  br label %111

132:                                              ; preds = %111
  %133 = load i32, i32* @EIO, align 4
  %134 = sub nsw i32 0, %133
  store i32 %134, i32* %2, align 4
  br label %140

135:                                              ; preds = %96
  br label %136

136:                                              ; preds = %135
  %137 = load i32, i32* %7, align 4
  %138 = add nsw i32 %137, 1
  store i32 %138, i32* %7, align 4
  br label %15

139:                                              ; preds = %15
  store i32 0, i32* %2, align 4
  br label %140

140:                                              ; preds = %139, %132, %88, %77, %64
  %141 = load i32, i32* %2, align 4
  ret i32 %141
}

declare dso_local i32 @BT_DBG(i8*, ...) #1

declare dso_local %struct.ti_st* @hci_get_drvdata(%struct.hci_dev*) #1

declare dso_local i32 @init_completion(i32*) #1

declare dso_local i32 @st_register(%struct.TYPE_4__*) #1

declare dso_local i32 @BT_ERR(i8*, ...) #1

declare dso_local i64 @wait_for_completion_timeout(i32*, i32) #1

declare dso_local i32 @msecs_to_jiffies(i32) #1

declare dso_local i32 @st_unregister(%struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
