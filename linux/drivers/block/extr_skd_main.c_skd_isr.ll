; ModuleID = '/home/carl/AnghaBench/linux/drivers/block/extr_skd_main.c_skd_isr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/block/extr_skd_main.c_skd_isr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.skd_device = type { i64, i32, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@FIT_INT_STATUS_HOST = common dso_local global i32 0, align 4
@FIT_INT_DEF_MASK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"intstat=0x%x ack=0x%x\0A\00", align 1
@SKD_DRVR_STATE_ONLINE = common dso_local global i64 0, align 8
@IRQ_HANDLED = common dso_local global i32 0, align 4
@SKD_DRVR_STATE_LOAD = common dso_local global i64 0, align 8
@SKD_DRVR_STATE_STOPPING = common dso_local global i64 0, align 8
@FIT_ISH_COMPLETION_POSTED = common dso_local global i32 0, align 4
@skd_isr_comp_limit = common dso_local global i32 0, align 4
@FIT_ISH_FW_STATE_CHANGE = common dso_local global i32 0, align 4
@SKD_DRVR_STATE_FAULT = common dso_local global i64 0, align 8
@SKD_DRVR_STATE_DISAPPEARED = common dso_local global i64 0, align 8
@FIT_ISH_MSG_FROM_DEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @skd_isr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @skd_isr(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.skd_device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %12 = load i8*, i8** %5, align 8
  %13 = bitcast i8* %12 to %struct.skd_device*
  store %struct.skd_device* %13, %struct.skd_device** %6, align 8
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  %14 = load %struct.skd_device*, %struct.skd_device** %6, align 8
  %15 = getelementptr inbounds %struct.skd_device, %struct.skd_device* %14, i32 0, i32 1
  %16 = call i32 @spin_lock(i32* %15)
  br label %17

17:                                               ; preds = %118, %2
  %18 = load %struct.skd_device*, %struct.skd_device** %6, align 8
  %19 = load i32, i32* @FIT_INT_STATUS_HOST, align 4
  %20 = call i32 @SKD_READL(%struct.skd_device* %18, i32 %19)
  store i32 %20, i32* %7, align 4
  %21 = load i32, i32* @FIT_INT_DEF_MASK, align 4
  store i32 %21, i32* %8, align 4
  %22 = load i32, i32* %7, align 4
  %23 = load i32, i32* %8, align 4
  %24 = and i32 %23, %22
  store i32 %24, i32* %8, align 4
  %25 = load %struct.skd_device*, %struct.skd_device** %6, align 8
  %26 = getelementptr inbounds %struct.skd_device, %struct.skd_device* %25, i32 0, i32 4
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i32, i32* %7, align 4
  %30 = load i32, i32* %8, align 4
  %31 = call i32 @dev_dbg(i32* %28, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %29, i32 %30)
  %32 = load i32, i32* %8, align 4
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %49

34:                                               ; preds = %17
  %35 = load i32, i32* %9, align 4
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %48

37:                                               ; preds = %34
  %38 = load %struct.skd_device*, %struct.skd_device** %6, align 8
  %39 = getelementptr inbounds %struct.skd_device, %struct.skd_device* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @SKD_DRVR_STATE_ONLINE, align 8
  %42 = icmp eq i64 %40, %41
  %43 = zext i1 %42 to i32
  %44 = call i64 @likely(i32 %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %37
  store i32 1, i32* %10, align 4
  br label %47

47:                                               ; preds = %46, %37
  br label %48

48:                                               ; preds = %47, %34
  br label %119

49:                                               ; preds = %17
  %50 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %50, i32* %9, align 4
  %51 = load %struct.skd_device*, %struct.skd_device** %6, align 8
  %52 = load i32, i32* %8, align 4
  %53 = load i32, i32* @FIT_INT_STATUS_HOST, align 4
  %54 = call i32 @SKD_WRITEL(%struct.skd_device* %51, i32 %52, i32 %53)
  %55 = load %struct.skd_device*, %struct.skd_device** %6, align 8
  %56 = getelementptr inbounds %struct.skd_device, %struct.skd_device* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = load i64, i64* @SKD_DRVR_STATE_LOAD, align 8
  %59 = icmp ne i64 %57, %58
  br i1 %59, label %60, label %66

60:                                               ; preds = %49
  %61 = load %struct.skd_device*, %struct.skd_device** %6, align 8
  %62 = getelementptr inbounds %struct.skd_device, %struct.skd_device* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = load i64, i64* @SKD_DRVR_STATE_STOPPING, align 8
  %65 = icmp ne i64 %63, %64
  br label %66

66:                                               ; preds = %60, %49
  %67 = phi i1 [ false, %49 ], [ %65, %60 ]
  %68 = zext i1 %67 to i32
  %69 = call i64 @likely(i32 %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %118

71:                                               ; preds = %66
  %72 = load i32, i32* %7, align 4
  %73 = load i32, i32* @FIT_ISH_COMPLETION_POSTED, align 4
  %74 = and i32 %72, %73
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %84

76:                                               ; preds = %71
  %77 = load i32, i32* %10, align 4
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %79, label %83

79:                                               ; preds = %76
  %80 = load %struct.skd_device*, %struct.skd_device** %6, align 8
  %81 = load i32, i32* @skd_isr_comp_limit, align 4
  %82 = call i32 @skd_isr_completion_posted(%struct.skd_device* %80, i32 %81, i32* %11)
  store i32 %82, i32* %10, align 4
  br label %83

83:                                               ; preds = %79, %76
  br label %84

84:                                               ; preds = %83, %71
  %85 = load i32, i32* %7, align 4
  %86 = load i32, i32* @FIT_ISH_FW_STATE_CHANGE, align 4
  %87 = and i32 %85, %86
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %109

89:                                               ; preds = %84
  %90 = load %struct.skd_device*, %struct.skd_device** %6, align 8
  %91 = call i32 @skd_isr_fwstate(%struct.skd_device* %90)
  %92 = load %struct.skd_device*, %struct.skd_device** %6, align 8
  %93 = getelementptr inbounds %struct.skd_device, %struct.skd_device* %92, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  %95 = load i64, i64* @SKD_DRVR_STATE_FAULT, align 8
  %96 = icmp eq i64 %94, %95
  br i1 %96, label %103, label %97

97:                                               ; preds = %89
  %98 = load %struct.skd_device*, %struct.skd_device** %6, align 8
  %99 = getelementptr inbounds %struct.skd_device, %struct.skd_device* %98, i32 0, i32 0
  %100 = load i64, i64* %99, align 8
  %101 = load i64, i64* @SKD_DRVR_STATE_DISAPPEARED, align 8
  %102 = icmp eq i64 %100, %101
  br i1 %102, label %103, label %108

103:                                              ; preds = %97, %89
  %104 = load %struct.skd_device*, %struct.skd_device** %6, align 8
  %105 = getelementptr inbounds %struct.skd_device, %struct.skd_device* %104, i32 0, i32 1
  %106 = call i32 @spin_unlock(i32* %105)
  %107 = load i32, i32* %9, align 4
  store i32 %107, i32* %3, align 4
  br label %147

108:                                              ; preds = %97
  br label %109

109:                                              ; preds = %108, %84
  %110 = load i32, i32* %7, align 4
  %111 = load i32, i32* @FIT_ISH_MSG_FROM_DEV, align 4
  %112 = and i32 %110, %111
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %117

114:                                              ; preds = %109
  %115 = load %struct.skd_device*, %struct.skd_device** %6, align 8
  %116 = call i32 @skd_isr_msg_from_dev(%struct.skd_device* %115)
  br label %117

117:                                              ; preds = %114, %109
  br label %118

118:                                              ; preds = %117, %66
  br label %17

119:                                              ; preds = %48
  %120 = load i32, i32* %11, align 4
  %121 = call i64 @unlikely(i32 %120)
  %122 = icmp ne i64 %121, 0
  br i1 %122, label %123, label %127

123:                                              ; preds = %119
  %124 = load %struct.skd_device*, %struct.skd_device** %6, align 8
  %125 = getelementptr inbounds %struct.skd_device, %struct.skd_device* %124, i32 0, i32 2
  %126 = call i32 @schedule_work(i32* %125)
  br label %127

127:                                              ; preds = %123, %119
  %128 = load i32, i32* %10, align 4
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %130, label %134

130:                                              ; preds = %127
  %131 = load %struct.skd_device*, %struct.skd_device** %6, align 8
  %132 = getelementptr inbounds %struct.skd_device, %struct.skd_device* %131, i32 0, i32 3
  %133 = call i32 @schedule_work(i32* %132)
  br label %142

134:                                              ; preds = %127
  %135 = load i32, i32* %11, align 4
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %141, label %137

137:                                              ; preds = %134
  %138 = load %struct.skd_device*, %struct.skd_device** %6, align 8
  %139 = getelementptr inbounds %struct.skd_device, %struct.skd_device* %138, i32 0, i32 2
  %140 = call i32 @schedule_work(i32* %139)
  br label %141

141:                                              ; preds = %137, %134
  br label %142

142:                                              ; preds = %141, %130
  %143 = load %struct.skd_device*, %struct.skd_device** %6, align 8
  %144 = getelementptr inbounds %struct.skd_device, %struct.skd_device* %143, i32 0, i32 1
  %145 = call i32 @spin_unlock(i32* %144)
  %146 = load i32, i32* %9, align 4
  store i32 %146, i32* %3, align 4
  br label %147

147:                                              ; preds = %142, %103
  %148 = load i32, i32* %3, align 4
  ret i32 %148
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @SKD_READL(%struct.skd_device*, i32) #1

declare dso_local i32 @dev_dbg(i32*, i8*, i32, i32) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @SKD_WRITEL(%struct.skd_device*, i32, i32) #1

declare dso_local i32 @skd_isr_completion_posted(%struct.skd_device*, i32, i32*) #1

declare dso_local i32 @skd_isr_fwstate(%struct.skd_device*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @skd_isr_msg_from_dev(%struct.skd_device*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @schedule_work(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
