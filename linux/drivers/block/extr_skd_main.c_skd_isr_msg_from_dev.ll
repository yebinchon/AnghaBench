; ModuleID = '/home/carl/AnghaBench/linux/drivers/block/extr_skd_main.c_skd_isr_msg_from_dev.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/block/extr_skd_main.c_skd_isr_msg_from_dev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.skd_device = type { i8*, i32, i32, i8*, i32, i32, %struct.TYPE_2__*, i32, i32 }
%struct.TYPE_2__ = type { i32 }

@FIT_MSG_FROM_DEVICE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"mfd=0x%x last_mtd=0x%x\0A\00", align 1
@FIT_PROTOCOL_VERSION_1 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [19 x i8] c"protocol mismatch\0A\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"  got=%d support=%d\0A\00", align 1
@.str.3 = private unnamed_addr constant [25 x i8] c"  please upgrade driver\0A\00", align 1
@SKD_DRVR_STATE_PROTOCOL_MISMATCH = common dso_local global i32 0, align 4
@FIT_MSG_TO_DEVICE = common dso_local global i32 0, align 4
@SKD_N_COMPLETION_ENTRY = common dso_local global i8* null, align 8
@FIT_MSG_TO_DEVICE_ARG = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [35 x i8] c"Time sync driver=0x%x device=0x%x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.skd_device*)* @skd_isr_msg_from_dev to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @skd_isr_msg_from_dev(%struct.skd_device* %0) #0 {
  %2 = alloca %struct.skd_device*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  store %struct.skd_device* %0, %struct.skd_device** %2, align 8
  %6 = load %struct.skd_device*, %struct.skd_device** %2, align 8
  %7 = load i32, i32* @FIT_MSG_FROM_DEVICE, align 4
  %8 = call i8* @SKD_READL(%struct.skd_device* %6, i32 %7)
  store i8* %8, i8** %3, align 8
  %9 = load %struct.skd_device*, %struct.skd_device** %2, align 8
  %10 = getelementptr inbounds %struct.skd_device, %struct.skd_device* %9, i32 0, i32 6
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i8*, i8** %3, align 8
  %14 = load %struct.skd_device*, %struct.skd_device** %2, align 8
  %15 = getelementptr inbounds %struct.skd_device, %struct.skd_device* %14, i32 0, i32 0
  %16 = load i8*, i8** %15, align 8
  %17 = call i32 @dev_dbg(i32* %12, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i8* %13, i8* %16)
  %18 = load i8*, i8** %3, align 8
  %19 = call i32 @FIT_MXD_TYPE(i8* %18)
  %20 = load %struct.skd_device*, %struct.skd_device** %2, align 8
  %21 = getelementptr inbounds %struct.skd_device, %struct.skd_device* %20, i32 0, i32 0
  %22 = load i8*, i8** %21, align 8
  %23 = call i32 @FIT_MXD_TYPE(i8* %22)
  %24 = icmp ne i32 %19, %23
  br i1 %24, label %25, label %26

25:                                               ; preds = %1
  br label %190

26:                                               ; preds = %1
  %27 = load i8*, i8** %3, align 8
  %28 = call i32 @FIT_MXD_TYPE(i8* %27)
  switch i32 %28, label %189 [
    i32 131, label %29
    i32 130, label %73
    i32 128, label %87
    i32 129, label %102
    i32 134, label %116
    i32 132, label %138
    i32 133, label %159
    i32 135, label %186
  ]

29:                                               ; preds = %26
  %30 = load i8*, i8** %3, align 8
  %31 = call i32 @FIT_PROTOCOL_MAJOR_VER(i8* %30)
  %32 = load %struct.skd_device*, %struct.skd_device** %2, align 8
  %33 = getelementptr inbounds %struct.skd_device, %struct.skd_device* %32, i32 0, i32 1
  store i32 %31, i32* %33, align 8
  %34 = load %struct.skd_device*, %struct.skd_device** %2, align 8
  %35 = getelementptr inbounds %struct.skd_device, %struct.skd_device* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 8
  %37 = load i32, i32* @FIT_PROTOCOL_VERSION_1, align 4
  %38 = icmp ne i32 %36, %37
  br i1 %38, label %39, label %64

