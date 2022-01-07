; ModuleID = '/home/carl/AnghaBench/linux/drivers/block/extr_skd_main.c_skd_timer_tick_not_online.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/block/extr_skd_main.c_skd_timer_tick_not_online.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.skd_device = type { i32, i32, i32, i32, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [37 x i8] c"drive busy sanitize[%x], driver[%x]\0A\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"busy[%x], countdown=%d\0A\00", align 1
@.str.2 = private unnamed_addr constant [42 x i8] c"busy[%x], timedout=%d, restarting device.\00", align 1
@.str.3 = private unnamed_addr constant [33 x i8] c"DriveFault Connect Timeout (%x)\0A\00", align 1
@.str.4 = private unnamed_addr constant [35 x i8] c"DriveFault Reconnect Timeout (%x)\0A\00", align 1
@FIT_SR_DRIVE_SOFT_RESET = common dso_local global i32 0, align 4
@FIT_SR_DRIVE_FAULT = common dso_local global i32 0, align 4
@FIT_SR_DRIVE_STATE_MASK = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [24 x i8] c"Disable BusMaster (%x)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.skd_device*)* @skd_timer_tick_not_online to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @skd_timer_tick_not_online(%struct.skd_device* %0) #0 {
  %2 = alloca %struct.skd_device*, align 8
  store %struct.skd_device* %0, %struct.skd_device** %2, align 8
  %3 = load %struct.skd_device*, %struct.skd_device** %2, align 8
  %4 = getelementptr inbounds %struct.skd_device, %struct.skd_device* %3, i32 0, i32 0
  %5 = load i32, i32* %4, align 8
  switch i32 %5, label %165 [
    i32 138, label %6
    i32 137, label %6
    i32 141, label %7
    i32 144, label %31
    i32 142, label %31
    i32 143, label %31
    i32 128, label %66
    i32 131, label %66
    i32 136, label %95
    i32 134, label %96
    i32 135, label %96
    i32 133, label %97
    i32 132, label %164
    i32 130, label %164
    i32 129, label %164
    i32 139, label %164
    i32 140, label %164
  ]

6:                                                ; preds = %1, %1
  br label %166

7:                                                ; preds = %1
  %8 = load %struct.skd_device*, %struct.skd_device** %2, align 8
  %9 = getelementptr inbounds %struct.skd_device, %struct.skd_device* %8, i32 0, i32 6
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load %struct.skd_device*, %struct.skd_device** %2, align 8
  %13 = getelementptr inbounds %struct.skd_device, %struct.skd_device* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.skd_device*, %struct.skd_device** %2, align 8
  %16 = getelementptr inbounds %struct.skd_device, %struct.skd_device* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = call i32 @dev_dbg(i32* %11, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %14, i32 %17)
  %19 = load %struct.skd_device*, %struct.skd_device** %2, align 8
  %20 = getelementptr inbounds %struct.skd_device, %struct.skd_device* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 8
  %22 = icmp sgt i32 %21, 0
  br i1 %22, label %23, label %28

23:                                               ; preds = %7
  %24 = load %struct.skd_device*, %struct.skd_device** %2, align 8
  %25 = getelementptr inbounds %struct.skd_device, %struct.skd_device* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 8
  %27 = add nsw i32 %26, -1
  store i32 %27, i32* %25, align 8
  br label %166

28:                                               ; preds = %7
  %29 = load %struct.skd_device*, %struct.skd_device** %2, align 8
  %30 = call i32 @skd_recover_requests(%struct.skd_device* %29)
  br label %166

31:                                               ; preds = %1, %1, %1
  %32 = load %struct.skd_device*, %struct.skd_device** %2, align 8
  %33 = getelementptr inbounds %struct.skd_device, %struct.skd_device* %32, i32 0, i32 6
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = load %struct.skd_device*, %struct.skd_device** %2, align 8
  %37 = getelementptr inbounds %struct.skd_device, %struct.skd_device* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = load %struct.skd_device*, %struct.skd_device** %2, align 8
  %40 = getelementptr inbounds %struct.skd_device, %struct.skd_device* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 8
  %42 = call i32 @dev_dbg(i32* %35, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i32 %38, i32 %41)
  %43 = load %struct.skd_device*, %struct.skd_device** %2, align 8
  %44 = getelementptr inbounds %struct.skd_device, %struct.skd_device* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 8
  %46 = icmp sgt i32 %45, 0
  br i1 %46, label %47, label %52

47:                                               ; preds = %31
  %48 = load %struct.skd_device*, %struct.skd_device** %2, align 8
  %49 = getelementptr inbounds %struct.skd_device, %struct.skd_device* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 8
  %51 = add nsw i32 %50, -1
  store i32 %51, i32* %49, align 8
  br label %166

