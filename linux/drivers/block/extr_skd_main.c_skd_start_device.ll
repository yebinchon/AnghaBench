; ModuleID = '/home/carl/AnghaBench/linux/drivers/block/extr_skd_main.c_skd_start_device.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/block/extr_skd_main.c_skd_start_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.skd_device = type { i32, i32, i32, %struct.TYPE_2__*, i32, i32, i8*, i32, i64 }
%struct.TYPE_2__ = type { i32 }

@FIT_INT_DEF_MASK = common dso_local global i32 0, align 4
@FIT_INT_STATUS_HOST = common dso_local global i32 0, align 4
@FIT_STATUS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"initial status=0x%x\0A\00", align 1
@FIT_SR_DRIVE_STATE_MASK = common dso_local global i32 0, align 4
@SKD_DRVR_STATE_STARTING = common dso_local global i32 0, align 4
@SKD_STARTING_TIMO = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [18 x i8] c"Drive offline...\0A\00", align 1
@.str.2 = private unnamed_addr constant [25 x i8] c"FIT_SR_DRIVE_FW_BOOTING\0A\00", align 1
@SKD_DRVR_STATE_WAIT_BOOT = common dso_local global i32 0, align 4
@SKD_WAIT_BOOT_TIMO = common dso_local global i8* null, align 8
@.str.3 = private unnamed_addr constant [22 x i8] c"Start: BUSY_SANITIZE\0A\00", align 1
@SKD_DRVR_STATE_BUSY_SANITIZE = common dso_local global i32 0, align 4
@SKD_STARTED_BUSY_TIMO = common dso_local global i8* null, align 8
@.str.4 = private unnamed_addr constant [19 x i8] c"Start: BUSY_ERASE\0A\00", align 1
@SKD_DRVR_STATE_BUSY_ERASE = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [15 x i8] c"Drive Busy...\0A\00", align 1
@SKD_DRVR_STATE_BUSY = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [26 x i8] c"drive soft reset in prog\0A\00", align 1
@.str.7 = private unnamed_addr constant [16 x i8] c"starting queue\0A\00", align 1
@.str.8 = private unnamed_addr constant [34 x i8] c"starting queue to error-out reqs\0A\00", align 1
@.str.9 = private unnamed_addr constant [25 x i8] c"Start: unknown state %x\0A\00", align 1
@FIT_CONTROL = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [25 x i8] c"FIT Control Status=0x%x\0A\00", align 1
@.str.11 = private unnamed_addr constant [18 x i8] c"Intr Status=0x%x\0A\00", align 1
@FIT_INT_MASK_HOST = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [16 x i8] c"Intr Mask=0x%x\0A\00", align 1
@FIT_MSG_FROM_DEVICE = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [19 x i8] c"Msg from Dev=0x%x\0A\00", align 1
@FIT_HW_VERSION = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [17 x i8] c"HW version=0x%x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.skd_device*)* @skd_start_device to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @skd_start_device(%struct.skd_device* %0) #0 {
  %2 = alloca %struct.skd_device*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.skd_device* %0, %struct.skd_device** %2, align 8
  %6 = load %struct.skd_device*, %struct.skd_device** %2, align 8
  %7 = getelementptr inbounds %struct.skd_device, %struct.skd_device* %6, i32 0, i32 2
  %8 = load i64, i64* %3, align 8
  %9 = call i32 @spin_lock_irqsave(i32* %7, i64 %8)
  %10 = load %struct.skd_device*, %struct.skd_device** %2, align 8
  %11 = load i32, i32* @FIT_INT_DEF_MASK, align 4
  %12 = load i32, i32* @FIT_INT_STATUS_HOST, align 4
  %13 = call i32 @SKD_WRITEL(%struct.skd_device* %10, i32 %11, i32 %12)
  %14 = load %struct.skd_device*, %struct.skd_device** %2, align 8
  %15 = load i32, i32* @FIT_STATUS, align 4
  %16 = call i32 @SKD_READL(%struct.skd_device* %14, i32 %15)
  store i32 %16, i32* %4, align 4
  %17 = load %struct.skd_device*, %struct.skd_device** %2, align 8
  %18 = getelementptr inbounds %struct.skd_device, %struct.skd_device* %17, i32 0, i32 3
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i32, i32* %4, align 4
  %22 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %20, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %21)
  %23 = load i32, i32* %4, align 4
  %24 = load i32, i32* @FIT_SR_DRIVE_STATE_MASK, align 4
  %25 = and i32 %23, %24
  store i32 %25, i32* %5, align 4
  %26 = load i32, i32* %5, align 4
  %27 = load %struct.skd_device*, %struct.skd_device** %2, align 8
  %28 = getelementptr inbounds %struct.skd_device, %struct.skd_device* %27, i32 0, i32 0
  store i32 %26, i32* %28, align 8
  %29 = load %struct.skd_device*, %struct.skd_device** %2, align 8
  %30 = getelementptr inbounds %struct.skd_device, %struct.skd_device* %29, i32 0, i32 8
  store i64 0, i64* %30, align 8
  %31 = load i32, i32* @SKD_DRVR_STATE_STARTING, align 4
  %32 = load %struct.skd_device*, %struct.skd_device** %2, align 8
  %33 = getelementptr inbounds %struct.skd_device, %struct.skd_device* %32, i32 0, i32 7
  store i32 %31, i32* %33, align 8
  %34 = load i8*, i8** @SKD_STARTING_TIMO, align 8
  %35 = load %struct.skd_device*, %struct.skd_device** %2, align 8
  %36 = getelementptr inbounds %struct.skd_device, %struct.skd_device* %35, i32 0, i32 6
  store i8* %34, i8** %36, align 8
  %37 = load %struct.skd_device*, %struct.skd_device** %2, align 8
  %38 = call i32 @skd_enable_interrupts(%struct.skd_device* %37)
  %39 = load %struct.skd_device*, %struct.skd_device** %2, align 8
  %40 = getelementptr inbounds %struct.skd_device, %struct.skd_device* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  switch i32 %41, label %137 [
    i32 130, label %42
    i32 132, label %48
    i32 134, label %60
    i32 135, label %72
    i32 131, label %84
    i32 129, label %84
    i32 136, label %87
    i32 128, label %99
    i32 133, label %105
    i32 255, label %121
  ]

