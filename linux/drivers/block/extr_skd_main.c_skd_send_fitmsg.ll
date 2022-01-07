; ModuleID = '/home/carl/AnghaBench/linux/drivers/block/extr_skd_main.c_skd_send_fitmsg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/block/extr_skd_main.c_skd_send_fitmsg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.skd_device = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.skd_fitmsg_context = type { i32, i32, i64 }

@.str = private unnamed_addr constant [27 x i8] c"dma address %pad, busy=%d\0A\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"msg_buf %p\0A\00", align 1
@FIT_QCMD_QID_NORMAL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [15 x i8] c"msg[%2d] %8ph\0A\00", align 1
@FIT_QCMD_MSGSIZE_512 = common dso_local global i32 0, align 4
@FIT_QCMD_MSGSIZE_256 = common dso_local global i32 0, align 4
@FIT_QCMD_MSGSIZE_128 = common dso_local global i32 0, align 4
@FIT_QCMD_MSGSIZE_64 = common dso_local global i32 0, align 4
@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@FIT_Q_COMMAND = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.skd_device*, %struct.skd_fitmsg_context*)* @skd_send_fitmsg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @skd_send_fitmsg(%struct.skd_device* %0, %struct.skd_fitmsg_context* %1) #0 {
  %3 = alloca %struct.skd_device*, align 8
  %4 = alloca %struct.skd_fitmsg_context*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  store %struct.skd_device* %0, %struct.skd_device** %3, align 8
  store %struct.skd_fitmsg_context* %1, %struct.skd_fitmsg_context** %4, align 8
  %8 = load %struct.skd_device*, %struct.skd_device** %3, align 8
  %9 = getelementptr inbounds %struct.skd_device, %struct.skd_device* %8, i32 0, i32 1
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load %struct.skd_fitmsg_context*, %struct.skd_fitmsg_context** %4, align 8
  %13 = getelementptr inbounds %struct.skd_fitmsg_context, %struct.skd_fitmsg_context* %12, i32 0, i32 1
  %14 = ptrtoint i32* %13 to i32
  %15 = load %struct.skd_device*, %struct.skd_device** %3, align 8
  %16 = call i32 @skd_in_flight(%struct.skd_device* %15)
  %17 = call i32 (i32*, i8*, i32, ...) @dev_dbg(i32* %11, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %14, i32 %16)
  %18 = load %struct.skd_device*, %struct.skd_device** %3, align 8
  %19 = getelementptr inbounds %struct.skd_device, %struct.skd_device* %18, i32 0, i32 1
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load %struct.skd_fitmsg_context*, %struct.skd_fitmsg_context** %4, align 8
  %23 = getelementptr inbounds %struct.skd_fitmsg_context, %struct.skd_fitmsg_context* %22, i32 0, i32 2
  %24 = load i64, i64* %23, align 8
  %25 = trunc i64 %24 to i32
  %26 = call i32 (i32*, i8*, i32, ...) @dev_dbg(i32* %21, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i32 %25)
  %27 = load %struct.skd_fitmsg_context*, %struct.skd_fitmsg_context** %4, align 8
  %28 = getelementptr inbounds %struct.skd_fitmsg_context, %struct.skd_fitmsg_context* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  store i32 %29, i32* %5, align 4
  %30 = load i32, i32* @FIT_QCMD_QID_NORMAL, align 4
  %31 = load i32, i32* %5, align 4
  %32 = or i32 %31, %30
  store i32 %32, i32* %5, align 4
  %33 = load %struct.skd_device*, %struct.skd_device** %3, align 8
  %34 = getelementptr inbounds %struct.skd_device, %struct.skd_device* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = icmp sgt i32 %35, 1
  %37 = zext i1 %36 to i32
  %38 = call i64 @unlikely(i32 %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %70

40:                                               ; preds = %2
  %41 = load %struct.skd_fitmsg_context*, %struct.skd_fitmsg_context** %4, align 8
  %42 = getelementptr inbounds %struct.skd_fitmsg_context, %struct.skd_fitmsg_context* %41, i32 0, i32 2
  %43 = load i64, i64* %42, align 8
  %44 = inttoptr i64 %43 to i32*
  store i32* %44, i32** %6, align 8
  store i32 0, i32* %7, align 4
  br label %45

45:                                               ; preds = %66, %40
  %46 = load i32, i32* %7, align 4
  %47 = load %struct.skd_fitmsg_context*, %struct.skd_fitmsg_context** %4, align 8
  %48 = getelementptr inbounds %struct.skd_fitmsg_context, %struct.skd_fitmsg_context* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = icmp slt i32 %46, %49
  br i1 %50, label %51, label %69

51:                                               ; preds = %45
  %52 = load %struct.skd_device*, %struct.skd_device** %3, align 8
  %53 = getelementptr inbounds %struct.skd_device, %struct.skd_device* %52, i32 0, i32 1
  %54 = load %struct.TYPE_2__*, %struct.TYPE_2__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 0
  %56 = load i32, i32* %7, align 4
  %57 = load i32*, i32** %6, align 8
  %58 = load i32, i32* %7, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i32, i32* %57, i64 %59
  %61 = call i32 (i32*, i8*, i32, ...) @dev_dbg(i32* %55, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i32 %56, i32* %60)
  %62 = load i32, i32* %7, align 4
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %64, label %65

64:                                               ; preds = %51
  store i32 56, i32* %7, align 4
  br label %65

65:                                               ; preds = %64, %51
  br label %66

66:                                               ; preds = %65
  %67 = load i32, i32* %7, align 4
  %68 = add nsw i32 %67, 8
  store i32 %68, i32* %7, align 4
  br label %45

69:                                               ; preds = %45
  br label %70

70:                                               ; preds = %69, %2
  %71 = load %struct.skd_fitmsg_context*, %struct.skd_fitmsg_context** %4, align 8
  %72 = getelementptr inbounds %struct.skd_fitmsg_context, %struct.skd_fitmsg_context* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = icmp sgt i32 %73, 256
  br i1 %74, label %75, label %79

75:                                               ; preds = %70
  %76 = load i32, i32* @FIT_QCMD_MSGSIZE_512, align 4
  %77 = load i32, i32* %5, align 4
  %78 = or i32 %77, %76
  store i32 %78, i32* %5, align 4
  br label %103

79:                                               ; preds = %70
  %80 = load %struct.skd_fitmsg_context*, %struct.skd_fitmsg_context** %4, align 8
  %81 = getelementptr inbounds %struct.skd_fitmsg_context, %struct.skd_fitmsg_context* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = icmp sgt i32 %82, 128
  br i1 %83, label %84, label %88

84:                                               ; preds = %79
  %85 = load i32, i32* @FIT_QCMD_MSGSIZE_256, align 4
  %86 = load i32, i32* %5, align 4
  %87 = or i32 %86, %85
  store i32 %87, i32* %5, align 4
  br label %102

88:                                               ; preds = %79
  %89 = load %struct.skd_fitmsg_context*, %struct.skd_fitmsg_context** %4, align 8
  %90 = getelementptr inbounds %struct.skd_fitmsg_context, %struct.skd_fitmsg_context* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = icmp sgt i32 %91, 64
  br i1 %92, label %93, label %97

93:                                               ; preds = %88
  %94 = load i32, i32* @FIT_QCMD_MSGSIZE_128, align 4
  %95 = load i32, i32* %5, align 4
  %96 = or i32 %95, %94
  store i32 %96, i32* %5, align 4
  br label %101

97:                                               ; preds = %88
  %98 = load i32, i32* @FIT_QCMD_MSGSIZE_64, align 4
  %99 = load i32, i32* %5, align 4
  %100 = or i32 %99, %98
  store i32 %100, i32* %5, align 4
  br label %101

101:                                              ; preds = %97, %93
  br label %102

102:                                              ; preds = %101, %84
  br label %103

103:                                              ; preds = %102, %75
  %104 = load %struct.skd_device*, %struct.skd_device** %3, align 8
  %105 = getelementptr inbounds %struct.skd_device, %struct.skd_device* %104, i32 0, i32 1
  %106 = load %struct.TYPE_2__*, %struct.TYPE_2__** %105, align 8
  %107 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %106, i32 0, i32 0
  %108 = load %struct.skd_fitmsg_context*, %struct.skd_fitmsg_context** %4, align 8
  %109 = getelementptr inbounds %struct.skd_fitmsg_context, %struct.skd_fitmsg_context* %108, i32 0, i32 1
  %110 = load i32, i32* %109, align 4
  %111 = load %struct.skd_fitmsg_context*, %struct.skd_fitmsg_context** %4, align 8
  %112 = getelementptr inbounds %struct.skd_fitmsg_context, %struct.skd_fitmsg_context* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 8
  %114 = load i32, i32* @DMA_TO_DEVICE, align 4
  %115 = call i32 @dma_sync_single_for_device(i32* %107, i32 %110, i32 %113, i32 %114)
  %116 = call i32 (...) @smp_wmb()
  %117 = load %struct.skd_device*, %struct.skd_device** %3, align 8
  %118 = load i32, i32* %5, align 4
  %119 = load i32, i32* @FIT_Q_COMMAND, align 4
  %120 = call i32 @SKD_WRITEQ(%struct.skd_device* %117, i32 %118, i32 %119)
  ret void
}

declare dso_local i32 @dev_dbg(i32*, i8*, i32, ...) #1

declare dso_local i32 @skd_in_flight(%struct.skd_device*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @dma_sync_single_for_device(i32*, i32, i32, i32) #1

declare dso_local i32 @smp_wmb(...) #1

declare dso_local i32 @SKD_WRITEQ(%struct.skd_device*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