52:                                               ; preds = %31
  %53 = load %struct.skd_device*, %struct.skd_device** %2, align 8
  %54 = getelementptr inbounds %struct.skd_device, %struct.skd_device* %53, i32 0, i32 6
  %55 = load %struct.TYPE_2__*, %struct.TYPE_2__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 0
  %57 = load %struct.skd_device*, %struct.skd_device** %2, align 8
  %58 = getelementptr inbounds %struct.skd_device, %struct.skd_device* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = load %struct.skd_device*, %struct.skd_device** %2, align 8
  %61 = getelementptr inbounds %struct.skd_device, %struct.skd_device* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 8
  %63 = call i32 @dev_dbg(i32* %56, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.2, i64 0, i64 0), i32 %59, i32 %62)
  %64 = load %struct.skd_device*, %struct.skd_device** %2, align 8
  %65 = call i32 @skd_restart_device(%struct.skd_device* %64)
  br label %166

66:                                               ; preds = %1, %1
  %67 = load %struct.skd_device*, %struct.skd_device** %2, align 8
  %68 = getelementptr inbounds %struct.skd_device, %struct.skd_device* %67, i32 0, i32 2
  %69 = load i32, i32* %68, align 8
  %70 = icmp sgt i32 %69, 0
  br i1 %70, label %71, label %76

71:                                               ; preds = %66
  %72 = load %struct.skd_device*, %struct.skd_device** %2, align 8
  %73 = getelementptr inbounds %struct.skd_device, %struct.skd_device* %72, i32 0, i32 2
  %74 = load i32, i32* %73, align 8
  %75 = add nsw i32 %74, -1
  store i32 %75, i32* %73, align 8
  br label %166

76:                                               ; preds = %66
  %77 = load %struct.skd_device*, %struct.skd_device** %2, align 8
  %78 = getelementptr inbounds %struct.skd_device, %struct.skd_device* %77, i32 0, i32 0
  store i32 139, i32* %78, align 8
  %79 = load %struct.skd_device*, %struct.skd_device** %2, align 8
  %80 = getelementptr inbounds %struct.skd_device, %struct.skd_device* %79, i32 0, i32 6
  %81 = load %struct.TYPE_2__*, %struct.TYPE_2__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %81, i32 0, i32 0
  %83 = load %struct.skd_device*, %struct.skd_device** %2, align 8
  %84 = getelementptr inbounds %struct.skd_device, %struct.skd_device* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = call i32 @dev_err(i32* %82, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0), i32 %85)
  %87 = load %struct.skd_device*, %struct.skd_device** %2, align 8
  %88 = getelementptr inbounds %struct.skd_device, %struct.skd_device* %87, i32 0, i32 5
  %89 = call i32 @schedule_work(i32* %88)
  %90 = load %struct.skd_device*, %struct.skd_device** %2, align 8
  %91 = getelementptr inbounds %struct.skd_device, %struct.skd_device* %90, i32 0, i32 3
  store i32 -1, i32* %91, align 4
  %92 = load %struct.skd_device*, %struct.skd_device** %2, align 8
  %93 = getelementptr inbounds %struct.skd_device, %struct.skd_device* %92, i32 0, i32 4
  %94 = call i32 @wake_up_interruptible(i32* %93)
  br label %166

95:                                               ; preds = %1
  br label %166

96:                                               ; preds = %1, %1
  br label %166

97:                                               ; preds = %1
  %98 = load %struct.skd_device*, %struct.skd_device** %2, align 8
  %99 = getelementptr inbounds %struct.skd_device, %struct.skd_device* %98, i32 0, i32 2
  %100 = load i32, i32* %99, align 8
  %101 = icmp sgt i32 %100, 0
  br i1 %101, label %102, label %107

102:                                              ; preds = %97
  %103 = load %struct.skd_device*, %struct.skd_device** %2, align 8
  %104 = getelementptr inbounds %struct.skd_device, %struct.skd_device* %103, i32 0, i32 2
  %105 = load i32, i32* %104, align 8
  %106 = add nsw i32 %105, -1
  store i32 %106, i32* %104, align 8
  br label %166

107:                                              ; preds = %97
  %108 = load %struct.skd_device*, %struct.skd_device** %2, align 8
  %109 = getelementptr inbounds %struct.skd_device, %struct.skd_device* %108, i32 0, i32 0
  store i32 139, i32* %109, align 8
  %110 = load %struct.skd_device*, %struct.skd_device** %2, align 8
  %111 = getelementptr inbounds %struct.skd_device, %struct.skd_device* %110, i32 0, i32 6
  %112 = load %struct.TYPE_2__*, %struct.TYPE_2__** %111, align 8
  %113 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %112, i32 0, i32 0
  %114 = load %struct.skd_device*, %struct.skd_device** %2, align 8
  %115 = getelementptr inbounds %struct.skd_device, %struct.skd_device* %114, i32 0, i32 1
  %116 = load i32, i32* %115, align 4
  %117 = call i32 @dev_err(i32* %113, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.4, i64 0, i64 0), i32 %116)
  %118 = load %struct.skd_device*, %struct.skd_device** %2, align 8
  %119 = getelementptr inbounds %struct.skd_device, %struct.skd_device* %118, i32 0, i32 1
  %120 = load i32, i32* %119, align 4
  %121 = load i32, i32* @FIT_SR_DRIVE_SOFT_RESET, align 4
  %122 = icmp eq i32 %120, %121
  br i1 %122, label %135, label %123