42:                                               ; preds = %1
  %43 = load %struct.skd_device*, %struct.skd_device** %2, align 8
  %44 = getelementptr inbounds %struct.skd_device, %struct.skd_device* %43, i32 0, i32 3
  %45 = load %struct.TYPE_2__*, %struct.TYPE_2__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 0
  %47 = call i32 (i32*, i8*, ...) @dev_err(i32* %46, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0))
  br label %146

48:                                               ; preds = %1
  %49 = load %struct.skd_device*, %struct.skd_device** %2, align 8
  %50 = getelementptr inbounds %struct.skd_device, %struct.skd_device* %49, i32 0, i32 3
  %51 = load %struct.TYPE_2__*, %struct.TYPE_2__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 0
  %53 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %52, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0))
  %54 = load i32, i32* @SKD_DRVR_STATE_WAIT_BOOT, align 4
  %55 = load %struct.skd_device*, %struct.skd_device** %2, align 8
  %56 = getelementptr inbounds %struct.skd_device, %struct.skd_device* %55, i32 0, i32 7
  store i32 %54, i32* %56, align 8
  %57 = load i8*, i8** @SKD_WAIT_BOOT_TIMO, align 8
  %58 = load %struct.skd_device*, %struct.skd_device** %2, align 8
  %59 = getelementptr inbounds %struct.skd_device, %struct.skd_device* %58, i32 0, i32 6
  store i8* %57, i8** %59, align 8
  br label %146