39:                                               ; preds = %29
  %40 = load %struct.skd_device*, %struct.skd_device** %2, align 8
  %41 = getelementptr inbounds %struct.skd_device, %struct.skd_device* %40, i32 0, i32 6
  %42 = load %struct.TYPE_2__*, %struct.TYPE_2__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  %44 = call i32 (i32*, i8*, ...) @dev_err(i32* %43, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0))
  %45 = load %struct.skd_device*, %struct.skd_device** %2, align 8
  %46 = getelementptr inbounds %struct.skd_device, %struct.skd_device* %45, i32 0, i32 6
  %47 = load %struct.TYPE_2__*, %struct.TYPE_2__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 0
  %49 = load %struct.skd_device*, %struct.skd_device** %2, align 8
  %50 = getelementptr inbounds %struct.skd_device, %struct.skd_device* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 8
  %52 = load i32, i32* @FIT_PROTOCOL_VERSION_1, align 4
  %53 = call i32 (i32*, i8*, ...) @dev_err(i32* %48, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), i32 %51, i32 %52)
  %54 = load %struct.skd_device*, %struct.skd_device** %2, align 8
  %55 = getelementptr inbounds %struct.skd_device, %struct.skd_device* %54, i32 0, i32 6
  %56 = load %struct.TYPE_2__*, %struct.TYPE_2__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 0
  %58 = call i32 (i32*, i8*, ...) @dev_err(i32* %57, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0))
  %59 = load i32, i32* @SKD_DRVR_STATE_PROTOCOL_MISMATCH, align 4
  %60 = load %struct.skd_device*, %struct.skd_device** %2, align 8
  %61 = getelementptr inbounds %struct.skd_device, %struct.skd_device* %60, i32 0, i32 8
  store i32 %59, i32* %61, align 4
  %62 = load %struct.skd_device*, %struct.skd_device** %2, align 8
  %63 = call i32 @skd_soft_reset(%struct.skd_device* %62)
  br label %190

64:                                               ; preds = %29
  %65 = call i8* @FIT_MXD_CONS(i32 130, i32 0, i8* null)
  store i8* %65, i8** %4, align 8
  %66 = load %struct.skd_device*, %struct.skd_device** %2, align 8
  %67 = load i8*, i8** %4, align 8
  %68 = load i32, i32* @FIT_MSG_TO_DEVICE, align 4
  %69 = call i32 @SKD_WRITEL(%struct.skd_device* %66, i8* %67, i32 %68)
  %70 = load i8*, i8** %4, align 8
  %71 = load %struct.skd_device*, %struct.skd_device** %2, align 8
  %72 = getelementptr inbounds %struct.skd_device, %struct.skd_device* %71, i32 0, i32 0
  store i8* %70, i8** %72, align 8
  br label %190

73:                                               ; preds = %26
  %74 = load i8*, i8** %3, align 8
  %75 = call i32 @FIT_MXD_DATA(i8* %74)
  %76 = load %struct.skd_device*, %struct.skd_device** %2, align 8
  %77 = getelementptr inbounds %struct.skd_device, %struct.skd_device* %76, i32 0, i32 2
  store i32 %75, i32* %77, align 4
  %78 = load i8*, i8** @SKD_N_COMPLETION_ENTRY, align 8
  %79 = call i8* @FIT_MXD_CONS(i32 128, i32 0, i8* %78)
  store i8* %79, i8** %4, align 8
  %80 = load %struct.skd_device*, %struct.skd_device** %2, align 8
  %81 = load i8*, i8** %4, align 8
  %82 = load i32, i32* @FIT_MSG_TO_DEVICE, align 4
  %83 = call i32 @SKD_WRITEL(%struct.skd_device* %80, i8* %81, i32 %82)
  %84 = load i8*, i8** %4, align 8
  %85 = load %struct.skd_device*, %struct.skd_device** %2, align 8
  %86 = getelementptr inbounds %struct.skd_device, %struct.skd_device* %85, i32 0, i32 0
  store i8* %84, i8** %86, align 8
  br label %190

87:                                               ; preds = %26
  %88 = load %struct.skd_device*, %struct.skd_device** %2, align 8
  %89 = load %struct.skd_device*, %struct.skd_device** %2, align 8
  %90 = getelementptr inbounds %struct.skd_device, %struct.skd_device* %89, i32 0, i32 7
  %91 = load i32, i32* %90, align 8
  %92 = load i32, i32* @FIT_MSG_TO_DEVICE_ARG, align 4
  %93 = call i32 @SKD_WRITEQ(%struct.skd_device* %88, i32 %91, i32 %92)
  %94 = call i8* @FIT_MXD_CONS(i32 129, i32 0, i8* null)
  store i8* %94, i8** %4, align 8
  %95 = load %struct.skd_device*, %struct.skd_device** %2, align 8
  %96 = load i8*, i8** %4, align 8
  %97 = load i32, i32* @FIT_MSG_TO_DEVICE, align 4
  %98 = call i32 @SKD_WRITEL(%struct.skd_device* %95, i8* %96, i32 %97)
  %99 = load i8*, i8** %4, align 8
  %100 = load %struct.skd_device*, %struct.skd_device** %2, align 8
  %101 = getelementptr inbounds %struct.skd_device, %struct.skd_device* %100, i32 0, i32 0
  store i8* %99, i8** %101, align 8
  br label %190

