; ModuleID = '/home/carl/AnghaBench/linux/drivers/block/extr_skd_main.c_skd_send_special_fitmsg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/block/extr_skd_main.c_skd_send_special_fitmsg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.skd_device = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.skd_special_context = type { %struct.TYPE_4__, i32, i32, i64 }
%struct.TYPE_4__ = type { i32, %struct.fit_sg_descriptor*, i32, i32 }
%struct.fit_sg_descriptor = type { i32, i32, i32, i32 }

@SKD_N_SPECIAL_FITMSG_BYTES = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c" spcl[%2d] %8ph\0A\00", align 1
@.str.1 = private unnamed_addr constant [46 x i8] c"skspcl=%p id=%04x sksg_list=%p sksg_dma=%pad\0A\00", align 1
@.str.2 = private unnamed_addr constant [53 x i8] c"  sg[%d] count=%u ctrl=0x%x addr=0x%llx next=0x%llx\0A\00", align 1
@FIT_QCMD_QID_NORMAL = common dso_local global i32 0, align 4
@FIT_QCMD_MSGSIZE_128 = common dso_local global i32 0, align 4
@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@DMA_BIDIRECTIONAL = common dso_local global i32 0, align 4
@FIT_Q_COMMAND = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.skd_device*, %struct.skd_special_context*)* @skd_send_special_fitmsg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @skd_send_special_fitmsg(%struct.skd_device* %0, %struct.skd_special_context* %1) #0 {
  %3 = alloca %struct.skd_device*, align 8
  %4 = alloca %struct.skd_special_context*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.fit_sg_descriptor*, align 8
  store %struct.skd_device* %0, %struct.skd_device** %3, align 8
  store %struct.skd_special_context* %1, %struct.skd_special_context** %4, align 8
  %9 = load %struct.skd_special_context*, %struct.skd_special_context** %4, align 8
  %10 = getelementptr inbounds %struct.skd_special_context, %struct.skd_special_context* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = icmp ne i32 %12, 1
  %14 = zext i1 %13 to i32
  %15 = call i32 @WARN_ON_ONCE(i32 %14)
  %16 = load %struct.skd_device*, %struct.skd_device** %3, align 8
  %17 = getelementptr inbounds %struct.skd_device, %struct.skd_device* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = icmp sgt i32 %18, 1
  %20 = zext i1 %19 to i32
  %21 = call i64 @unlikely(i32 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %105

23:                                               ; preds = %2
  %24 = load %struct.skd_special_context*, %struct.skd_special_context** %4, align 8
  %25 = getelementptr inbounds %struct.skd_special_context, %struct.skd_special_context* %24, i32 0, i32 3
  %26 = load i64, i64* %25, align 8
  %27 = inttoptr i64 %26 to i32*
  store i32* %27, i32** %6, align 8
  store i32 0, i32* %7, align 4
  br label %28

28:                                               ; preds = %47, %23
  %29 = load i32, i32* %7, align 4
  %30 = load i32, i32* @SKD_N_SPECIAL_FITMSG_BYTES, align 4
  %31 = icmp slt i32 %29, %30
  br i1 %31, label %32, label %50

32:                                               ; preds = %28
  %33 = load %struct.skd_device*, %struct.skd_device** %3, align 8
  %34 = getelementptr inbounds %struct.skd_device, %struct.skd_device* %33, i32 0, i32 1
  %35 = load %struct.TYPE_3__*, %struct.TYPE_3__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 0
  %37 = load i32, i32* %7, align 4
  %38 = load i32*, i32** %6, align 8
  %39 = load i32, i32* %7, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i32, i32* %38, i64 %40
  %42 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %36, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32 %37, i32* %41)
  %43 = load i32, i32* %7, align 4
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %32
  store i32 56, i32* %7, align 4
  br label %46

46:                                               ; preds = %45, %32
  br label %47

47:                                               ; preds = %46
  %48 = load i32, i32* %7, align 4
  %49 = add nsw i32 %48, 8
  store i32 %49, i32* %7, align 4
  br label %28