60:                                               ; preds = %1
  %61 = load %struct.skd_device*, %struct.skd_device** %2, align 8
  %62 = getelementptr inbounds %struct.skd_device, %struct.skd_device* %61, i32 0, i32 3
  %63 = load %struct.TYPE_2__*, %struct.TYPE_2__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 0
  %65 = call i32 @dev_info(i32* %64, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0))
  %66 = load i32, i32* @SKD_DRVR_STATE_BUSY_SANITIZE, align 4
  %67 = load %struct.skd_device*, %struct.skd_device** %2, align 8
  %68 = getelementptr inbounds %struct.skd_device, %struct.skd_device* %67, i32 0, i32 7
  store i32 %66, i32* %68, align 8
  %69 = load i8*, i8** @SKD_STARTED_BUSY_TIMO, align 8
  %70 = load %struct.skd_device*, %struct.skd_device** %2, align 8
  %71 = getelementptr inbounds %struct.skd_device, %struct.skd_device* %70, i32 0, i32 6
  store i8* %69, i8** %71, align 8
  br label %146

72:                                               ; preds = %1
  %73 = load %struct.skd_device*, %struct.skd_device** %2, align 8
  %74 = getelementptr inbounds %struct.skd_device, %struct.skd_device* %73, i32 0, i32 3
  %75 = load %struct.TYPE_2__*, %struct.TYPE_2__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i32 0, i32 0
  %77 = call i32 @dev_info(i32* %76, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.4, i64 0, i64 0))
  %78 = load i32, i32* @SKD_DRVR_STATE_BUSY_ERASE, align 4
  %79 = load %struct.skd_device*, %struct.skd_device** %2, align 8
  %80 = getelementptr inbounds %struct.skd_device, %struct.skd_device* %79, i32 0, i32 7
  store i32 %78, i32* %80, align 8
  %81 = load i8*, i8** @SKD_STARTED_BUSY_TIMO, align 8
  %82 = load %struct.skd_device*, %struct.skd_device** %2, align 8
  %83 = getelementptr inbounds %struct.skd_device, %struct.skd_device* %82, i32 0, i32 6
  store i8* %81, i8** %83, align 8
  br label %146

84:                                               ; preds = %1, %1
  %85 = load %struct.skd_device*, %struct.skd_device** %2, align 8
  %86 = call i32 @skd_soft_reset(%struct.skd_device* %85)
  br label %146

87:                                               ; preds = %1
  %88 = load %struct.skd_device*, %struct.skd_device** %2, align 8
  %89 = getelementptr inbounds %struct.skd_device, %struct.skd_device* %88, i32 0, i32 3
  %90 = load %struct.TYPE_2__*, %struct.TYPE_2__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %90, i32 0, i32 0
  %92 = call i32 (i32*, i8*, ...) @dev_err(i32* %91, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i64 0, i64 0))
  %93 = load i32, i32* @SKD_DRVR_STATE_BUSY, align 4
  %94 = load %struct.skd_device*, %struct.skd_device** %2, align 8
  %95 = getelementptr inbounds %struct.skd_device, %struct.skd_device* %94, i32 0, i32 7
  store i32 %93, i32* %95, align 8
  %96 = load i8*, i8** @SKD_STARTED_BUSY_TIMO, align 8
  %97 = load %struct.skd_device*, %struct.skd_device** %2, align 8
  %98 = getelementptr inbounds %struct.skd_device, %struct.skd_device* %97, i32 0, i32 6
  store i8* %96, i8** %98, align 8
  br label %146

99:                                               ; preds = %1
  %100 = load %struct.skd_device*, %struct.skd_device** %2, align 8
  %101 = getelementptr inbounds %struct.skd_device, %struct.skd_device* %100, i32 0, i32 3
  %102 = load %struct.TYPE_2__*, %struct.TYPE_2__** %101, align 8
  %103 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %102, i32 0, i32 0
  %104 = call i32 (i32*, i8*, ...) @dev_err(i32* %103, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.6, i64 0, i64 0))
  br label %146