102:                                              ; preds = %26
  %103 = load %struct.skd_device*, %struct.skd_device** %2, align 8
  %104 = call i32 @skd_reset_skcomp(%struct.skd_device* %103)
  %105 = load %struct.skd_device*, %struct.skd_device** %2, align 8
  %106 = getelementptr inbounds %struct.skd_device, %struct.skd_device* %105, i32 0, i32 3
  %107 = load i8*, i8** %106, align 8
  %108 = call i8* @FIT_MXD_CONS(i32 134, i32 0, i8* %107)
  store i8* %108, i8** %4, align 8
  %109 = load %struct.skd_device*, %struct.skd_device** %2, align 8
  %110 = load i8*, i8** %4, align 8
  %111 = load i32, i32* @FIT_MSG_TO_DEVICE, align 4
  %112 = call i32 @SKD_WRITEL(%struct.skd_device* %109, i8* %110, i32 %111)
  %113 = load i8*, i8** %4, align 8
  %114 = load %struct.skd_device*, %struct.skd_device** %2, align 8
  %115 = getelementptr inbounds %struct.skd_device, %struct.skd_device* %114, i32 0, i32 0
  store i8* %113, i8** %115, align 8
  br label %190

116:                                              ; preds = %26
  %117 = call i32 (...) @ktime_get_real_seconds()
  %118 = sext i32 %117 to i64
  %119 = inttoptr i64 %118 to i8*
  %120 = ptrtoint i8* %119 to i32
  %121 = load %struct.skd_device*, %struct.skd_device** %2, align 8
  %122 = getelementptr inbounds %struct.skd_device, %struct.skd_device* %121, i32 0, i32 4
  store i32 %120, i32* %122, align 8
  %123 = load %struct.skd_device*, %struct.skd_device** %2, align 8
  %124 = getelementptr inbounds %struct.skd_device, %struct.skd_device* %123, i32 0, i32 4
  %125 = load i32, i32* %124, align 8
  %126 = and i32 %125, 65535
  %127 = sext i32 %126 to i64
  %128 = inttoptr i64 %127 to i8*
  store i8* %128, i8** %5, align 8
  %129 = load i8*, i8** %5, align 8
  %130 = call i8* @FIT_MXD_CONS(i32 132, i32 0, i8* %129)
  store i8* %130, i8** %4, align 8
  %131 = load %struct.skd_device*, %struct.skd_device** %2, align 8
  %132 = load i8*, i8** %4, align 8
  %133 = load i32, i32* @FIT_MSG_TO_DEVICE, align 4
  %134 = call i32 @SKD_WRITEL(%struct.skd_device* %131, i8* %132, i32 %133)
  %135 = load i8*, i8** %4, align 8
  %136 = load %struct.skd_device*, %struct.skd_device** %2, align 8
  %137 = getelementptr inbounds %struct.skd_device, %struct.skd_device* %136, i32 0, i32 0
  store i8* %135, i8** %137, align 8
  br label %190

138:                                              ; preds = %26
  %139 = load i8*, i8** %3, align 8
  %140 = call i32 @FIT_MXD_DATA(i8* %139)
  %141 = load %struct.skd_device*, %struct.skd_device** %2, align 8
  %142 = getelementptr inbounds %struct.skd_device, %struct.skd_device* %141, i32 0, i32 5
  store i32 %140, i32* %142, align 4
  %143 = load %struct.skd_device*, %struct.skd_device** %2, align 8
  %144 = getelementptr inbounds %struct.skd_device, %struct.skd_device* %143, i32 0, i32 4
  %145 = load i32, i32* %144, align 8
  %146 = ashr i32 %145, 16
  %147 = and i32 %146, 65535
  %148 = sext i32 %147 to i64
  %149 = inttoptr i64 %148 to i8*
  store i8* %149, i8** %5, align 8
  %150 = load i8*, i8** %5, align 8
  %151 = call i8* @FIT_MXD_CONS(i32 133, i32 0, i8* %150)
  store i8* %151, i8** %4, align 8
  %152 = load %struct.skd_device*, %struct.skd_device** %2, align 8
  %153 = load i8*, i8** %4, align 8
  %154 = load i32, i32* @FIT_MSG_TO_DEVICE, align 4
  %155 = call i32 @SKD_WRITEL(%struct.skd_device* %152, i8* %153, i32 %154)
  %156 = load i8*, i8** %4, align 8
  %157 = load %struct.skd_device*, %struct.skd_device** %2, align 8
  %158 = getelementptr inbounds %struct.skd_device, %struct.skd_device* %157, i32 0, i32 0
  store i8* %156, i8** %158, align 8
  br label %190

