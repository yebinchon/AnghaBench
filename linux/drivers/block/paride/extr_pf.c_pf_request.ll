; ModuleID = '/home/carl/AnghaBench/linux/drivers/block/paride/extr_pf.c_pf_request.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/block/paride/extr_pf.c_pf_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, %struct.TYPE_10__* }
%struct.TYPE_10__ = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32 }

@pf_busy = common dso_local global i32 0, align 4
@pf_req = common dso_local global %struct.TYPE_8__* null, align 8
@pf_current = common dso_local global %struct.TYPE_9__* null, align 8
@pf_block = common dso_local global i64 0, align 8
@pf_run = common dso_local global i32 0, align 4
@pf_count = common dso_local global i64 0, align 8
@BLK_STS_IOERR = common dso_local global i32 0, align 4
@pf_cmd = common dso_local global i64 0, align 8
@pf_buf = common dso_local global i32 0, align 4
@pf_retries = common dso_local global i64 0, align 8
@READ = common dso_local global i64 0, align 8
@do_pf_read = common dso_local global i32 0, align 4
@WRITE = common dso_local global i64 0, align 8
@do_pf_write = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @pf_request to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pf_request() #0 {
  %1 = load i32, i32* @pf_busy, align 4
  %2 = icmp ne i32 %1, 0
  br i1 %2, label %3, label %4

3:                                                ; preds = %0
  br label %65

4:                                                ; preds = %0
  br label %5

5:                                                ; preds = %61, %32, %4
  %6 = load %struct.TYPE_8__*, %struct.TYPE_8__** @pf_req, align 8
  %7 = icmp ne %struct.TYPE_8__* %6, null
  br i1 %7, label %12, label %8

8:                                                ; preds = %5
  %9 = call i32 (...) @set_next_request()
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %12, label %11

11:                                               ; preds = %8
  br label %65

12:                                               ; preds = %8, %5
  %13 = load %struct.TYPE_8__*, %struct.TYPE_8__** @pf_req, align 8
  %14 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %13, i32 0, i32 1
  %15 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %15, i32 0, i32 0
  %17 = load %struct.TYPE_9__*, %struct.TYPE_9__** %16, align 8
  store %struct.TYPE_9__* %17, %struct.TYPE_9__** @pf_current, align 8
  %18 = load %struct.TYPE_8__*, %struct.TYPE_8__** @pf_req, align 8
  %19 = call i64 @blk_rq_pos(%struct.TYPE_8__* %18)
  store i64 %19, i64* @pf_block, align 8
  %20 = load %struct.TYPE_8__*, %struct.TYPE_8__** @pf_req, align 8
  %21 = call i32 @blk_rq_sectors(%struct.TYPE_8__* %20)
  store i32 %21, i32* @pf_run, align 4
  %22 = load %struct.TYPE_8__*, %struct.TYPE_8__** @pf_req, align 8
  %23 = call i64 @blk_rq_cur_sectors(%struct.TYPE_8__* %22)
  store i64 %23, i64* @pf_count, align 8
  %24 = load i64, i64* @pf_block, align 8
  %25 = load i64, i64* @pf_count, align 8
  %26 = add nsw i64 %24, %25
  %27 = load %struct.TYPE_8__*, %struct.TYPE_8__** @pf_req, align 8
  %28 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %27, i32 0, i32 1
  %29 = load %struct.TYPE_10__*, %struct.TYPE_10__** %28, align 8
  %30 = call i64 @get_capacity(%struct.TYPE_10__* %29)
  %31 = icmp sgt i64 %26, %30
  br i1 %31, label %32, label %35

32:                                               ; preds = %12
  %33 = load i32, i32* @BLK_STS_IOERR, align 4
  %34 = call i32 @pf_end_request(i32 %33)
  br label %5

35:                                               ; preds = %12
  %36 = load %struct.TYPE_8__*, %struct.TYPE_8__** @pf_req, align 8
  %37 = call i64 @rq_data_dir(%struct.TYPE_8__* %36)
  store i64 %37, i64* @pf_cmd, align 8
  %38 = load %struct.TYPE_8__*, %struct.TYPE_8__** @pf_req, align 8
  %39 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = call i32 @bio_data(i32 %40)
  store i32 %41, i32* @pf_buf, align 4
  store i64 0, i64* @pf_retries, align 8
  store i32 1, i32* @pf_busy, align 4
  %42 = load i64, i64* @pf_cmd, align 8
  %43 = load i64, i64* @READ, align 8
  %44 = icmp eq i64 %42, %43
  br i1 %44, label %45, label %51

45:                                               ; preds = %35
  %46 = load %struct.TYPE_9__*, %struct.TYPE_9__** @pf_current, align 8
  %47 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* @do_pf_read, align 4
  %50 = call i32 @pi_do_claimed(i32 %48, i32 %49)
  br label %65

51:                                               ; preds = %35
  %52 = load i64, i64* @pf_cmd, align 8
  %53 = load i64, i64* @WRITE, align 8
  %54 = icmp eq i64 %52, %53
  br i1 %54, label %55, label %61

55:                                               ; preds = %51
  %56 = load %struct.TYPE_9__*, %struct.TYPE_9__** @pf_current, align 8
  %57 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* @do_pf_write, align 4
  %60 = call i32 @pi_do_claimed(i32 %58, i32 %59)
  br label %64

61:                                               ; preds = %51
  store i32 0, i32* @pf_busy, align 4
  %62 = load i32, i32* @BLK_STS_IOERR, align 4
  %63 = call i32 @pf_end_request(i32 %62)
  br label %5

64:                                               ; preds = %55
  br label %65

65:                                               ; preds = %3, %11, %64, %45
  ret void
}

declare dso_local i32 @set_next_request(...) #1

declare dso_local i64 @blk_rq_pos(%struct.TYPE_8__*) #1

declare dso_local i32 @blk_rq_sectors(%struct.TYPE_8__*) #1

declare dso_local i64 @blk_rq_cur_sectors(%struct.TYPE_8__*) #1

declare dso_local i64 @get_capacity(%struct.TYPE_10__*) #1

declare dso_local i32 @pf_end_request(i32) #1

declare dso_local i64 @rq_data_dir(%struct.TYPE_8__*) #1

declare dso_local i32 @bio_data(i32) #1

declare dso_local i32 @pi_do_claimed(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