105:                                              ; preds = %1
  %106 = load %struct.skd_device*, %struct.skd_device** %2, align 8
  %107 = call i32 @skd_drive_fault(%struct.skd_device* %106)
  %108 = load %struct.skd_device*, %struct.skd_device** %2, align 8
  %109 = getelementptr inbounds %struct.skd_device, %struct.skd_device* %108, i32 0, i32 3
  %110 = load %struct.TYPE_2__*, %struct.TYPE_2__** %109, align 8
  %111 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %110, i32 0, i32 0
  %112 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %111, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.7, i64 0, i64 0))
  %113 = load %struct.skd_device*, %struct.skd_device** %2, align 8
  %114 = getelementptr inbounds %struct.skd_device, %struct.skd_device* %113, i32 0, i32 5
  %115 = call i32 @schedule_work(i32* %114)
  %116 = load %struct.skd_device*, %struct.skd_device** %2, align 8
  %117 = getelementptr inbounds %struct.skd_device, %struct.skd_device* %116, i32 0, i32 1
  store i32 -1, i32* %117, align 4
  %118 = load %struct.skd_device*, %struct.skd_device** %2, align 8
  %119 = getelementptr inbounds %struct.skd_device, %struct.skd_device* %118, i32 0, i32 4
  %120 = call i32 @wake_up_interruptible(i32* %119)
  br label %146

121:                                              ; preds = %1
  %122 = load %struct.skd_device*, %struct.skd_device** %2, align 8
  %123 = call i32 @skd_drive_disappeared(%struct.skd_device* %122)
  %124 = load %struct.skd_device*, %struct.skd_device** %2, align 8
  %125 = getelementptr inbounds %struct.skd_device, %struct.skd_device* %124, i32 0, i32 3
  %126 = load %struct.TYPE_2__*, %struct.TYPE_2__** %125, align 8
  %127 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %126, i32 0, i32 0
  %128 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %127, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.8, i64 0, i64 0))
  %129 = load %struct.skd_device*, %struct.skd_device** %2, align 8
  %130 = getelementptr inbounds %struct.skd_device, %struct.skd_device* %129, i32 0, i32 5
  %131 = call i32 @schedule_work(i32* %130)
  %132 = load %struct.skd_device*, %struct.skd_device** %2, align 8
  %133 = getelementptr inbounds %struct.skd_device, %struct.skd_device* %132, i32 0, i32 1
  store i32 -1, i32* %133, align 4
  %134 = load %struct.skd_device*, %struct.skd_device** %2, align 8
  %135 = getelementptr inbounds %struct.skd_device, %struct.skd_device* %134, i32 0, i32 4
  %136 = call i32 @wake_up_interruptible(i32* %135)
  br label %146

137:                                              ; preds = %1
  %138 = load %struct.skd_device*, %struct.skd_device** %2, align 8
  %139 = getelementptr inbounds %struct.skd_device, %struct.skd_device* %138, i32 0, i32 3
  %140 = load %struct.TYPE_2__*, %struct.TYPE_2__** %139, align 8
  %141 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %140, i32 0, i32 0
  %142 = load %struct.skd_device*, %struct.skd_device** %2, align 8
  %143 = getelementptr inbounds %struct.skd_device, %struct.skd_device* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 8
  %145 = call i32 (i32*, i8*, ...) @dev_err(i32* %141, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.9, i64 0, i64 0), i32 %144)
  br label %146

