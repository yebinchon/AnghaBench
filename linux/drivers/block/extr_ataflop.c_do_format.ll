; ModuleID = '/home/carl/AnghaBench/linux/drivers/block/extr_ataflop.c_do_format.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/block/extr_ataflop.c_do_format.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.request_queue* }
%struct.request_queue = type { i32 }
%struct.TYPE_8__ = type { i64, i32 }
%struct.TYPE_9__ = type { i32, i32 }
%struct.atari_format_descr = type { i32, i32, i32 }

@unit = common dso_local global %struct.TYPE_7__* null, align 8
@floppy_irq = common dso_local global i32 0, align 4
@IRQ_MFP_FDC = common dso_local global i32 0, align 4
@NUM_DISK_MINORS = common dso_local global i32 0, align 4
@minor2disktype = common dso_local global %struct.TYPE_8__* null, align 8
@DriveType = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@atari_disk_type = common dso_local global %struct.TYPE_9__* null, align 8
@UDT = common dso_local global %struct.TYPE_9__* null, align 8
@TrackBuffer = common dso_local global i8* null, align 8
@BufferDrive = common dso_local global i32 0, align 4
@motor_off_timer = common dso_local global i32 0, align 4
@BUFFER_SIZE = common dso_local global i32 0, align 4
@IsFormatting = common dso_local global i32 0, align 4
@FormatError = common dso_local global i64 0, align 8
@ReqTrack = common dso_local global i32 0, align 4
@ReqSide = common dso_local global i32 0, align 4
@format_wait = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, %struct.atari_format_descr*)* @do_format to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @do_format(i32 %0, i32 %1, %struct.atari_format_descr* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.atari_format_descr*, align 8
  %7 = alloca %struct.request_queue*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store %struct.atari_format_descr* %2, %struct.atari_format_descr** %6, align 8
  %13 = load %struct.TYPE_7__*, %struct.TYPE_7__** @unit, align 8
  %14 = load i32, i32* %4, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %13, i64 %15
  %17 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i32 0, i32 0
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 0
  %20 = load %struct.request_queue*, %struct.request_queue** %19, align 8
  store %struct.request_queue* %20, %struct.request_queue** %7, align 8
  %21 = load %struct.request_queue*, %struct.request_queue** %7, align 8
  %22 = call i32 @blk_mq_freeze_queue(%struct.request_queue* %21)
  %23 = load %struct.request_queue*, %struct.request_queue** %7, align 8
  %24 = call i32 @blk_mq_quiesce_queue(%struct.request_queue* %23)
  %25 = load i64, i64* %11, align 8
  %26 = call i32 @local_irq_save(i64 %25)
  %27 = load i32, i32* @floppy_irq, align 4
  %28 = call i32 @stdma_lock(i32 %27, i32* null)
  %29 = load i32, i32* @IRQ_MFP_FDC, align 4
  %30 = call i32 @atari_turnon_irq(i32 %29)
  %31 = load i64, i64* %11, align 8
  %32 = call i32 @local_irq_restore(i64 %31)
  %33 = load i32, i32* %5, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %63

35:                                               ; preds = %3
  %36 = load i32, i32* %5, align 4
  %37 = add nsw i32 %36, -1
  store i32 %37, i32* %5, align 4
  %38 = load i32, i32* @NUM_DISK_MINORS, align 4
  %39 = icmp sge i32 %37, %38
  br i1 %39, label %49, label %40

40:                                               ; preds = %35
  %41 = load %struct.TYPE_8__*, %struct.TYPE_8__** @minor2disktype, align 8
  %42 = load i32, i32* %5, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %41, i64 %43
  %45 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* @DriveType, align 8
  %48 = icmp sgt i64 %46, %47
  br i1 %48, label %49, label %52

49:                                               ; preds = %40, %35
  %50 = load i32, i32* @EINVAL, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %12, align 4
  br label %175

52:                                               ; preds = %40
  %53 = load %struct.TYPE_8__*, %struct.TYPE_8__** @minor2disktype, align 8
  %54 = load i32, i32* %5, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %53, i64 %55
  %57 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 8
  store i32 %58, i32* %5, align 4
  %59 = load %struct.TYPE_9__*, %struct.TYPE_9__** @atari_disk_type, align 8
  %60 = load i32, i32* %5, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %59, i64 %61
  store %struct.TYPE_9__* %62, %struct.TYPE_9__** @UDT, align 8
  br label %63

63:                                               ; preds = %52, %3
  %64 = load %struct.TYPE_9__*, %struct.TYPE_9__** @UDT, align 8
  %65 = icmp ne %struct.TYPE_9__* %64, null
  br i1 %65, label %66, label %84

66:                                               ; preds = %63
  %67 = load %struct.atari_format_descr*, %struct.atari_format_descr** %6, align 8
  %68 = getelementptr inbounds %struct.atari_format_descr, %struct.atari_format_descr* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.TYPE_9__*, %struct.TYPE_9__** @UDT, align 8
  %71 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = load %struct.TYPE_9__*, %struct.TYPE_9__** @UDT, align 8
  %74 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = sdiv i32 %72, %75
  %77 = sdiv i32 %76, 2
  %78 = icmp sge i32 %69, %77
  br i1 %78, label %84, label %79

79:                                               ; preds = %66
  %80 = load %struct.atari_format_descr*, %struct.atari_format_descr** %6, align 8
  %81 = getelementptr inbounds %struct.atari_format_descr, %struct.atari_format_descr* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = icmp sge i32 %82, 2
  br i1 %83, label %84, label %87

84:                                               ; preds = %79, %66, %63
  %85 = load i32, i32* @EINVAL, align 4
  %86 = sub nsw i32 0, %85
  store i32 %86, i32* %12, align 4
  br label %175

87:                                               ; preds = %79
  %88 = load %struct.TYPE_9__*, %struct.TYPE_9__** @UDT, align 8
  %89 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 4
  store i32 %90, i32* %10, align 4
  %91 = load i8*, i8** @TrackBuffer, align 8
  store i8* %91, i8** %8, align 8
  store i32 -1, i32* @BufferDrive, align 4
  %92 = call i32 @del_timer(i32* @motor_off_timer)
  %93 = load i32, i32* %10, align 4
  %94 = sdiv i32 %93, 9
  %95 = mul nsw i32 60, %94
  %96 = call i32 @FILL(i32 %95, i32 78)
  store i32 0, i32* %9, align 4
  br label %97

97:                                               ; preds = %144, %87
  %98 = load i32, i32* %9, align 4
  %99 = load i32, i32* %10, align 4
  %100 = icmp slt i32 %98, %99
  br i1 %100, label %101, label %147

101:                                              ; preds = %97
  %102 = call i32 @FILL(i32 12, i32 0)
  %103 = call i32 @FILL(i32 3, i32 245)
  %104 = load i8*, i8** %8, align 8
  %105 = getelementptr inbounds i8, i8* %104, i32 1
  store i8* %105, i8** %8, align 8
  store i8 -2, i8* %104, align 1
  %106 = load %struct.atari_format_descr*, %struct.atari_format_descr** %6, align 8
  %107 = getelementptr inbounds %struct.atari_format_descr, %struct.atari_format_descr* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 4
  %109 = trunc i32 %108 to i8
  %110 = load i8*, i8** %8, align 8
  %111 = getelementptr inbounds i8, i8* %110, i32 1
  store i8* %111, i8** %8, align 8
  store i8 %109, i8* %110, align 1
  %112 = load %struct.atari_format_descr*, %struct.atari_format_descr** %6, align 8
  %113 = getelementptr inbounds %struct.atari_format_descr, %struct.atari_format_descr* %112, i32 0, i32 1
  %114 = load i32, i32* %113, align 4
  %115 = trunc i32 %114 to i8
  %116 = load i8*, i8** %8, align 8
  %117 = getelementptr inbounds i8, i8* %116, i32 1
  store i8* %117, i8** %8, align 8
  store i8 %115, i8* %116, align 1
  %118 = load i32, i32* %10, align 4
  %119 = load i32, i32* %9, align 4
  %120 = add nsw i32 %118, %119
  %121 = load %struct.atari_format_descr*, %struct.atari_format_descr** %6, align 8
  %122 = getelementptr inbounds %struct.atari_format_descr, %struct.atari_format_descr* %121, i32 0, i32 2
  %123 = load i32, i32* %122, align 4
  %124 = sub nsw i32 %120, %123
  %125 = load i32, i32* %10, align 4
  %126 = srem i32 %124, %125
  %127 = add nsw i32 %126, 1
  %128 = trunc i32 %127 to i8
  %129 = load i8*, i8** %8, align 8
  %130 = getelementptr inbounds i8, i8* %129, i32 1
  store i8* %130, i8** %8, align 8
  store i8 %128, i8* %129, align 1
  %131 = load i8*, i8** %8, align 8
  %132 = getelementptr inbounds i8, i8* %131, i32 1
  store i8* %132, i8** %8, align 8
  store i8 2, i8* %131, align 1
  %133 = load i8*, i8** %8, align 8
  %134 = getelementptr inbounds i8, i8* %133, i32 1
  store i8* %134, i8** %8, align 8
  store i8 -9, i8* %133, align 1
  %135 = call i32 @FILL(i32 22, i32 78)
  %136 = call i32 @FILL(i32 12, i32 0)
  %137 = call i32 @FILL(i32 3, i32 245)
  %138 = load i8*, i8** %8, align 8
  %139 = getelementptr inbounds i8, i8* %138, i32 1
  store i8* %139, i8** %8, align 8
  store i8 -5, i8* %138, align 1
  %140 = call i32 @FILL(i32 512, i32 229)
  %141 = load i8*, i8** %8, align 8
  %142 = getelementptr inbounds i8, i8* %141, i32 1
  store i8* %142, i8** %8, align 8
  store i8 -9, i8* %141, align 1
  %143 = call i32 @FILL(i32 40, i32 78)
  br label %144

144:                                              ; preds = %101
  %145 = load i32, i32* %9, align 4
  %146 = add nsw i32 %145, 1
  store i32 %146, i32* %9, align 4
  br label %97

147:                                              ; preds = %97
  %148 = load i8*, i8** @TrackBuffer, align 8
  %149 = load i32, i32* @BUFFER_SIZE, align 4
  %150 = sext i32 %149 to i64
  %151 = getelementptr inbounds i8, i8* %148, i64 %150
  %152 = load i8*, i8** %8, align 8
  %153 = ptrtoint i8* %151 to i64
  %154 = ptrtoint i8* %152 to i64
  %155 = sub i64 %153, %154
  %156 = trunc i64 %155 to i32
  %157 = call i32 @FILL(i32 %156, i32 78)
  store i32 1, i32* @IsFormatting, align 4
  store i64 0, i64* @FormatError, align 8
  %158 = load %struct.atari_format_descr*, %struct.atari_format_descr** %6, align 8
  %159 = getelementptr inbounds %struct.atari_format_descr, %struct.atari_format_descr* %158, i32 0, i32 0
  %160 = load i32, i32* %159, align 4
  store i32 %160, i32* @ReqTrack, align 4
  %161 = load %struct.atari_format_descr*, %struct.atari_format_descr** %6, align 8
  %162 = getelementptr inbounds %struct.atari_format_descr, %struct.atari_format_descr* %161, i32 0, i32 1
  %163 = load i32, i32* %162, align 4
  store i32 %163, i32* @ReqSide, align 4
  %164 = load i32, i32* %4, align 4
  %165 = call i32 @do_fd_action(i32 %164)
  %166 = call i32 @wait_for_completion(i32* @format_wait)
  %167 = load i64, i64* @FormatError, align 8
  %168 = icmp ne i64 %167, 0
  br i1 %168, label %169, label %172

169:                                              ; preds = %147
  %170 = load i32, i32* @EIO, align 4
  %171 = sub nsw i32 0, %170
  br label %173

172:                                              ; preds = %147
  br label %173

173:                                              ; preds = %172, %169
  %174 = phi i32 [ %171, %169 ], [ 0, %172 ]
  store i32 %174, i32* %12, align 4
  br label %175

175:                                              ; preds = %173, %84, %49
  %176 = load %struct.request_queue*, %struct.request_queue** %7, align 8
  %177 = call i32 @blk_mq_unquiesce_queue(%struct.request_queue* %176)
  %178 = load %struct.request_queue*, %struct.request_queue** %7, align 8
  %179 = call i32 @blk_mq_unfreeze_queue(%struct.request_queue* %178)
  %180 = load i32, i32* %12, align 4
  ret i32 %180
}

declare dso_local i32 @blk_mq_freeze_queue(%struct.request_queue*) #1

declare dso_local i32 @blk_mq_quiesce_queue(%struct.request_queue*) #1

declare dso_local i32 @local_irq_save(i64) #1

declare dso_local i32 @stdma_lock(i32, i32*) #1

declare dso_local i32 @atari_turnon_irq(i32) #1

declare dso_local i32 @local_irq_restore(i64) #1

declare dso_local i32 @del_timer(i32*) #1

declare dso_local i32 @FILL(i32, i32) #1

declare dso_local i32 @do_fd_action(i32) #1

declare dso_local i32 @wait_for_completion(i32*) #1

declare dso_local i32 @blk_mq_unquiesce_queue(%struct.request_queue*) #1

declare dso_local i32 @blk_mq_unfreeze_queue(%struct.request_queue*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
