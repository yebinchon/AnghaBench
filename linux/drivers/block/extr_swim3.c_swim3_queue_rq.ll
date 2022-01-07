; ModuleID = '/home/carl/AnghaBench/linux/drivers/block/extr_swim3.c_swim3_queue_rq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/block/extr_swim3.c_swim3_queue_rq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.blk_mq_hw_ctx = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.floppy_state* }
%struct.floppy_state = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, %struct.TYPE_4__*, %struct.request* }
%struct.TYPE_4__ = type { i64 }
%struct.request = type { i32 }
%struct.blk_mq_queue_data = type { %struct.request* }

@swim3_lock = common dso_local global i32 0, align 4
@idle = common dso_local global i64 0, align 8
@BLK_STS_DEV_RESOURCE = common dso_local global i32 0, align 4
@MB_FD = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.1 = private unnamed_addr constant [34 x i8] c"  media bay absent, dropping req\0A\00", align 1
@BLK_STS_IOERR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [16 x i8] c"  disk ejected\0A\00", align 1
@WRITE = common dso_local global i64 0, align 8
@WRITE_PROT = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [38 x i8] c"  try to write, disk write protected\0A\00", align 1
@do_transfer = common dso_local global i64 0, align 8
@BLK_STS_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.blk_mq_hw_ctx*, %struct.blk_mq_queue_data*)* @swim3_queue_rq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @swim3_queue_rq(%struct.blk_mq_hw_ctx* %0, %struct.blk_mq_queue_data* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.blk_mq_hw_ctx*, align 8
  %5 = alloca %struct.blk_mq_queue_data*, align 8
  %6 = alloca %struct.floppy_state*, align 8
  %7 = alloca %struct.request*, align 8
  %8 = alloca i64, align 8
  store %struct.blk_mq_hw_ctx* %0, %struct.blk_mq_hw_ctx** %4, align 8
  store %struct.blk_mq_queue_data* %1, %struct.blk_mq_queue_data** %5, align 8
  %9 = load %struct.blk_mq_hw_ctx*, %struct.blk_mq_hw_ctx** %4, align 8
  %10 = getelementptr inbounds %struct.blk_mq_hw_ctx, %struct.blk_mq_hw_ctx* %9, i32 0, i32 0
  %11 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  %13 = load %struct.floppy_state*, %struct.floppy_state** %12, align 8
  store %struct.floppy_state* %13, %struct.floppy_state** %6, align 8
  %14 = load %struct.blk_mq_queue_data*, %struct.blk_mq_queue_data** %5, align 8
  %15 = getelementptr inbounds %struct.blk_mq_queue_data, %struct.blk_mq_queue_data* %14, i32 0, i32 0
  %16 = load %struct.request*, %struct.request** %15, align 8
  store %struct.request* %16, %struct.request** %7, align 8
  %17 = call i32 @spin_lock_irq(i32* @swim3_lock)
  %18 = load %struct.floppy_state*, %struct.floppy_state** %6, align 8
  %19 = getelementptr inbounds %struct.floppy_state, %struct.floppy_state* %18, i32 0, i32 10
  %20 = load %struct.request*, %struct.request** %19, align 8
  %21 = icmp ne %struct.request* %20, null
  br i1 %21, label %28, label %22

22:                                               ; preds = %2
  %23 = load %struct.floppy_state*, %struct.floppy_state** %6, align 8
  %24 = getelementptr inbounds %struct.floppy_state, %struct.floppy_state* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @idle, align 8
  %27 = icmp ne i64 %25, %26
  br i1 %27, label %28, label %31

28:                                               ; preds = %22, %2
  %29 = call i32 @spin_unlock_irq(i32* @swim3_lock)
  %30 = load i32, i32* @BLK_STS_DEV_RESOURCE, align 4
  store i32 %30, i32* %3, align 4
  br label %134

31:                                               ; preds = %22
  %32 = load %struct.request*, %struct.request** %7, align 8
  %33 = call i32 @blk_mq_start_request(%struct.request* %32)
  %34 = load %struct.request*, %struct.request** %7, align 8
  %35 = load %struct.floppy_state*, %struct.floppy_state** %6, align 8
  %36 = getelementptr inbounds %struct.floppy_state, %struct.floppy_state* %35, i32 0, i32 10
  store %struct.request* %34, %struct.request** %36, align 8
  %37 = load %struct.floppy_state*, %struct.floppy_state** %6, align 8
  %38 = getelementptr inbounds %struct.floppy_state, %struct.floppy_state* %37, i32 0, i32 9
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %57

43:                                               ; preds = %31
  %44 = load %struct.floppy_state*, %struct.floppy_state** %6, align 8
  %45 = getelementptr inbounds %struct.floppy_state, %struct.floppy_state* %44, i32 0, i32 9
  %46 = load %struct.TYPE_4__*, %struct.TYPE_4__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = call i64 @check_media_bay(i64 %48)
  %50 = load i64, i64* @MB_FD, align 8
  %51 = icmp ne i64 %49, %50
  br i1 %51, label %52, label %57

52:                                               ; preds = %43
  %53 = call i32 @swim3_dbg(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0))
  %54 = load %struct.floppy_state*, %struct.floppy_state** %6, align 8
  %55 = load i32, i32* @BLK_STS_IOERR, align 4
  %56 = call i32 @swim3_end_request(%struct.floppy_state* %54, i32 %55, i32 0)
  br label %131