146:                                              ; preds = %137, %121, %105, %99, %87, %84, %72, %60, %48, %42
  %147 = load %struct.skd_device*, %struct.skd_device** %2, align 8
  %148 = load i32, i32* @FIT_CONTROL, align 4
  %149 = call i32 @SKD_READL(%struct.skd_device* %147, i32 %148)
  store i32 %149, i32* %5, align 4
  %150 = load %struct.skd_device*, %struct.skd_device** %2, align 8
  %151 = getelementptr inbounds %struct.skd_device, %struct.skd_device* %150, i32 0, i32 3
  %152 = load %struct.TYPE_2__*, %struct.TYPE_2__** %151, align 8
  %153 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %152, i32 0, i32 0
  %154 = load i32, i32* %5, align 4
  %155 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %153, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.10, i64 0, i64 0), i32 %154)
  %156 = load %struct.skd_device*, %struct.skd_device** %2, align 8
  %157 = load i32, i32* @FIT_INT_STATUS_HOST, align 4
  %158 = call i32 @SKD_READL(%struct.skd_device* %156, i32 %157)
  store i32 %158, i32* %5, align 4
  %159 = load %struct.skd_device*, %struct.skd_device** %2, align 8
  %160 = getelementptr inbounds %struct.skd_device, %struct.skd_device* %159, i32 0, i32 3
  %161 = load %struct.TYPE_2__*, %struct.TYPE_2__** %160, align 8
  %162 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %161, i32 0, i32 0
  %163 = load i32, i32* %5, align 4
  %164 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %162, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.11, i64 0, i64 0), i32 %163)
  %165 = load %struct.skd_device*, %struct.skd_device** %2, align 8
  %166 = load i32, i32* @FIT_INT_MASK_HOST, align 4
  %167 = call i32 @SKD_READL(%struct.skd_device* %165, i32 %166)
  store i32 %167, i32* %5, align 4
  %168 = load %struct.skd_device*, %struct.skd_device** %2, align 8
  %169 = getelementptr inbounds %struct.skd_device, %struct.skd_device* %168, i32 0, i32 3
  %170 = load %struct.TYPE_2__*, %struct.TYPE_2__** %169, align 8
  %171 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %170, i32 0, i32 0
  %172 = load i32, i32* %5, align 4
  %173 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %171, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.12, i64 0, i64 0), i32 %172)
  %174 = load %struct.skd_device*, %struct.skd_device** %2, align 8
  %175 = load i32, i32* @FIT_MSG_FROM_DEVICE, align 4
  %176 = call i32 @SKD_READL(%struct.skd_device* %174, i32 %175)
  store i32 %176, i32* %5, align 4
  %177 = load %struct.skd_device*, %struct.skd_device** %2, align 8
  %178 = getelementptr inbounds %struct.skd_device, %struct.skd_device* %177, i32 0, i32 3
  %179 = load %struct.TYPE_2__*, %struct.TYPE_2__** %178, align 8
  %180 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %179, i32 0, i32 0
  %181 = load i32, i32* %5, align 4
  %182 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %180, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.13, i64 0, i64 0), i32 %181)
  %183 = load %struct.skd_device*, %struct.skd_device** %2, align 8
  %184 = load i32, i32* @FIT_HW_VERSION, align 4
  %185 = call i32 @SKD_READL(%struct.skd_device* %183, i32 %184)
  store i32 %185, i32* %5, align 4
  %186 = load %struct.skd_device*, %struct.skd_device** %2, align 8
  %187 = getelementptr inbounds %struct.skd_device, %struct.skd_device* %186, i32 0, i32 3
  %188 = load %struct.TYPE_2__*, %struct.TYPE_2__** %187, align 8
  %189 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %188, i32 0, i32 0
  %190 = load i32, i32* %5, align 4
  %191 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %189, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.14, i64 0, i64 0), i32 %190)
  %192 = load %struct.skd_device*, %struct.skd_device** %2, align 8
  %193 = getelementptr inbounds %struct.skd_device, %struct.skd_device* %192, i32 0, i32 2
  %194 = load i64, i64* %3, align 8
  %195 = call i32 @spin_unlock_irqrestore(i32* %193, i64 %194)
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @SKD_WRITEL(%struct.skd_device*, i32, i32) #1

declare dso_local i32 @SKD_READL(%struct.skd_device*, i32) #1

declare dso_local i32 @dev_dbg(i32*, i8*, ...) #1

declare dso_local i32 @skd_enable_interrupts(%struct.skd_device*) #1

declare dso_local i32 @dev_err(i32*, i8*, ...) #1

declare dso_local i32 @dev_info(i32*, i8*) #1

declare dso_local i32 @skd_soft_reset(%struct.skd_device*) #1

declare dso_local i32 @skd_drive_fault(%struct.skd_device*) #1

declare dso_local i32 @schedule_work(i32*) #1

declare dso_local i32 @wake_up_interruptible(i32*) #1

declare dso_local i32 @skd_drive_disappeared(%struct.skd_device*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