50:                                               ; preds = %28
  %51 = load %struct.skd_device*, %struct.skd_device** %3, align 8
  %52 = getelementptr inbounds %struct.skd_device, %struct.skd_device* %51, i32 0, i32 1
  %53 = load %struct.TYPE_3__*, %struct.TYPE_3__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 0
  %55 = load %struct.skd_special_context*, %struct.skd_special_context** %4, align 8
  %56 = load %struct.skd_special_context*, %struct.skd_special_context** %4, align 8
  %57 = getelementptr inbounds %struct.skd_special_context, %struct.skd_special_context* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 3
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.skd_special_context*, %struct.skd_special_context** %4, align 8
  %61 = getelementptr inbounds %struct.skd_special_context, %struct.skd_special_context* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 1
  %63 = load %struct.fit_sg_descriptor*, %struct.fit_sg_descriptor** %62, align 8
  %64 = load %struct.skd_special_context*, %struct.skd_special_context** %4, align 8
  %65 = getelementptr inbounds %struct.skd_special_context, %struct.skd_special_context* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 2
  %67 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %54, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i64 0, i64 0), %struct.skd_special_context* %55, i32 %59, %struct.fit_sg_descriptor* %63, i32* %66)
  store i32 0, i32* %7, align 4
  br label %68

68:                                               ; preds = %101, %50
  %69 = load i32, i32* %7, align 4
  %70 = load %struct.skd_special_context*, %struct.skd_special_context** %4, align 8
  %71 = getelementptr inbounds %struct.skd_special_context, %struct.skd_special_context* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = icmp slt i32 %69, %73
  br i1 %74, label %75, label %104

75:                                               ; preds = %68
  %76 = load %struct.skd_special_context*, %struct.skd_special_context** %4, align 8
  %77 = getelementptr inbounds %struct.skd_special_context, %struct.skd_special_context* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %77, i32 0, i32 1
  %79 = load %struct.fit_sg_descriptor*, %struct.fit_sg_descriptor** %78, align 8
  %80 = load i32, i32* %7, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds %struct.fit_sg_descriptor, %struct.fit_sg_descriptor* %79, i64 %81
  store %struct.fit_sg_descriptor* %82, %struct.fit_sg_descriptor** %8, align 8
  %83 = load %struct.skd_device*, %struct.skd_device** %3, align 8
  %84 = getelementptr inbounds %struct.skd_device, %struct.skd_device* %83, i32 0, i32 1
  %85 = load %struct.TYPE_3__*, %struct.TYPE_3__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %85, i32 0, i32 0
  %87 = load i32, i32* %7, align 4
  %88 = load %struct.fit_sg_descriptor*, %struct.fit_sg_descriptor** %8, align 8
  %89 = getelementptr inbounds %struct.fit_sg_descriptor, %struct.fit_sg_descriptor* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = load %struct.fit_sg_descriptor*, %struct.fit_sg_descriptor** %8, align 8
  %92 = getelementptr inbounds %struct.fit_sg_descriptor, %struct.fit_sg_descriptor* %91, i32 0, i32 3
  %93 = load i32, i32* %92, align 4
  %94 = load %struct.fit_sg_descriptor*, %struct.fit_sg_descriptor** %8, align 8
  %95 = getelementptr inbounds %struct.fit_sg_descriptor, %struct.fit_sg_descriptor* %94, i32 0, i32 2
  %96 = load i32, i32* %95, align 4
  %97 = load %struct.fit_sg_descriptor*, %struct.fit_sg_descriptor** %8, align 8
  %98 = getelementptr inbounds %struct.fit_sg_descriptor, %struct.fit_sg_descriptor* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 4
  %100 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %86, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.2, i64 0, i64 0), i32 %87, i32 %90, i32 %93, i32 %96, i32 %99)
  br label %101

101:                                              ; preds = %75
  %102 = load i32, i32* %7, align 4
  %103 = add nsw i32 %102, 1
  store i32 %103, i32* %7, align 4
  br label %68

104:                                              ; preds = %68
  br label %105