57:                                               ; preds = %43, %31
  %58 = load %struct.floppy_state*, %struct.floppy_state** %6, align 8
  %59 = getelementptr inbounds %struct.floppy_state, %struct.floppy_state* %58, i32 0, i32 8
  %60 = load i64, i64* %59, align 8
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %67

62:                                               ; preds = %57
  %63 = call i32 @swim3_dbg(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0))
  %64 = load %struct.floppy_state*, %struct.floppy_state** %6, align 8
  %65 = load i32, i32* @BLK_STS_IOERR, align 4
  %66 = call i32 @swim3_end_request(%struct.floppy_state* %64, i32 %65, i32 0)
  br label %131

67:                                               ; preds = %57
  %68 = load %struct.request*, %struct.request** %7, align 8
  %69 = call i64 @rq_data_dir(%struct.request* %68)
  %70 = load i64, i64* @WRITE, align 8
  %71 = icmp eq i64 %69, %70
  br i1 %71, label %72, label %94

72:                                               ; preds = %67
  %73 = load %struct.floppy_state*, %struct.floppy_state** %6, align 8
  %74 = getelementptr inbounds %struct.floppy_state, %struct.floppy_state* %73, i32 0, i32 1
  %75 = load i64, i64* %74, align 8
  %76 = icmp slt i64 %75, 0
  br i1 %76, label %77, label %83

77:                                               ; preds = %72
  %78 = load %struct.floppy_state*, %struct.floppy_state** %6, align 8
  %79 = load i32, i32* @WRITE_PROT, align 4
  %80 = call i64 @swim3_readbit(%struct.floppy_state* %78, i32 %79)
  %81 = load %struct.floppy_state*, %struct.floppy_state** %6, align 8
  %82 = getelementptr inbounds %struct.floppy_state, %struct.floppy_state* %81, i32 0, i32 1
  store i64 %80, i64* %82, align 8
  br label %83

83:                                               ; preds = %77, %72
  %84 = load %struct.floppy_state*, %struct.floppy_state** %6, align 8
  %85 = getelementptr inbounds %struct.floppy_state, %struct.floppy_state* %84, i32 0, i32 1
  %86 = load i64, i64* %85, align 8
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %93

88:                                               ; preds = %83
  %89 = call i32 @swim3_dbg(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.3, i64 0, i64 0))
  %90 = load %struct.floppy_state*, %struct.floppy_state** %6, align 8
  %91 = load i32, i32* @BLK_STS_IOERR, align 4
  %92 = call i32 @swim3_end_request(%struct.floppy_state* %90, i32 %91, i32 0)
  br label %131

93:                                               ; preds = %83
  br label %94