123:                                              ; preds = %107
  %124 = load %struct.skd_device*, %struct.skd_device** %2, align 8
  %125 = getelementptr inbounds %struct.skd_device, %struct.skd_device* %124, i32 0, i32 1
  %126 = load i32, i32* %125, align 4
  %127 = load i32, i32* @FIT_SR_DRIVE_FAULT, align 4
  %128 = icmp eq i32 %126, %127
  br i1 %128, label %135, label %129

129:                                              ; preds = %123
  %130 = load %struct.skd_device*, %struct.skd_device** %2, align 8
  %131 = getelementptr inbounds %struct.skd_device, %struct.skd_device* %130, i32 0, i32 1
  %132 = load i32, i32* %131, align 4
  %133 = load i32, i32* @FIT_SR_DRIVE_STATE_MASK, align 4
  %134 = icmp eq i32 %132, %133
  br i1 %134, label %135, label %138

135:                                              ; preds = %129, %123, %107
  %136 = load %struct.skd_device*, %struct.skd_device** %2, align 8
  %137 = call i32 @skd_recover_requests(%struct.skd_device* %136)
  br label %155

138:                                              ; preds = %129
  %139 = load %struct.skd_device*, %struct.skd_device** %2, align 8
  %140 = getelementptr inbounds %struct.skd_device, %struct.skd_device* %139, i32 0, i32 6
  %141 = load %struct.TYPE_2__*, %struct.TYPE_2__** %140, align 8
  %142 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %141, i32 0, i32 0
  %143 = load %struct.skd_device*, %struct.skd_device** %2, align 8
  %144 = getelementptr inbounds %struct.skd_device, %struct.skd_device* %143, i32 0, i32 1
  %145 = load i32, i32* %144, align 4
  %146 = call i32 @dev_err(i32* %142, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.5, i64 0, i64 0), i32 %145)
  %147 = load %struct.skd_device*, %struct.skd_device** %2, align 8
  %148 = getelementptr inbounds %struct.skd_device, %struct.skd_device* %147, i32 0, i32 6
  %149 = load %struct.TYPE_2__*, %struct.TYPE_2__** %148, align 8
  %150 = call i32 @pci_disable_device(%struct.TYPE_2__* %149)
  %151 = load %struct.skd_device*, %struct.skd_device** %2, align 8
  %152 = call i32 @skd_disable_interrupts(%struct.skd_device* %151)
  %153 = load %struct.skd_device*, %struct.skd_device** %2, align 8
  %154 = call i32 @skd_recover_requests(%struct.skd_device* %153)
  br label %155

155:                                              ; preds = %138, %135
  %156 = load %struct.skd_device*, %struct.skd_device** %2, align 8
  %157 = getelementptr inbounds %struct.skd_device, %struct.skd_device* %156, i32 0, i32 5
  %158 = call i32 @schedule_work(i32* %157)
  %159 = load %struct.skd_device*, %struct.skd_device** %2, align 8
  %160 = getelementptr inbounds %struct.skd_device, %struct.skd_device* %159, i32 0, i32 3
  store i32 -1, i32* %160, align 4
  %161 = load %struct.skd_device*, %struct.skd_device** %2, align 8
  %162 = getelementptr inbounds %struct.skd_device, %struct.skd_device* %161, i32 0, i32 4
  %163 = call i32 @wake_up_interruptible(i32* %162)
  br label %166

164:                                              ; preds = %1, %1, %1, %1, %1
  br label %165

165:                                              ; preds = %1, %164
  br label %166

166:                                              ; preds = %23, %47, %71, %102, %165, %155, %96, %95, %76, %52, %28, %6
  ret void
}

declare dso_local i32 @dev_dbg(i32*, i8*, i32, i32) #1

declare dso_local i32 @skd_recover_requests(%struct.skd_device*) #1

declare dso_local i32 @skd_restart_device(%struct.skd_device*) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

declare dso_local i32 @schedule_work(i32*) #1

declare dso_local i32 @wake_up_interruptible(i32*) #1

declare dso_local i32 @pci_disable_device(%struct.TYPE_2__*) #1

declare dso_local i32 @skd_disable_interrupts(%struct.skd_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