159:                                              ; preds = %26
  %160 = load i8*, i8** %3, align 8
  %161 = call i32 @FIT_MXD_DATA(i8* %160)
  %162 = shl i32 %161, 16
  %163 = load %struct.skd_device*, %struct.skd_device** %2, align 8
  %164 = getelementptr inbounds %struct.skd_device, %struct.skd_device* %163, i32 0, i32 5
  %165 = load i32, i32* %164, align 4
  %166 = or i32 %165, %162
  store i32 %166, i32* %164, align 4
  %167 = call i8* @FIT_MXD_CONS(i32 135, i32 0, i8* null)
  store i8* %167, i8** %4, align 8
  %168 = load %struct.skd_device*, %struct.skd_device** %2, align 8
  %169 = load i8*, i8** %4, align 8
  %170 = load i32, i32* @FIT_MSG_TO_DEVICE, align 4
  %171 = call i32 @SKD_WRITEL(%struct.skd_device* %168, i8* %169, i32 %170)
  %172 = load i8*, i8** %4, align 8
  %173 = load %struct.skd_device*, %struct.skd_device** %2, align 8
  %174 = getelementptr inbounds %struct.skd_device, %struct.skd_device* %173, i32 0, i32 0
  store i8* %172, i8** %174, align 8
  %175 = load %struct.skd_device*, %struct.skd_device** %2, align 8
  %176 = getelementptr inbounds %struct.skd_device, %struct.skd_device* %175, i32 0, i32 6
  %177 = load %struct.TYPE_2__*, %struct.TYPE_2__** %176, align 8
  %178 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %177, i32 0, i32 0
  %179 = load %struct.skd_device*, %struct.skd_device** %2, align 8
  %180 = getelementptr inbounds %struct.skd_device, %struct.skd_device* %179, i32 0, i32 4
  %181 = load i32, i32* %180, align 8
  %182 = load %struct.skd_device*, %struct.skd_device** %2, align 8
  %183 = getelementptr inbounds %struct.skd_device, %struct.skd_device* %182, i32 0, i32 5
  %184 = load i32, i32* %183, align 4
  %185 = call i32 (i32*, i8*, ...) @dev_err(i32* %178, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.4, i64 0, i64 0), i32 %181, i32 %184)
  br label %190

186:                                              ; preds = %26
  %187 = load %struct.skd_device*, %struct.skd_device** %2, align 8
  %188 = getelementptr inbounds %struct.skd_device, %struct.skd_device* %187, i32 0, i32 0
  store i8* null, i8** %188, align 8
  br label %190

189:                                              ; preds = %26
  br label %190

190:                                              ; preds = %25, %189, %186, %159, %138, %116, %102, %87, %73, %64, %39
  ret void
}

declare dso_local i8* @SKD_READL(%struct.skd_device*, i32) #1

declare dso_local i32 @dev_dbg(i32*, i8*, i8*, i8*) #1

declare dso_local i32 @FIT_MXD_TYPE(i8*) #1

declare dso_local i32 @FIT_PROTOCOL_MAJOR_VER(i8*) #1

declare dso_local i32 @dev_err(i32*, i8*, ...) #1

declare dso_local i32 @skd_soft_reset(%struct.skd_device*) #1

declare dso_local i8* @FIT_MXD_CONS(i32, i32, i8*) #1

declare dso_local i32 @SKD_WRITEL(%struct.skd_device*, i8*, i32) #1

declare dso_local i32 @FIT_MXD_DATA(i8*) #1

declare dso_local i32 @SKD_WRITEQ(%struct.skd_device*, i32, i32) #1

declare dso_local i32 @skd_reset_skcomp(%struct.skd_device*) #1

declare dso_local i32 @ktime_get_real_seconds(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