94:                                               ; preds = %93, %67
  %95 = load %struct.request*, %struct.request** %7, align 8
  %96 = call i64 @blk_rq_pos(%struct.request* %95)
  %97 = load %struct.floppy_state*, %struct.floppy_state** %6, align 8
  %98 = getelementptr inbounds %struct.floppy_state, %struct.floppy_state* %97, i32 0, i32 3
  %99 = load i64, i64* %98, align 8
  %100 = sdiv i64 %96, %99
  %101 = load %struct.floppy_state*, %struct.floppy_state** %6, align 8
  %102 = getelementptr inbounds %struct.floppy_state, %struct.floppy_state* %101, i32 0, i32 2
  store i64 %100, i64* %102, align 8
  %103 = load %struct.request*, %struct.request** %7, align 8
  %104 = call i64 @blk_rq_pos(%struct.request* %103)
  %105 = load %struct.floppy_state*, %struct.floppy_state** %6, align 8
  %106 = getelementptr inbounds %struct.floppy_state, %struct.floppy_state* %105, i32 0, i32 3
  %107 = load i64, i64* %106, align 8
  %108 = srem i64 %104, %107
  store i64 %108, i64* %8, align 8
  %109 = load i64, i64* %8, align 8
  %110 = load %struct.floppy_state*, %struct.floppy_state** %6, align 8
  %111 = getelementptr inbounds %struct.floppy_state, %struct.floppy_state* %110, i32 0, i32 5
  %112 = load i64, i64* %111, align 8
  %113 = udiv i64 %109, %112
  %114 = load %struct.floppy_state*, %struct.floppy_state** %6, align 8
  %115 = getelementptr inbounds %struct.floppy_state, %struct.floppy_state* %114, i32 0, i32 4
  store i64 %113, i64* %115, align 8
  %116 = load i64, i64* %8, align 8
  %117 = load %struct.floppy_state*, %struct.floppy_state** %6, align 8
  %118 = getelementptr inbounds %struct.floppy_state, %struct.floppy_state* %117, i32 0, i32 5
  %119 = load i64, i64* %118, align 8
  %120 = urem i64 %116, %119
  %121 = add i64 %120, 1
  %122 = load %struct.floppy_state*, %struct.floppy_state** %6, align 8
  %123 = getelementptr inbounds %struct.floppy_state, %struct.floppy_state* %122, i32 0, i32 6
  store i64 %121, i64* %123, align 8
  %124 = load i64, i64* @do_transfer, align 8
  %125 = load %struct.floppy_state*, %struct.floppy_state** %6, align 8
  %126 = getelementptr inbounds %struct.floppy_state, %struct.floppy_state* %125, i32 0, i32 0
  store i64 %124, i64* %126, align 8
  %127 = load %struct.floppy_state*, %struct.floppy_state** %6, align 8
  %128 = getelementptr inbounds %struct.floppy_state, %struct.floppy_state* %127, i32 0, i32 7
  store i64 0, i64* %128, align 8
  %129 = load %struct.floppy_state*, %struct.floppy_state** %6, align 8
  %130 = call i32 @act(%struct.floppy_state* %129)
  br label %131

131:                                              ; preds = %94, %88, %62, %52
  %132 = call i32 @spin_unlock_irq(i32* @swim3_lock)
  %133 = load i32, i32* @BLK_STS_OK, align 4
  store i32 %133, i32* %3, align 4
  br label %134

134:                                              ; preds = %131, %28
  %135 = load i32, i32* %3, align 4
  ret i32 %135
}

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i32 @blk_mq_start_request(%struct.request*) #1

declare dso_local i64 @check_media_bay(i64) #1

declare dso_local i32 @swim3_dbg(i8*, i8*) #1

declare dso_local i32 @swim3_end_request(%struct.floppy_state*, i32, i32) #1

declare dso_local i64 @rq_data_dir(%struct.request*) #1

declare dso_local i64 @swim3_readbit(%struct.floppy_state*, i32) #1

declare dso_local i64 @blk_rq_pos(%struct.request*) #1

declare dso_local i32 @act(%struct.floppy_state*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