105:                                              ; preds = %104, %2
  %106 = load %struct.skd_special_context*, %struct.skd_special_context** %4, align 8
  %107 = getelementptr inbounds %struct.skd_special_context, %struct.skd_special_context* %106, i32 0, i32 2
  %108 = load i32, i32* %107, align 4
  store i32 %108, i32* %5, align 4
  %109 = load i32, i32* @FIT_QCMD_QID_NORMAL, align 4
  %110 = load i32, i32* @FIT_QCMD_MSGSIZE_128, align 4
  %111 = add nsw i32 %109, %110
  %112 = load i32, i32* %5, align 4
  %113 = or i32 %112, %111
  store i32 %113, i32* %5, align 4
  %114 = load %struct.skd_device*, %struct.skd_device** %3, align 8
  %115 = getelementptr inbounds %struct.skd_device, %struct.skd_device* %114, i32 0, i32 1
  %116 = load %struct.TYPE_3__*, %struct.TYPE_3__** %115, align 8
  %117 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %116, i32 0, i32 0
  %118 = load %struct.skd_special_context*, %struct.skd_special_context** %4, align 8
  %119 = getelementptr inbounds %struct.skd_special_context, %struct.skd_special_context* %118, i32 0, i32 2
  %120 = load i32, i32* %119, align 4
  %121 = load i32, i32* @SKD_N_SPECIAL_FITMSG_BYTES, align 4
  %122 = load i32, i32* @DMA_TO_DEVICE, align 4
  %123 = call i32 @dma_sync_single_for_device(i32* %117, i32 %120, i32 %121, i32 %122)
  %124 = load %struct.skd_device*, %struct.skd_device** %3, align 8
  %125 = getelementptr inbounds %struct.skd_device, %struct.skd_device* %124, i32 0, i32 1
  %126 = load %struct.TYPE_3__*, %struct.TYPE_3__** %125, align 8
  %127 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %126, i32 0, i32 0
  %128 = load %struct.skd_special_context*, %struct.skd_special_context** %4, align 8
  %129 = getelementptr inbounds %struct.skd_special_context, %struct.skd_special_context* %128, i32 0, i32 0
  %130 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %129, i32 0, i32 2
  %131 = load i32, i32* %130, align 8
  %132 = load i32, i32* @DMA_TO_DEVICE, align 4
  %133 = call i32 @dma_sync_single_for_device(i32* %127, i32 %131, i32 16, i32 %132)
  %134 = load %struct.skd_device*, %struct.skd_device** %3, align 8
  %135 = getelementptr inbounds %struct.skd_device, %struct.skd_device* %134, i32 0, i32 1
  %136 = load %struct.TYPE_3__*, %struct.TYPE_3__** %135, align 8
  %137 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %136, i32 0, i32 0
  %138 = load %struct.skd_special_context*, %struct.skd_special_context** %4, align 8
  %139 = getelementptr inbounds %struct.skd_special_context, %struct.skd_special_context* %138, i32 0, i32 1
  %140 = load i32, i32* %139, align 8
  %141 = load %struct.skd_special_context*, %struct.skd_special_context** %4, align 8
  %142 = getelementptr inbounds %struct.skd_special_context, %struct.skd_special_context* %141, i32 0, i32 0
  %143 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %142, i32 0, i32 1
  %144 = load %struct.fit_sg_descriptor*, %struct.fit_sg_descriptor** %143, align 8
  %145 = getelementptr inbounds %struct.fit_sg_descriptor, %struct.fit_sg_descriptor* %144, i64 0
  %146 = getelementptr inbounds %struct.fit_sg_descriptor, %struct.fit_sg_descriptor* %145, i32 0, i32 0
  %147 = load i32, i32* %146, align 4
  %148 = load i32, i32* @DMA_BIDIRECTIONAL, align 4
  %149 = call i32 @dma_sync_single_for_device(i32* %137, i32 %140, i32 %147, i32 %148)
  %150 = call i32 (...) @smp_wmb()
  %151 = load %struct.skd_device*, %struct.skd_device** %3, align 8
  %152 = load i32, i32* %5, align 4
  %153 = load i32, i32* @FIT_Q_COMMAND, align 4
  %154 = call i32 @SKD_WRITEQ(%struct.skd_device* %151, i32 %152, i32 %153)
  ret void
}

declare dso_local i32 @WARN_ON_ONCE(i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @dev_dbg(i32*, i8*, ...) #1

declare dso_local i32 @dma_sync_single_for_device(i32*, i32, i32, i32) #1

declare dso_local i32 @smp_wmb(...) #1

declare dso_local i32 @SKD_WRITEQ(%struct.skd_device*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
